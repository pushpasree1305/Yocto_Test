CC ?= gcc
CFLAGS ?= -Wall

TARGET = hello

all: $(TARGET)

$(TARGET): hello.c
	$(CC) $(CFLAGS) hello.c -o $(TARGET)

clean:
	rm -rf $(TARGET)

install:
	install -d $(DESTDIR)/usr/bin
	install -m 0755 $(TARGET) $(DESTDIR)/usr/bin/$(TARGET)
