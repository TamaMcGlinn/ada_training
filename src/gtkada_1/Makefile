TARGET = gtkada_1

OBJS = $(TARGET).o
PREFIX = $(HOME)
BINDIR = $(PREFIX)/bin
LIB_DIR = /usr/lib64/gcc/x86_64-suse-linux/10/lib/

LDFLAGS = -R $(LIB_DIR)

# compile
.adb.o:
	gcc -c -gnat2012 $< -I${GTKADA_DIR}/src -I${GTKADA_DIR}/src/generated
.SUFFIXES: .adb .o

# link
$(TARGET): $(OBJS)
	gnatbind -x $(TARGET).ali -I${GTKADA_DIR}/src/obj/gtkada/static; gnatlink $(TARGET).ali $(LDFLAGS)

install:
	install -D $(TARGET) $(BINDIR)/$(TARGET)

uninstall:
	-rm $(BINDIR)/$(TARGET)

clean:
	rm *.o *.ali $(TARGET)
