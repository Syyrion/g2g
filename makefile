src = $(wildcard *.cpp *.c)
obj = $(patsubst %.cpp, build/%.o, $(patsubst %.c, build/%.o, $(src)))

headers = $(wildcard *.h *.hpp)

build/%.o: %.c | build
	gcc -c -o $@ $<

build/%.o: %.cpp | build
	g++ --std=c++11 -c -o $@ $<

g2g: $(headers) $(obj)
	g++ -lm -o $@ $(obj)

build:
	mkdir $@

.PHONY: run 
run: g2g
	./g2g --zengarden -r 0.05 test_front_cu.gbr -o test.gcode


.PHONY: clean
clean:
	rm build/*.o
	rm g2g