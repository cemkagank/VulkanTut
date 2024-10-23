CFLAGS = -std=c++17 -O2

LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTut: main.cpp
	g++ $(CFLAGS) -o VulkanTut main.cpp $(LDFLAGS)


.PHONY: test clean

test: VulkanTut
	./VulkanTut

clean:
	rm -f VulkanTut
