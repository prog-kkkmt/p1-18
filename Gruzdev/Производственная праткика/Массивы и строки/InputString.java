/*
Задание: https://stepik.org/lesson/90685/step/12?unit=66913

Программа получает на вход строку из 2 слов, разделенных пробелом.

Необходимо вывести слово, меньшее в лексикографическом порядке.
 */


import java.util.Scanner;

public class InputString {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        String s1 = in.next();
        String s2 = in.next();

        for (int i = 0, j = 0; i != s1.length() && j != s2.length(); i++, j++) {
            if (s1.charAt(i) != s2.charAt(j)) {
                if (s1.charAt(i) > s2.charAt(j)) {
                    System.out.println(s2);
                    break;
                }
                else {
                    System.out.println(s1);
                    break;
                }
            }
        }
    }
}
