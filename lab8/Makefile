#
# A generic Makefile to compile an embedded SQL program.
#
#  CAUTION - to use this Makefile, you must either
#    a) set the environmental variable "exe" to the name of the program
#    you wish to compile, which *MUST* be the same name as your embedded
#    .pc file
#  (You do not have to reset exe until you have your program compiled.)
#
#      setenv exe <filename>
#      make <filename>
#  OR
#
#    b) include it on the make command line (filename *MUST* be the same
#    name as the .pc file you are using as your embedded sql source file).
#
#      make <filename> exe=<filename>
#

include /oracle/ora190c/orahome/precomp/lib/env_precomp.mk

.SUFFIXES: .pc .c .o

PROCPLSFLAGS= sqlcheck=full userid=$(USERID)

INCLUDE=-I. -I/usr/lib/gcc/x86_64-redhat-linux/9/include -I/oracle/ora190c/orahome/precomp/public -I/oracle/ora190c/orahome/rdbms/public

$(exe): $(exe).o
	$(CC) -o $@ $@.o $(OBJS) -L$(LIBHOME) $(PROLDLIBS) -L/usr/lib64/libaio.so.1 -L/usr/lib64/libnsl.so.1

.pc.o:
	$(PROC) $(PROCFLAGS) iname=$*.pc
	$(CC) $(CFLAGS) -c $*.c

.pc.c:
	$(PROC) $(PROCFLAGS) iname=$*.pc

.c.o:
	$(CC) $(CFLAGS) -c $*.c

