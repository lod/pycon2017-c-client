.PHONY: all
all: client

client.o: gpio_lib.h
gpio_lib.o: gpio_lib.h

client: client.o gpio_lib.o
	gcc -g -Wall `pkg-config libwebsockets --libs --cflags` $+ -o $@

.PHONY: clean
clean:
	rm -f client *.o
