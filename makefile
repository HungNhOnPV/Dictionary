default: run

main:
	clear 
	gcc -w -o Dict dict.c libbt.a libfdr.a  `pkg-config gtk+-3.0 --cflags --libs` -std=c99 -no-pie


run: main
	./Dict 
clean:
	rm -f main
