/*
Задание: https://stepik.org/lesson/90682/step/8?unit=66910

Необходимо вывести остаток от деления первого числа на второе
 */

import java.util.*;

public class n4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        long a = sc.nextLong();
        long c = sc.nextLong();

        System.out.print(a % c);
    }
}
