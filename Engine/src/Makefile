AR=ar
RANLIB=ranlib
CC=gcc
CFLAGS=-Wall -O2 -D_GNU_SOURCE -DPLATFORM_UNIX -fPIC
LDFLAGS=`sdl-config --static-libs`
INCLUDE=-Ienet/include/ `sdl-config --cflags`
SRCS=cache.c display.c draw.c dummy_multi.c engine.c \
	filesystem.c fixedPoint_math.c network.c tiles.c
OBJS=$(SRCS:.c=.o)
DEPS=$(SRCS:.c=.dep)
TARGET=engine.a

all: $(TARGET)

$(TARGET): $(OBJS)
	$(AR) rc $@ $^
	$(RANLIB) $@

$(OBJS): %.o: %.c %.dep
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ -c $<

$(DEPS): %.dep: %.c Makefile
	$(CC) $(CFLAGS) $(INCLUDE) -MM $< > $@

clean::
	-rm -f *~ *.o $(TARGET)
