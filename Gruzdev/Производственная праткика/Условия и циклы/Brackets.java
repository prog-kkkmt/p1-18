/*
�������: https://stepik.org/lesson/90684/step/10?unit=66912

?�������� ����� N, N �� ����������� 10.000.

���������� ������� N �������� ���������� ������ [, ����� ���� ������� �� ��������.
 */

import java.util.Scanner;

public class Brackets {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        for(int i = 0; i < a*2; i++)
            System.out.print(i < a ? "[" : "]");
    }
}
