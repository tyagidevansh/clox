
# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra -std=c11

# Executable name
EXEC = main

# Source files
SRC = main.c value.c memory.c chunk.c debug.c

# Object files
OBJ = main.o value.o memory.o chunk.o debug.o

# Default target
all: $(EXEC)

# Link object files to create the executable
$(EXEC): $(OBJ)
	$(CC) $(OBJ) -o $(EXEC)

# Compile each source file into an object file
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up object files and the executable
clean:
	rm -f $(OBJ) $(EXEC)