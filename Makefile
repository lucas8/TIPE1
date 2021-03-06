CC=g++
CXXFLAGS=-Wall -Wextra
LDFLAGS=
OBJS=objs/main.o \
	 objs/robot.o \
	 objs/ia.o
PROG=test.prog

all : objs/ $(PROG)

$(PROG) : $(OBJS)
	$(CC) $(CXXFLAGS)    -o $@ $^ $(LDFLAGS)

objs/%.o : src/%.cpp
	$(CC) $(CXXFLAGS) -c -o $@ $<

objs/ :
	mkdir objs

clean :
	rm -r objs
	@mkdir objs
	@touch $(PROG)
	rm $(PROG)

rec : clean all

.PHONY : all clean rec


