#include <stdio.h>
#include <stdlib.h>
#include "game.h"

int main(void)
{
  char end;
  end =  ' ';
  int count = 0;
  FILE *mytxt;

  mytxt = fopen("text.txt", "w+"); // попытался вывести данные в текстовый файл
  printf("Крестики нолики на C.\n");
  printf("1 координата отвечает за горизонталь, 2 за вертикаль.\n");

  init_matrix(); // инициализация матрицы

  do{
    count++;
    monitor_matrix();
    playerX();
    end = result();
    if(end!= ' ')
        break;
    if(count == 9)  {
        monitor_matrix();
        printf("Ничья \n");
        exit(0);
    }
    count++;
    monitor_matrix();
    playerO();
    end = result();
    if(end!= ' ')
        break;
    }
  while(end == ' ');

  if(end =='X')
    printf("X победили!\n");
  else
    printf("O победили!\n");
  monitor_matrix();
  fprintf(mytxt, "%s %s", playerX(), playerO()); // Попытался вывести в текстовый файл ходы игроков
  fclose(mytxt);
} 
