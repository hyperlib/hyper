CXX=g++
LDFLAGS := -lboost_program_options -L/usr/local/lib
CXXFLAGS := -g -std=c++1z -Wall -pedantic
EXECUTABLE ?= hyper
TYPE ?= debug
TARGET ?= target/$(TYPE)
OBJ_DIR ?= $(TARGET)/objs
INC_DIRS ?= $(addprefix -I, $(shell find packages -type d -name include))
SRC_FILES = $(shell find src -type f -print | grep "\.cpp")
OBJ_FILES := $(addprefix $(OBJ_DIR)/,$(SRC_FILES:.cpp=.o))
INC_DIRS += -I/usr/local/include/ -Iinclude
LDFLAGS += $(INC_DIRS)
CXXFLAGS += $(INC_DIRS)

all: $(TARGET)/$(EXECUTABLE)

$(TARGET)/$(EXECUTABLE): $(OBJ_FILES)
	$(CXX) $(LDFLAGS) -o $@ $^

$(OBJ_DIR)/%.o: %.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

run: $(TARGET)/$(EXECUTABLE)
	@./$(TARGET)/$(EXECUTABLE)

.PHONY: clean

submodule:
	@git submodule foreach git pull

clean:
	rm -r $(TARGET)
