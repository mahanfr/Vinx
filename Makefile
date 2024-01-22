CC = clang
CFLAGS = -Wall -Wextra -ggdb -lglut -lGL
SRC_DIR = src
SRC_FILES = -I./$(SRC_DIR) $(SRC_DIR)/*.c
BUILD_DIR = build

.PHONY: all compile clean always

compile: 
	$(CC) $(CFLAGS) -o $(BUILD_DIR)/vinx $(SRC_FILES)
	
always:
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)/*
