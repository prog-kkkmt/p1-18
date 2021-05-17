import java.util.Scanner;
/*
Задание: https://stepik.org/lesson/90682/step/6?unit=66910

Вводятся две букв необходимо вывести сумму кодов этих букв
*/


public class n2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = (int) sc.next().charAt(0);
        int b = (int) sc.next().charAt(0);
        int sum = a + b;
        System.out.println(sum);
    }
}
