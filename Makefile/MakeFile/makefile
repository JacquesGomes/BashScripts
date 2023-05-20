CXX = g++

CXXFLAGS = -Wall -Wextra -pedantic -std=c++11

all: myprogram

myprogram: main.o libmylib.a
	$(CXX) $(CXXFLAGS) $^ -o $@

main.o: main.cpp mylib.hpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

libmylib.a: mylib.o
	ar rcs $@ $^

lib/mylib.o: mylib.cpp mylib.hpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f *.o lib/*.o libmylib.a myprogram

-include *.d lib/*.d