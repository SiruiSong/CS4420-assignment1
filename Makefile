CXX=g++
CPPFLAGS=-Wall -Werror

TARGET=filesize
SRCS=$(TARGET).cc

all: $(TARGET)
	chmod 777 *.*

$(TARGET): $(SRCS) 

tests: test
test: $(TARGET)
	chmod 777 *.*
	-./newtest.1
	-./newtest.2
	-./newtest.3
	-./newtest.4
	-./newtest.5

clean:
	rm -f $(TARGET) *.o newtest.?.*
