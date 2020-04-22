/** Задача 1
Напишите программу, которая выводит размеры типов int, float, char, bool и size_t в битах . Каждое значение должно быть в отдельной строке в указанном порядке. Для вывода используйте cout, заголовок уже подключен.
https://stepik.org/lesson/306254/step/7?unit=288299 */

//
#include <iostream>

int main()
{
  std::cout << sizeof(int)*8 << std::endl;
  std::cout << sizeof(float)*8 << std::endl;
  std::cout << sizeof(char)*8 << std::endl;
  std::cout << sizeof(bool)*8 << std::endl;
  std::cout << sizeof(size_t)*8 << std::endl;
    return 0;
}
