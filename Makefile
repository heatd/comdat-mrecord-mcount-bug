CFLAGS:=-O2 -pg -mnop-mcount -mfentry -mrecord-mcount -fno-PIE
CXXFLAGS:=$(CFLAGS)

testprog: main.o a.h b.o
	$(CXX) -fuse-ld=lld -no-pie $(CFLAGS) main.o b.o -o $@

clean:
	rm -f testprog main.o b.o
