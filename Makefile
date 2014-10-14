SOURCES = \
	dump_syms.cpp \
	PDBParser.cpp \
	utils.cpp \

OBJECTS = $(patsubst %.cpp,%.o,$(SOURCES))

HEADERS = \
	PDBHeaders.h \
	PDBParser.h \
	utils.h

CXXFLAGS = -std=c++11 -g -O0

all: dump_syms

dump_syms: $(OBJECTS)
	$(CXX) -o dump_syms $(OBJECTS)

clean:
	rm $(OBJECTS) dump_syms
