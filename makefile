src = $(wildcard *.cpp *.c)
obj = $(patsubst %.cpp, build/%.o, $(patsubst %.c, build/%.o, $(src)))

headers = $(wildcard *.h *.hpp)

%.o: %.c
	gcc -c -o build/$@ $<

%.o: %.cpp
	g++ --std=c++11 -c -o build/$@ $<

g2g: $(headers) $(obj)
	g++ -lm -o $@ $(obj)


.PHONY: run 
run: g2g
	./g2g --zengarden -r 0.05 test_front_cu.gbr -o test.gcode