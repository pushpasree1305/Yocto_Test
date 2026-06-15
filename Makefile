TARGET = hello

all:
	$(CC) $(CFLAGS) $(CPPFLAGS) hello.c -o $(TARGET) $(LDFLAGS)

clean:
	rm -f $(TARGET)

install:
	install -d $(DESTDIR)/usr/bin
	install -m 0755 $(TARGET) $(DESTDIR)/usr/bin/$(TARGET)
