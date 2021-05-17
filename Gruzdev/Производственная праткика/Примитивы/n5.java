/*
Задание: https://stepik.org/lesson/90682/step/9?unit=66910

Сколько раз из первого числа можно вычесть второе число?

*/

import java.util.Scanner;

public class n5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();

        System.out.print(a / b);
    }
}
