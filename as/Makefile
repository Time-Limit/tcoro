.PHONY: printBackTrace testPrintBackTrace hackReturnAddress

printBackTrace:
	g++ printBackTrace.cpp backtrace.cpp -o printBackTrace -O3 -fno-omit-frame-pointer -g -std=c++11
	for addr in `./printBackTrace`; do addr2line $${addr} -e ./printBackTrace; done

testPrintBackTrace:
	g++ testPrintBackTrace.cpp -o testPrintBackTrace -O3 -g -std=c++11
	./testPrintBackTrace

hackReturnAddress: 
	g++ hackReturnAddress.cpp -o hackReturnAddress -g -std=c++11 -O0
