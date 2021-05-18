/*
Задание: https://stepik.org/lesson/90685/step/7?unit=66913

Дано целое число N, не превосходящее 1000. Далее следуют N целых чисел.

Среди всех чисел массива, необходимо вывести на экран двузначные, четные и положительные через пробел.

А если таких чисел в массиве нет, необходимо вывести -1.
 */


import java.util.Scanner;

public class Mas_1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int[] mas = new int[a];
        for (int i = 0; i != a; i++) {
            mas[i] = sc.nextInt();
        }
        int k = 0;
        for (int i = 0; i != a; i++) {
            if ((mas[i] % 100 >= 10 && mas[i] % 100 <= 99) && mas[i] % 2 == 0 && mas[i] > 0) {
                System.out.print(mas[i] + " ");
                k = 1;
            }
        }
        if (k == 0) {
            System.out.print(-1);
        }
    }
}
