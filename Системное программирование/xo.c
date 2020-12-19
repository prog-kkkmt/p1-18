#include <stdio.h>
#include <stdlib.h>

char matrix[3][3];
char result();
void init_matrix();
void playerX();
void playerO();
void monitor_matrix();

int main(void)
{
  char end;
  end =  ' ';
  int count = 0;

  printf("Крестики нолики на C.\n");
  printf("1 координата отвечает за горизонталь, 2 за вертикаль.\n");

  init_matrix();

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

}

void init_matrix()
{
    int i, j;
    for(i = 0; i < 3; i++)
        for(j = 0; j < 3; j++)
            matrix[i][j] =  ' ';
}

void monitor_matrix()
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

void playerX()
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

void playerO()
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

char result()
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
