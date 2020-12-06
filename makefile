CC= gcc
FLAGS= -Wall -g
all: myBank.o main.o
   $(CC) $(FLAGS) -o all main.o myBank.o
   main.o: main.c myBank.h
   $(CC) $(FLAGS) -c main.c
   
   myBank.o: myBank.c myBank.h
  $(CC) $(FLAGS) -c myBank.c
  
.PHONY: clean all
  clean:
  rm -f all *.o 
