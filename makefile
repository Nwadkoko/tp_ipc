LIBS=/usr/lib/gcc/x86_64-linux-gnu/8/libstdc++.so

CPPFLAGS= -std=c++17

DIR = build/

FILES = $(DIR)memoire.o $(DIR)msgqueue.o $(DIR)semaphore.o

CC = g++



all: main.cpp memoire.o msgqueue.o semaphore.o
	$(CC) $(CPPFLAGS) main.cpp $(FILES) -o $(DIR)main $(LIBS)

memoire.o: memoire.cpp memoire.h
	$(CC) $(CPPFLAGS) -c memoire.cpp -o $(DIR)memoire.o 

msgqueue.o: msgqueue.cpp msgqueue.h
	$(CC) $(CPPFLAGS) -c msgqueue.cpp -o $(DIR)msgqueue.o 


semaphore.o: semaphore.cpp semaphore.h
	$(CC) $(CPPFLAGS) -c semaphore.cpp -o $(DIR)semaphore.o 


cleanup:
	rm $(DIR)*