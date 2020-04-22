#include <stdio.h>

typedef struct Time
{
    unsigned char hour; // часы
    unsigned char min;  // минуты
    unsigned char sec;  // секунды
} Timer;

int time2usec(Timer t){
	int res = t.hour * 60 + t.min;
	res = (res * 60 + t.sec);
	return res;
}

Timer usec2time(int sec){
	Timer t;
	t.sec = sec % 60;
	sec = sec / 60;
	t.min = sec % 60;
	sec = sec / 60;
	t.hour = sec % 60;
	return t;
}

void printTime(Timer a)
{
    printf("%02hhu:%02hhu:%02hhu\n", a.hour, a.min, a.sec);
}

int main(){
int res;
Timer t1,t2;


    scanf("%hhu:%hhu:%hhu", &(t1.hour), &(t1.min), &(t1.sec));
    scanf("%hhu:%hhu:%hhu", &(t2.hour), &(t2.min), &(t2.sec));

	res = time2usec(t2) - time2usec(t1);
    if(res < 0)
	    res += (24 * 60 * 60);
	
    printTime((usec2time(res)));
return 0;
}


