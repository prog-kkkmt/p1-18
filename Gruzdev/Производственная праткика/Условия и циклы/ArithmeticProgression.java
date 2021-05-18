/*
Задание: https://stepik.org/lesson/90684/step/16?unit=66912

Программа получает на вход число N, необходимо вывести сумму всех чисел от 1 до N.

N не превосходит 10^9

 */

import java.util.Scanner;

public class ArithmeticProgression {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        long sum = 0;
        for (int i = 1; i <= n; i++)
            sum += i;
        System.out.print(sum);
    }
}
