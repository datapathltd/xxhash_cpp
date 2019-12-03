OBJ = test_main.o xxhash.o
CXX = g++
CPPVERFLAG = -std=c++17
EXTRAARGS = -O3

%.o: %.cpp 
	$(CXX) -c -o $@ $< $(CPPVERFLAG) $(EXTRAARGS)

cpplinqmake: $(OBJ)
	$(CXX) -o test $^ -I. -Wall -Wextra $(CPPVERFLAG) $(EXTRAARGS) $(LIBS)