/*
Задание: https://stepik.org/lesson/90682/step/7?unit=66910

Вводятся два числа с одинарной точностью.
Вывести результат их деления с точностью до 2 знака.

В Си это выглядело бы так - printf("%0.2f", val)

*/

import java.util.*;

public class n3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        float a = sc.nextFloat();
        float b = sc.nextFloat();

        System.out.printf("%.2f", a / b);
    }

}