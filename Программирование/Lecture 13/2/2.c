#include <stdio.h>

//===========================================================
// Это main() - начало выполнения программы
//-----------------------------------------------------------
int main()
{
//------------------------------------------------------------
// Объявление переменных.
//------------------------------------------------------------

    char s1,s2,s3,s4; // переменные для букв в слове
    char delt; // сдвиг
//------------------------------------------------------------

//------------------------------------------------------------

//  Получим с консоли слово из четырех символов

   scanf("%c%c%c%c", &s1, &s2, &s3, &s4);     //%с - для сиволов
// Получим численное значение delt
   scanf("%hhd", &delt);

//------------------------------------------------------------

// Вычислим новые значения кодов для букв 
// То есть получим новые буквы:
/*
  s1 - 'A' получаем номер буквы в алфавите (с 0)
  'Z' - 'A' + 1 - вычисляем количество букв в алфавите
  Для последних букв алфавита номер нового кода будет больше чем букв в 
  алфавите, тогда берем остаток от деления на количество букв и получаем
  номера вначале алфавита
  + 'A' - получаем код реальной буквы в соответствии с стандартной кодировкой 
*/

   s1 = (s1 - 'A' + delt) % ('Z' - 'A' + 1) + 'A';
   s2 = (s2 - 'A' + delt) % ('Z' - 'A' + 1) + 'A';
   s3 = (s3 - 'A' + delt) % ('Z' - 'A' + 1) + 'A';
   s4 = (s4 - 'A' + delt) % ('Z' - 'A' + 1) + 'A';


// Напечатаем новое слово (символами!!!)
    printf("%c%c%c%c\n", s1, s2, s3, s4);

    return 0;
}

/**
Проверил исходник: Герасимов Д.А., П1-18
Example:
Input:
bruh
2
Output:
JZCP
*/
