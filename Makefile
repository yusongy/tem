# Makefile for lab00, YOUR NAME(S) YUsong Yan, CS32, W20

CXX = clang++
#CXX = g++

all:helloWorld lab00Test

helloWorld: helloWorld.o
	${CXX} helloWorld.o -o helloWorld

helloWorld.o:helloWorld.cpp
	${CXX} -c helloWorld.cpp

lab00Test: lab00Test.o tddFuncs.o arrayFuncs.o
	${CXX} lab00Test.o tddFuncs.o arrayFuncs.o -o lab00Test

lab00Test.o: lab00Test.cpp
	${CXX} -c lab00Test.cpp 


clean: 
	/bin/rm -f *.o helloWorld

clean: 
	/bin/rm -f *.o helloWorld lab00Test
