/*
Задание: https://stepik.org/lesson/90684/step/14?unit=66912

Дана некоторая последовательность целых чисел. Необходимо вывести минимум этой последовательности.

 */

import java.util.Scanner;

public class Min {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt(), min = a;
        while(sc.hasNext()){
            a = sc.nextInt();
            if(a < min)
                min = a;
        }
        System.out.print(min);
    }
}
