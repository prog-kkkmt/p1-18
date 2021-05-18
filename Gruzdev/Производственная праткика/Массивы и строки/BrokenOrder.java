/*
�������: https://stepik.org/lesson/90685/step/8?unit=66913

?���� ����� ����� N, �� ������������� 1000. ����� ������� N ����� �����.

������� ������� �����, ����� ����� ���� �������� ��������� ������� ����� ������� ������ �������.

��������� ������ ������� ���������� ���������� �������� � ������� � �������� ��� ���������� �� �����.
 */


import java.util.Scanner;

public class BrokenOrder {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int a = in.nextInt();
        int[] mas = new int[a];

        for (int i = 0; i != mas.length; i++) {
            mas[i] = in.nextInt();
        }

        int k = 0;
        for (int i = 1; i != mas.length; i++) {
            if (mas[i - 1] > mas[i]) {
                k++;
            }
        }
        System.out.println(k);
    }
}
