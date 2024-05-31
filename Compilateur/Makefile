default: ./lex.out
	

python: 
	python interpreteur.py

all: test default python

test: default
	cat ./test_arith.c| ./lex.out

clean:
	rm  -f *.out *.tab.c *.tab.h *.yy.c *.output

clear:
	clear
	rm  -f *.out *.tab.c *.tab.h *.yy.c *.output

%.tab.c: %.y
	bison -t -v -d --html -Wcounterexamples $^

%.yy.c: %.l
	flex -o $@ $^

%.out: %.yy.c %.tab.c
	gcc -o $@ $^ symbol_table.c instruction.c

.PRECIOUS:
	%.yy.cc %.tab.c