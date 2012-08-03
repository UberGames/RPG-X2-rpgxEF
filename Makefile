# option
RPGXDIRDEFAULT="/c/Program Files/Raven/Star Trek Voyager Elite Force/RPG-X2"
RPGXDIRYOUNG="/d/games/eliteforce/build-engine/RPG-X2"

# determine arch and platform
ARCH=$(shell uname -m | sed -e s/i.86/i386/)
PLATFORM=$(shell uname|sed -e s/_.*//|tr '[:upper:]' '[:lower:]')

# cross compiling
ifeq ($(TARGET), win32)
ARCH=x86
PLATFORM=mingw32
endif
ifeq ($(TARGET), win64)
ARCH=x86
PLATFORM=mingw32
endif

# set extension
ifeq ($(PLATFORM), mingw32)
EXT=dll
else
EXT=so
endif

#default 
default: all

# makes all shared libraries
all:
	make -C game
	make -C cgame
	make -C ui
	
# cleans up everthing
clean:
	make clean -C game
	make clean -C cgame
	make clean -C ui
	
# cleans all and makes all shared libs
allclean:
	clean
	all
	
# install shared libs (NOTE: $(RPGXDIRXXX) has to be exported in the shell as variable)
install:
	mv game/qagame$(ARCH).$(EXT) $(RPGXDIRDEFAULT)
	mv cgame/cgame$(ARCH).$(EXT) $(RPGXDIRDEFAULT)
	mv ui/ui$(ARCH).$(EXT) $(RPGXDIRDEFAULT)
	
installyoung:
	mv game/qagame$(ARCH).$(EXT) $(RPGXDIRYOUNG)
	mv cgame/cgame$(ARCH).$(EXT) $(RPGXDIRYOUNG)
	mv ui/ui$(ARCH).$(EXT) $(RPGXDIRYOUNG)

pack:
	cp game/qagame$(ARCH).$(EXT) .
	cp cgame/cgame$(ARCH).$(EXT) .
	cp ui/ui$(ARCH).$(EXT) .
	tar -czvpf release_$(PLATFORM)_$(ARCH).tar.gz qagame$(ARCH).$(EXT) cgame$(ARCH).$(EXT) ui$(ARCH).$(EXT)

