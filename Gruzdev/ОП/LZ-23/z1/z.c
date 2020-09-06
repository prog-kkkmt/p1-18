/** Text1°. Дано имя файла и целые положительные числа N и K.
 Создать текстовый файл с указанным именем и записать в него N строк,
 каждая из которых состоит из K символов «*» (звездочка).  */

#include <stdio.h>


int main()
{

	FILE * fin = fopen("in_r.txt", "r");
	FILE * fout = fopen("out_r.txt", "a"); 

int n,k;
fscanf(fin,"%d",&n);
fscanf(fin,"%d",&k);

for(int i = 0;i < n; i++){
	for(int j = 0;j < k;j++){
		printf("*");
		fprintf(fout,"*");
		}
	printf("\n");
	fprintf(fout,"\n");
	}

  fclose(fin);
  fclose(fout);
return 0;
}
