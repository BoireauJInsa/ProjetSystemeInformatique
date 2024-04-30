default: ./lex.out

all: test default

test: default
	cat ./samples/ok21.c | ./lex.out

clean:
	rm  -f *.out *.tab.c *.tab.h *.yy.c *.output

clear:
	clear
	rm  -f *.out *.tab.c *.tab.h *.yy.c *.output

%.tab.c: %.y
	bison -t -v -d -Wcounterexamples $^

%.yy.c: %.l
	flex -o $@ $^

%.out: %.yy.c %.tab.c
	gcc -o $@ $^ symbol_table.c instruction.c

.PRECIOUS:
	%.yy.cc %.tab.c