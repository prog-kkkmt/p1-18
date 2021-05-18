/*
Задание: https://stepik.org/lesson/90685/step/8?unit=66913

?Дано целое число N, не превосходящее 1000. Далее следуют N целых чисел.

Порядок нарушен тогда, когда среди двух соседних элементов массива левый элемент больше правого.

Программа должна считать количество нарушенных порядков в массиве и выводить это количество на экран.
 */


import java.util.Scanner;

public class BrokenOrder {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int a = in.nextInt();
        int[] mas = new int[a];

        for (int i = 0; i != mas.length; i++) {
            mas[i] = in.nextInt();
        }

        int k = 0;
        for (int i = 1; i != mas.length; i++) {
            if (mas[i - 1] > mas[i]) {
                k++;
            }
        }
        System.out.println(k);
    }
}
