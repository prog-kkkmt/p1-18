#include <iostream>

using namespace std;

int main()
{
    int ** create_array2d(size_t a, size_t b){
	int ** m = new int *[a];
	for (size_t i = 0; i != a; ++i)
		m[i] = new int[b];
	return m;
}

void free_array2d(int ** m, size_t a){
	for (size_t i = 0; i != a; ++i)
		delete [] m[i];
	delete [] m;
}
}
