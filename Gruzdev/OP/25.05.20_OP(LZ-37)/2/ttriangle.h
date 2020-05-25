#ifndef TTRIANGLE_H
#define TTRIANGLE_H

struct tpoint{
    double x; 
    double y;
};

	double leng(struct tpoint a, struct tpoint b);

struct ttriangle{
    tpoint a;
    tpoint b;
    tpoint c;
}; 

	double perim(struct ttriangle t);


#endif
