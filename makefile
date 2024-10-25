CFLAGS = -std=c++17 -O2

LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTut: main.cpp
	g++ $(CFLAGS) -o VulkanTut main.cpp $(LDFLAGS)

dbg:
	g++ $(CFLAGS) -o -g VulkanTut main.cpp $(LDFLAGS)

.PHONY: test clean

dev: VulkanTut
	./VulkanTut

tut:
	g++ $(CFLAGS) -o VulkanTut tut.cpp $(LDFLAGS)

clean:
	rm -f VulkanTut
