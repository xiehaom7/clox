CC=gcc
FLAGS = -Wall
BUILD = build

$(BUILD)/%.o : %.c
	@echo $<
	@$(CC) $(FLAGS) -c -o $@ $<

OBJECTS = $(patsubst %.c,$(BUILD)/%.o,$(wildcard *.c))

clox.exe : $(OBJECTS)
	@$(CC) -o $@ $^

all : clox.exe

clean :
	rm $(BUILD)/*.o