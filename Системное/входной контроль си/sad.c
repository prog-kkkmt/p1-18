/**������� ����:
1.�������� 2. ������� 3. ������ 4. �������� 5. ��������� 6.�����
������� ���������  � �����(�����, �����, ���)

*/
#include <stdio.h>
#define Max 100000

struct dates{
int chislo;
int mesac;
int god;
};
struct dates arr[Max];


void print_men(){
printf("chto delat' bydem?\n");
printf("1. Dobavit\n");
printf("2. Delete\n");
printf("3. Print Date\n");
printf("4. Zagruzit' iz file\n");
printf("5. Save\n");
printf("6. Vixod\n");
}

void dobavit(){

}

void Dele(){

}

/*void printdate(){
FILE *file;
file = fopen("file.txt","r");
char i = 0;
while (fscanf (file, "%d%d%d", arr[i].chislo, arr[i].mesac, arr[i].god) != EOF) {
		printf("%d %d %d\n", arr[i].chislo, arr[i].mesac, arr[i].god);
		i++;
	}
fclose(file);
}
*/
void zagr(){

}

void save(){

}

int get_var(int vv){
int coutm;
scanf("%d",&coutm);
return coutm;
}



int main(){
        int coutm;

    do{
print_men();
coutm = get_var(6);
switch(coutm){
case 1:

    break;
case 2:

    break;
case 3:
    /*
    FILE *file;
file = fopen("file.txt","r");
int i = 0;
while (fscanf (file, "%d%d%d", arr[i].chislo, arr[i].mesac, arr[i].god) != EOF) {
		printf("%d %d %d\n", arr[i].chislo, arr[i].mesac, arr[i].god);
		i++;
	}
fclose(file);\
*/
    break;
case 4:

    break;
case 5:

    break;
}
    } while(coutm != 6);

return 0;
}
