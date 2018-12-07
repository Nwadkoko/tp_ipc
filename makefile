LIBS=/usr/lib/arm-linux-gnueabihf/libstdc++.so.6.0.22

CC = g++
DIR = build/


CPPFLAGS= -std=c++17

all: main.o
	$(CC) $(CPPFLAGS) $(DIR)main.o 			-o $(DIR)main

memoire.o: memoire.cpp memoire.h
	$(CC) $(CPPFLAGS) $(DIR)memoire.cpp 	-o $(DIR)memoire.o 

msgqueue.o: msgqueue.cpp msgqueue.h
	$(CC) $(CPPFLAGS) $(DIR)msgqueue.cpp 	-o $(DIR)msgqueue.o 


semaphore.o: semaphore.cpp semaphore.h
	$(CC) $(CPPFLAGS) $(DIR)semaphore.cpp 	-o $(DIR)semaphore.o 

cleanup:
	rm $(DIR)*