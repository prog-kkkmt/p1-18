/**Text53. Дан текстовый файл. Создать символьный файл,
 содержащий все знаки препинания, встретившиеся в текстовом файле (в том же порядке).*/

#include <stdio.h>

int main(){
			FILE *fin = fopen("in_r.txt","r");
			FILE *fout = fopen("out_r.txt","w");
	
char c;
    while((c = fgetc(fin)) != EOF){
	if (c == '.')
		fprintf(fout,"%c",c);
	       
	else if (c == ',')
    		fprintf(fout,"%c",c);
              
	else if (c == ':')
    		fprintf(fout,"%c",c);
            
	else if (c == ';')
    		fprintf(fout,"%c",c);
            
	else if (c == '!')
    		fprintf(fout,"%c",c);
             
	else if (c == '?')
		fprintf(fout,"%c",c);
   	    }
			fclose(fin);
			fclose(fout);
	return 0;
}

//©  М. Э. Абрамян (Южный федеральный университет), 1998–2020
//Решил Груздев Р.И. П1-18
