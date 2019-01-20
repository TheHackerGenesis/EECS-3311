INCLUDE_PATH =  -I"$(ISE_LIBRARY)/library/time/spec/include"
SHELL = /bin/sh
CC = gcc
CPP = g++
CFLAGS = -O0 -pipe -fPIC -D_GNU_SOURCE -m64 -DEIF_THREADS -DEIF_LINUXTHREADS  -DEIF_IEEE_BEHAVIOR -DWORKBENCH -I"/cs/local/packages/Eiffel18.11/studio/spec/linux-x86-64/include" -I. $(INCLUDE_PATH)
CPPFLAGS = -O0 -pipe -fPIC -D_GNU_SOURCE -m64 -DEIF_THREADS -DEIF_LINUXTHREADS  -DEIF_IEEE_BEHAVIOR -DWORKBENCH -I"/cs/local/packages/Eiffel18.11/studio/spec/linux-x86-64/include" -I. $(INCLUDE_PATH)
LDFLAGS = -m elf_x86_64
CCLDFLAGS = -m64  
LDSHAREDFLAGS =  -m elf_x86_64 -shared -o
EIFLIB = "/cs/local/packages/Eiffel18.11/studio/spec/linux-x86-64/lib/libmtwkbench.a"
EIFTEMPLATES = /cs/local/packages/Eiffel18.11/studio/config/linux-x86-64/templates
LIBS = -lm -lpthread
MAKE = make
AR = ar
LD = ld
MKDEP = \$(EIFFEL_SRC)/C/mkdep $(DPFLAGS) --
MV = /bin/mv
CP = /bin/cp
RANLIB = :
RM = /bin/rm -f
FILE_EXIST = 
RMDIR = 
X2C = "/cs/local/packages/Eiffel18.11/studio/spec/linux-x86-64/bin/x2c"
SHAREDLINK = ld
SHAREDLIBS = -lm
SHARED_SUFFIX = .so
COMMAND_MAKEFILE = 
START_TEST = if [ ! -f finished ] ; then 
END_TEST = ; fi 
CREATE_TEST = touch finished 
SYSTEM_IN_DYNAMIC_LIB = sorted-tree.so 

.SUFFIXES:.cpp .o

.c.o:
	$(CC) $(CFLAGS) -c $<

.cpp.o:
	$(CPP) $(CPPFLAGS) -c $<

OBJECTS = big_file_C2_c.o 

OLDOBJECTS =  ba1016.o ba1016d.o ba1023.o ba1023d.o so1002.o so1002d.o so1020.o \
	so1020d.o el1003.o el1003d.o el1021.o el1021d.o no1015.o no1015d.o \
	no1022.o no1022d.o so1017.o so1017d.o so1024.o so1024d.o se1014.o \
	se1014d.o fu1004.o fu1004d.o fu1007.o fu1007d.o fu1009.o fu1009d.o \
	fu1018.o fu1018d.o da998.o da998d.o ti996.o ti996d.o se1005.o \
	se1005d.o se1010.o se1010d.o pa1011.o pa1011d.o pa1012.o pa1012d.o \
	pa1013.o pa1013d.o pa1019.o pa1019d.o ba1006.o ba1006d.o ba1008.o \
	ba1008d.o da994.o da994d.o da1001.o da1001d.o da997.o da997d.o \
	ti995.o ti995d.o da1000.o da1000d.o da992.o da992d.o fi993.o fi993d.o \
	da999.o da999d.o 

all: Cobj2.o

Cobj2.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj2.o $(OBJECTS)
	$(RM) $(OBJECTS)
	$(CREATE_TEST)

clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

