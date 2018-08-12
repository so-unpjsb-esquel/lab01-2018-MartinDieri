CC=gcc
BIN=./bin
CFLAGS=-Wall -Werror -g

PROG=ej1 ej2-4 ej2-8 ej2-12 ej2-13 ej3-26 ej3-53 reader writer hola

LIST=$(addprefix $(BIN)/, $(PROG))

.PHONY: all
all: $(LIST)

$(BIN)/%: %.c
	$(CC) -o $@ $< $(CFLAGS)

%: %.c
	$(CC) -o $(BIN)/$@ $< $(CFLAGS)

.PHONY: clean
clean:
	rm -f $(BIN)/ej* $(BIN)/reader $(BIN)/writer $(BIN)/hola
