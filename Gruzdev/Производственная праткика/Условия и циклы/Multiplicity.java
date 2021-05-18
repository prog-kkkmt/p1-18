/*
Задание: https://stepik.org/lesson/90684/step/12?unit=66912

Дано число, необходимо вывести все кратности данного числа через пробел, включая единицу и само число.
 */

import java.util.Scanner;

public class Multiplicity {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        for(int i = 1; i <= n; i++)
            if(n % i == 0)
                System.out.print(i == n ? i : i + " ");
    }
}
