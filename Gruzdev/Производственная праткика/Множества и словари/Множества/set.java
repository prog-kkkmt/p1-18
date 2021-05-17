/*
Задание: https://stepik.org/lesson/98411/step/11?unit=74237

Программа получает на вход N целых чисел - штрафные баллы
 i-ого участника и К - мощность множества
  (количество элементов в нем).

Необходимо выбрать К - элементное множество из уникальных
 по величине штрафных баллов. Необходимо вывести множество
  с минимальной суммой в порядке возрастания штрафных баллов
   через пробел или -1, если такое множество получить нельзя.



*/

import java.util.Scanner;
import java.util.TreeSet;

public class set {
    public static void main(String[] args) {
        TreeSet<Integer> set = new TreeSet<>();

        Scanner in = new Scanner(System.in);
        int n1 = in.nextInt();
        int n2 = in.nextInt();
        for (int i = 0; i != n1; i++) {
            set.add(in.nextInt());
        }

        if (n2 > set.size()) {
            System.out.println("-1");
        } else {
            for (int i = 0; i != n2; i++) {
                System.out.print(set.pollFirst() + " ");
            }
        }
    }
}
