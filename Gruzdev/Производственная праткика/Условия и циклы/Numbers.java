/*
Задание: https://stepik.org/lesson/90684/step/11?unit=66912

Программа получает на вход натуральное число N, при чем N не превосходит 1000

Программа должна вывести все числа от 1 до N через пробел, включая границы.

Если N = 1, необходимо вывести одну 1!
 */

import java.util.Scanner;

public class Numbers {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        for(int i = 1; i <= n; i++)
            System.out.print(i < n ? i + " " : i);
    }
}
