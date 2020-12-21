#include <stdio.h>
#include <stdlib.h>
#include "game.h"

void init_matrix()
{
    int i, j;
    for(i = 0; i < 3; i++)
        for(j = 0; j < 3; j++)
            matrix[i][j] =  ' ';
}

void monitor_matrix() // рисует таблицу
{
  int z;
  for(z = 0; z < 3; z++)
  {
    printf(" %c | %c | %c ",matrix[z][0], matrix[z][1], matrix[z][2]);
    if(z != 2)
        printf("\n---|---|---\n");
  }
  printf("\n");
}

void playerX() // Игрок играющий за X
{
  int a, b;
  printf("Ходят X:");
  scanf("%d%*c%d", &a, &b);
  a--; b--;
  if(matrix[a][b]!= ' ')
  {
    printf("Запрещено, попытайтесь еще.\n");
    playerX();
  }
  else matrix[a][b] = 'X';
}

void playerO() // Игрок играющий за O
{
  int x, y;
  printf("Ходят О:");
  scanf("%d%*c%d", &x, &y);
  x--; y--;
  if(matrix[x][y]!= ' ')
  {
    printf("Запрещено, попытайтесь еще.\n");
    playerO();
  }
  else
    matrix[x][y] = 'O';
}

char result() // Каким образом можно добиться победы
{
    int i;
    for(i = 0; i < 3; i++)
        if(matrix[i][0] == matrix[i][1] && matrix[i][0] == matrix[i][2])
            return matrix[i][0];

    for(i = 0; i < 3; i++)
        if(matrix[0][i] == matrix[1][i] && matrix[0][i] == matrix[2][i])
            return matrix[0][i];

    if(matrix[0][0] == matrix[1][1] && matrix[1][1] == matrix[2][2])
        return matrix[0][0];

    if(matrix[0][2] == matrix[1][1] && matrix[1][1] == matrix[2][0])
        return matrix[0][2];

  return ' ';
} 
