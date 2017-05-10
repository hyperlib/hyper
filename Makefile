CXX=clang++
LDFLAGS := -Iinclude
CXXFLAGS := -g -std=c++1z -Wall -pedantic
EXECUTABLE ?= hyper
TYPE ?= debug
TARGET ?= target/$(TYPE)
OBJ_DIR ?= $(TARGET)/objs
INC_DIRS ?= $(addprefix -I, $(shell find packages -type d -name include))
SRC_FILES = $(shell find src -type f -print | grep "\.cpp")
OBJ_FILES := $(addprefix $(OBJ_DIR)/,$(SRC_FILES:.cpp=.o))
LDFLAGS += $(INC_DIRS)
CXXFLAGS += $(INC_DIRS)

all: $(TARGET)/$(EXECUTABLE)

$(TARGET)/$(EXECUTABLE): $(OBJ_FILES)
	$(CXX) $(LDFLAGS) -o $@ $^

$(OBJ_DIR)/%.o: %.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

.PHONY: clean

submodule:
	@git submodule foreach git pull

clean:
	rm -r $(TARGET)
