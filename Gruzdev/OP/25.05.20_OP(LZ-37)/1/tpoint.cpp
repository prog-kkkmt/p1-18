/** Param64  */
#include "tpoint.h"
#include <cmath>
using namespace std;

double leng(struct tpoint a, struct tpoint b){
	
	return sqrtf(pow((a.x - b.x),2) + pow((a.y - b.y),2));
}
