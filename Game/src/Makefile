CC=gcc
CFLAGS=-Wall -DPLATFORM_UNIX -O2
LDFLAGS=`sdl-config --libs` -lSDL_mixer
INCLUDE=-Ienet/include/ `sdl-config --cflags` -I../../Engine/src
SRCS=game.c actors.c animlib.c config.c console.c control.c cvar_defs.c \
	cvars.c dummy_audiolib.c game.c gamedef.c global.c keyboard.c \
	menues.c player.c premap.c rts.c scriplib.c sector.c sounds.c midi/sdl_midi.c \
	audiolib/fx_man.c audiolib/dsl.c audiolib/ll_man.c audiolib/multivoc.c audiolib/mv_mix.c audiolib/mvreverb.c audiolib/nodpmi.c \
 	audiolib/pitch.c audiolib/user.c ../../Engine/src/engine.a
OBJS=$(SRCS:.c=.o)
DEPS=$(SRCS:.c=.dep)
TARGET=../../build/game

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS)

$(OBJS): %.o: %.c %.dep
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ -c $<

$(DEPS): %.dep: %.c Makefile
	$(CC) $(CFLAGS) $(INCLUDE) -MM $< > $@

clean::
	-rm -f *~ *.o $(TARGET)
