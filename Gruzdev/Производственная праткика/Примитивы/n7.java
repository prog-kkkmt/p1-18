/*
Задание: https://stepik.org/lesson/90682/step/11?unit=66910

Знаменатель дроби всегда равен 3.
Все числа кроме кратных 3 образуют бесконечные
 периодические дроби. Вам необходимо написать программу,
  которая будет округлять в большую сторону
   результат деления числа N на 3.

На вход программа получает натуральное число N,
при чем N не превосходит 10^18


Вывести результат деления на 3, округленный в большую сторону.

Например 1,1112 = 2
 */


import java.util.Scanner;

public class n7 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        long a = sc.nextLong();

        System.out.print( (a % 3) != 0 ? (a / 3) + 1 : a / 3);
    }
}
