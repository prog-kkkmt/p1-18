/*
Задание: https://stepik.org/lesson/90685/step/9?unit=66913

Дано натуральное число N, далее следуют N целых чисел. ?

Необходимо вывести на консоль отсортированную последовательность.

 */


import java.util.Arrays;
import java.util.Scanner;

public class SortToUp {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int a = in.nextInt();
        int[] mas = new int[a];

        for (int i = 0; i != mas.length; i++) {
            mas[i] = in.nextInt();
        }
        Arrays.sort(mas);
        for (int i = 0; i != mas.length; i++) {
            System.out.print(mas[i] + " ");
        }
    }
}
