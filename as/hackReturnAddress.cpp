#include <bits/stdc++.h>

using namespace std;

namespace tcoro {

class CoroException {
    std::string info;
public:
    CoroException(const std::string &i) : info(i) {}
    CoroException(std::string &&i) : info(std::move(i)) {}
};

class CoroData;
bool Yield();
bool Resume(CoroData &);

class CoroData {
    friend bool Yield();
    friend bool Resume(CoroData &);
public:
    typedef std::function<void()> Func;

private:
//辅助数据
    typedef unsigned char status_t;
    status_t status;

    enum {
        S_ERROR = 0,
        S_READY = 1,
        S_RUN = 2,
        S_YIELD = 3,
        S_FINISH = 4,
    };

    //编译器优化会忽略基址指针寄存器ebp
    //所以使用一个辅助变量记录resume时的栈地址
    void *resumeStackAddress;

    //运行所需数据
    Func func;
    void* regs[14];

    void Init() {
        status = S_READY;
        memset(regs, 0, sizeof(regs));
        regs[0] = (void *)CoroData::run;
    }

    static void run(CoroData &cd) {
        if(cd.func == nullptr) {
            return ;
        }
        cd.func();
        cd.status = CoroData::S_FINISH;
        printf("0x%x\n", tcoro::CoroData::run);
    }

public:
    bool IsError()  const { return status == S_ERROR;  }
    bool IsReady()  const { return status == S_READY;  }
    bool IsRun()    const { return status == S_RUN;    }
    bool IsYield()  const { return status == S_YIELD;  }
    bool IsFinish() const { return status == S_FINISH; }

public:
    CoroData(const Func &f) : status(S_ERROR), resumeStackAddress(0x0), func(f) { Init(); }
    CoroData(Func &&f) : status(S_ERROR), resumeStackAddress(0x0), func(std::move(f)) { Init(); }

    //什么情况下需要拷贝呢？
    CoroData(const CoroData &) = delete;
    CoroData& operator=(const CoroData &) = delete;
};

class CoroStack {
    CoroStack(const CoroStack &) = delete;
    CoroStack& operator=(const CoroStack &) = delete;
    CoroStack() = delete;
    ~CoroStack() = delete;

    class threadStackData {
        enum {
            CAPACITY = 1024,
        };
        int top;
        CoroData *pcd[CAPACITY];

    public:

        threadStackData() : top(0) { memset(pcd, 0, sizeof(pcd)); }

        bool Push(CoroData &cd) {
            if(top >= CAPACITY) {
                return false;
            }
            return pcd[top++] = &cd, true;
        }
        void Pop() {
            if(top <= 1) {
                throw CoroException("Cann't pop an empty stack");
            }
            pcd[top--] = nullptr;
        }
        void Init() {
        }
    };
    static thread_local threadStackData tsd;
public:
    static bool Push(CoroData &cd) {
        return tsd.Push(cd);
    }
    static void Pop() {
        tsd.Pop();
    }
    static void Init() {
        tsd.Init();
    }
};

thread_local CoroStack::threadStackData CoroStack::tsd;

//挂起当前协程
//什么情况下会失败呢？
bool Yield(){
}

//重新开始指定协程
bool Resume(CoroData &data) {

    //如果此函数添加局部变量，需要调整此汇编代码
    //__asm__ __volatile__ (  "movq %%rsp, %0"
    //                      :"=m"(data.resumeStackAddress)
    //                      :);

    unsigned char justForGetAddress = 0;
    data.resumeStackAddress = &justForGetAddress;

    CoroStack::Init();

    if(data.IsError()) {
        return false;
    }

    if(data.IsFinish()) {
        return true;
    }

    if(data.IsRun()) {
        throw CoroException("try to resume a running coroutine");
        return false;
    }
    if(data.IsReady() == false && data.IsYield() == false) {
        throw CoroException("data's status is invalid");
        return false;
    }

    struct popKeeper {
        bool flag;
        popKeeper(CoroData &d) : flag(false) {
            flag = CoroStack::Push(d);
        }
        ~popKeeper() {
            if(flag) {
                CoroStack::Pop();
            }
        }
    }keeper(data);

    //添加 CoroStack
    //当前协程被挂起时应该从该次调用的返回地址开始执行
    if(keeper.flag == false) {
        return false;
    }

    CoroData::run(data);

    return true;
}

}

void func(const std::string &flag, unsigned int args, unsigned int stop) {
    for(unsigned int i  = 0; i < args; ++i) {
        cout << flag << "\t" << i << endl;
        if(i == stop) {
            cout << flag << "\tyield" << endl;
            tcoro::Yield();
            cout << flag << "\tresume" << endl;
        }
    }
}

static ptrdiff_t mainReturnAddress;

void hackCallFunc(int64_t a, int64_t b) {
    __asm__ __volatile__ (  "movq %%rbx, 0x8(%%rbp)\n\t"
                            :
                            :"b"(mainReturnAddress));
}

void hackReturnAddress() {
    ptrdiff_t rsp = 0;
    uint64_t returnAddress = (uint64_t)&hackCallFunc;
    __asm__ __volatile__ (  "movq %%rsp, %0"
                          :"=m"(rsp)
                          :);
    std::cout << "rsp:\t" << std::hex << rsp << std::dec << std::endl;
    ptrdiff_t prsp = (ptrdiff_t)&rsp;
    std::cout << "prsp:\t" << std::hex << prsp << std::dec << std::endl;
    std::cout << "rip:\t" << std::hex << *(uint64_t *)(prsp+48) << std::dec << std::endl;
    std::cout << "adr:\t" << std::hex << returnAddress << std::dec << std::endl;

    __asm__ __volatile__ (  "leaq 0x10, %%rsi\n\t"
                            "leaq 0x20, %%rdi\n\t"
                            "movq 0x8(%%rbp), %%rax\n\t"
                            "movq %%rax, %0\n\t"
                            "movq %%rbx, 0x8(%%rbp)\n\t"
                            :"=m"(mainReturnAddress)
                            :"b"(returnAddress));
}

int main() {
    uint64_t rsp = 0;
    __asm__ __volatile__ (  "movq %%rsp, %0"
                            :"=m"(rsp)
                            :);
    std::cout << "oldrsp:\t" << std::hex << rsp << std::dec << std::endl;
    hackReturnAddress();
    __asm__ __volatile__ (  "movq %%rsp, %0\n\t"
                            "subq $8, %%rsp\n\t" //两次 ret，一次 ret，使得rsp增加了8
                            :"=m"(rsp)
                            :);
    std::cout << "newrsp:\t" << std::hex << rsp << std::dec << std::endl;
    int a = 0;
    int b = 1;
    int c = 2;
    int d = 3;
    std::cout << std::hex;
    std::cout << a << std::endl;
    std::cout << b << std::endl;
    std::cout << c << std::endl;
    std::cout << d << std::endl;
    a = 0;
    b = 1;
    c = 2;
    d = 3;
    std::cout << a << std::endl;
    std::cout << b << std::endl;
    std::cout << c << std::endl;
    std::cout << d << std::endl;
    std::cout << std::dec;
    return 0;
}
