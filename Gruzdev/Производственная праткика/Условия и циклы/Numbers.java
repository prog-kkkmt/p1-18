/*
�������: https://stepik.org/lesson/90684/step/11?unit=66912

��������� �������� �� ���� ����������� ����� N, ��� ��� N �� ����������� 1000

��������� ������ ������� ��� ����� �� 1 �� N ����� ������, ������� �������.

���� N = 1, ���������� ������� ���� 1!
 */

import java.util.Scanner;

public class Numbers {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        for(int i = 1; i <= n; i++)
            System.out.print(i < n ? i + " " : i);
    }
}
