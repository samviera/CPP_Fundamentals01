all: 
	@echo 'Use one of the following options: '
	@echo '    Use "make run" to build and execute'
	@echo '    Use "make test" to test'
	@echo '    Use "make clean" to clean the artifacts'

run:
	clang++ double_integer.cpp main.cpp -o main
	./main

test: 
	clang++ double_integer.cpp test.cpp -l criterion -o test
	./test.sh

clean:
	rm -f test
	rm -f main
	rm -f test_out
