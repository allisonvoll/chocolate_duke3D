CC=gcc
CFLAGS=-Wall -O2 -DPLATFORM_UNIX
LDFLAGS=`sdl-config --static-libs` -shared
INCLUDE=-Ienet/include/ `sdl-config --cflags`
SRCS=cache.c display.c draw.c dummy_multi.c engine.c \
	fixedPoint_math.c network.c tiles.c
OBJS=$(SRCS:.c=.o)
DEPS=$(SRCS:.c=.dep)
TARGET=libengine.so

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS)

$(OBJS): %.o: %.c %.dep
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ -c $<

$(DEPS): %.dep: %.c Makefile
	$(CC) $(CFLAGS) $(INCLUDE) -MM $< > $@

clean::
	-rm -f *~ *.o $(TARGET)
