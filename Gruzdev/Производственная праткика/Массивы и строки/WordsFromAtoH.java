/*
�������: https://stepik.org/lesson/90685/step/13?unit=66913

?�������� ���� ������ �������. ���������� ������� �� ����� ������ ������, ������� ���������� � ����� �� ��������� �� a �� h.

������ ��������� ������������ ���� � �������� �� ������� �� �������. ����� ����� ���� ��� � �������, ��� � ������ ��������.

�������� ����� ���������� ������ ��� � ����� ������.
 */

import java.util.Scanner;

public class WordsFromAtoH {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        String str = in.nextLine();
        String[] ss = str.split(" ");
        for (int i = 0; i < ss.length; i++) {
            if (ss[i].charAt(0) >= 'a' && ss[i].charAt(0) <= 'h' || ss[i].charAt(0) >= 'A' && ss[i].charAt(0) <= 'H') {
                System.out.println(ss[i]);
            }
        }
    }
}
