CD=cd
MK=mkdir
MAKE=make
ENGINE=Engine/src
GAME=Game/src
BUILD=build

all:
	$(MK) -p $(BUILD)
	$(CD) $(ENGINE); $(MAKE)
	$(CD) $(GAME); $(MAKE)

clean:
	$(CD) $(ENGINE); $(MAKE) clean
	$(CD) $(GAME); $(MAKE) clean
