#include <stdio.h>
#include <stdlib.h>

typedef struct Num
{
    char a0;
    char a1;
    char a2;
    char a3;
    char sign;
} Number;

Number addCode(Number d){
    Number tmp;

/*====== Ïðåîáðàçîâàíèå ðàçðÿäîâ ==========================
 äëÿ âû÷èñëåíèÿ çíà÷åíèÿ äîïîëíèòåëüíîãî ðàçðÿäà ó÷èòûâàåì ÷òî
 ïåðâûé íåíóëåâîé ìëàäøèé ðàçðÿä äîïîëíèòåëüíîãî ÷èñëà âû÷èñëÿåòñÿ
 êàê 10 - a0,
 à âñå îñòàëüíûå ïîñëå ïåðâîãî íåíóëåâîãî âû÷èñëÿþòñÿ êàê
 9 - a0
 p "îòâå÷àåò" çà 10 - a0
 z "îòâå÷àåò" çà 9 - a0
=========================================================== */
  char z = 0;
  char p = 1;
    tmp.a0 = (10 - d.a0) % 10;;
    p = p * ( (p + !!tmp.a0) % 2);
    z = !p;
    printf("a0: %hhd p: %hhd z: %hhd\n", tmp.a0, p, z);
    tmp.a1  = z * ( 9 - d.a1) + (p * ( 10 - d.a1)) % 10;
    p = p * ( (p + !!tmp.a1) % 2);
    z = !p;
    printf("a1: %hhd p: %hhd z: %hhd\n", tmp.a1, p, z);

    tmp.a2  = z * ( 9 - d.a2) + (p * ( 10 - d.a2)) % 10;
    p = p * ( (p + !!tmp.a2) % 2);
    z = !p;
    printf("a2: %hhd p: %hhd z: %hhd\n", tmp.a2, p, z);

    tmp.a3  = z * ( 9 - d.a3) + (p * ( 10 - d.a3)) % 10;
    p = p * ( (p + !!tmp.a2) % 2);
    z = !p;

    printf("a3: %hhd p: %hhd z: %hhd\n", tmp.a3, p, z);
    tmp.sign = d.sign;
    return tmp;
};

void prNum(Number tmp)
{
    printf("%hhd %hhd %hhd %hhd %hhd \n", tmp.a3, tmp.a2, tmp.a1, tmp.a0, tmp.sign);
};

int main()
{
    Number nb={0,0,5,1,1}, nz;
    nz=addCode(nb);
    prNum(nz);
}
