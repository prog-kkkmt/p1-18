#include <iostream>

/**
 ћ. Ё. јбрам€н
ќписать процедуру ShiftRight3(A, B, C),
выполн€ющую правый циклический сдвиг: значение A переходит в B,
значение B Ч в C, значение C Ч в A (A, B, C Ч вещественные параметры, €вл€ющиес€ одновременно входными и выходными). — помощью этой процедуры выполнить правый циклический сдвиг дл€ двух данных наборов из трех чисел:
(A1, B1, C1) и (A2, B2, C2).
ћитюшин ѕЄтр
*/

void ShiftRigth3(int *a, int *b, int *c)
{
    int temp = *b;
    *b = *a;
    *a = *c;
    *c = temp;
}

int main()
{
    int a, b, c;
    std::cin >> a >> b >> c;
    ShiftRigth3(&a, &b, &c);
    std::cout << a << ' ' << b << ' ' << c << std::endl;

    std::cin >> a >> b >> c;
    ShiftRigth3(&a, &b, &c);
    std::cout << a << ' ' << b << ' ' << c << std::endl;
    return 0;
}
