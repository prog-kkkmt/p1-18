/*
Задание: https://stepik.org/lesson/90684/step/10?unit=66912

?Вводится число N, N не превосходит 10.000.

Необходимо вывести N открытых квадратных скобок [, после чего столько же закрытых.
 */

import java.util.Scanner;

public class Brackets {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        for(int i = 0; i < a*2; i++)
            System.out.print(i < a ? "[" : "]");
    }
}
