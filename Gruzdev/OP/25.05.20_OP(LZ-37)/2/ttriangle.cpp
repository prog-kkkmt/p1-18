#include <iostream>
#include <cmath>
#include "ttriangle.h"
using namespace std;

double leng(struct tpoint a, struct tpoint b){
	
    return sqrtf(pow((a.x - b.x),2) + pow((a.y - b.y),2));
}


double perim(struct ttriangle t){

	return leng(t.a, t.b) + leng(t.b, t.c) + leng(t.c, t.a);
}
