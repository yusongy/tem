# Makefile for lab00, YOUR NAME(S) YUsong Yan, CS32, W20

CXX = clang++
#CXX = g++

helloWorld: helloWorld.o
	${CXX} helloWorld.o -o helloWorld

helloWorld.o:helloWorld.cpp
	${CXX} -c helloWorld.cpp

clean: 
        /bin/rm -f *.o helloWorld