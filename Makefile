CC=clang++
CFLAGS=-g
LIBNAME=goodjson
TESTSOURCE=test.cc
SOURCE=goodjson.cc
HEADERS=goodjson.h

all: $(LIBNAME).a test

$(LIBNAME).a: $(SOURCE) $(HEADERS)
	$(CC) $(CFLAGS) -c $(SOURCE) -o $(LIBNAME).o
	ar rc $(LIBNAME).a $(LIBNAME).o

test: $(TESTSOURCE) $(LIBNAME).a
	$(CC) $(TESTSOURCE) $(LIBNAME).a -o test

.PHONY: all clean

clean:
	rm -f *.o
	rm -f $(LIBNAME).a
	rm -f test
