TARGET = sip.pyd
OFILES = siplib.o apiversions.o descriptors.o qtlib.o threads.o objmap.o voidptr.o array.o bool.o
HFILES = sip.h sipint.h array.h 

CC = gcc
CXX = g++
LINK = g++
CPPFLAGS = -DNDEBUG -DUNICODE -DQT_LARGEFILE_SUPPORT -I. -IC:\Users\cheta\Documents\zephyr3\Python38\win64\include
CFLAGS = -O2 -Wall
CXXFLAGS = -O2 -Wall
LFLAGS = -mthreads -Wl,-enable-stdcall-fixup -Wl,-enable-auto-import -Wl,-enable-runtime-pseudo-reloc -shared -Wl,-subsystem,console -Wl,-s
LIBS = -LC:\Users\cheta\Documents\zephyr3\Python38\win64\libs -lpython38
.SUFFIXES: .cpp .cxx .cc .C .c


.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.C.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.c.o:
	$(CC) -c $(CFLAGS) $(CPPFLAGS) -o $@ $<

all: $(TARGET)

$(OFILES): $(HFILES)

$(TARGET): $(OFILES)
	$(LINK) $(LFLAGS) -o $(TARGET) $(OFILES) $(LIBS)

install: $(TARGET)
	@if not exist C:\Users\cheta\Documents\zephyr3\Python38\win64\Lib\site-packages mkdir C:\Users\cheta\Documents\zephyr3\Python38\win64\Lib\site-packages
	copy /y $(TARGET) C:\Users\cheta\Documents\zephyr3\Python38\win64\Lib\site-packages\$(TARGET)
	strip C:\Users\cheta\Documents\zephyr3\Python38\win64\Lib\site-packages\$(TARGET)
	@if not exist C:\Users\cheta\Documents\zephyr3\Python38\win64\include mkdir C:\Users\cheta\Documents\zephyr3\Python38\win64\include
	copy /y C:\Users\cheta\Documents\zephyr3\Python38\setup\Modules\sip-4.18.1\siplib\sip.h C:\Users\cheta\Documents\zephyr3\Python38\win64\include\sip.h
	@if not exist C:\Users\cheta\Documents\zephyr3\Python38\win64\Lib\site-packages mkdir C:\Users\cheta\Documents\zephyr3\Python38\win64\Lib\site-packages
	copy /y C:\Users\cheta\Documents\zephyr3\Python38\setup\Modules\sip-4.18.1\sip.pyi C:\Users\cheta\Documents\zephyr3\Python38\win64\Lib\site-packages\sip.pyi

clean:
	-del $(TARGET)
	-del siplib.o
	-del apiversions.o
	-del descriptors.o
	-del qtlib.o
	-del threads.o
	-del objmap.o
	-del voidptr.o
	-del array.o
	-del bool.o
