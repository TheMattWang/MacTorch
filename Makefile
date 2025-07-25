CXX       = g++
CXXFLAGS  = -std=c++17 -Wall -Iinclude

SRC       = src/main.cpp src/layer.cpp
OBJ       = build/main.o build/layer.o
LIB_OBJS  = build/layer.o

TARGET    = build/mac_torch

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) $(OBJ) -o $(TARGET)

build/%.o: src/%.cpp
	@mkdir -p build
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -rf build

# Test-specific bits
TEST_OBJ  = build/sample_test.o
TEST_BIN  = build/sample_test

test: $(TEST_BIN)
	@echo "→ Running sample_test…"
	@./$(TEST_BIN)

$(TEST_BIN): $(LIB_OBJS) $(TEST_OBJ)
	$(CXX) $(CXXFLAGS) $^ -o $@

build/sample_test.o: test/sample_test.cpp
	@mkdir -p build
	$(CXX) $(CXXFLAGS) -c $< -o $@
