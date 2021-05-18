/*
�������: https://stepik.org/lesson/90685/step/10?unit=66913

������ ����� ������� ������������������ ������ ������ ��������� �������, ��� ������ ��������� ������� ������ �����������.

��� ������������������ 1 2 3 1 2 5 7 1 2 1 2, ���������� ������������ �����: 1 2 3, 1 2 5 7, 1 2, 1 2 ������� ����� ���� 1 2 5 7

��� ������������������ 1 2 3 1 2 5 1 2 7, ���������� ����� 1 2 3, 1 2 5, 1 2 7 ������� ����� ��� �����, ��� ��� ��� ������ �����

������ ������� ������:

���� ����������� ����� N, ����� ������� N ����� �����.

������ �������� ������:

� ������ ������ �������� ����� ������������� �����

����� �������� ���������� �����/������, �������� �������� ����� ��������, ������ ���� � ����� ������
 */

import java.util.Scanner;

public class Slice {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int a = in.nextInt(), maxx = 1;
        int[] mas = new int[a];

        for (int i = 0; i != mas.length; i++) {
            mas[i] = in.nextInt();
        }

        int k = 1;
        for (int i = 0; i != mas.length - 1; i++) {
            if (mas[i] < mas[i + 1]) {
                k++;
            } else {
                k = 1;
            }
            if (k > maxx) {
                maxx = k;
            }
        }

        System.out.println(maxx);

        for (int i = 0; i != mas.length; i++) {
            if (i == mas.length - 1) {
                if (mas[i] > mas[i - 1]) {
                    System.out.print(mas[i]);
                }
            }
            else if (mas[i] < mas[i + 1]) {
                System.out.print(mas[i] + " ");
                if ((i + 2 != mas.length) && mas[i + 1] > mas[i + 2]) {
                    System.out.print(mas[i + 1] + " \n");
                    i++;
                }
            }
        }
    }
}
