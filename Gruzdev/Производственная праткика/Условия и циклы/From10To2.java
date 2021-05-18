/*
«адание: https://stepik.org/lesson/90684/step/15?unit=66912

?¬водитс€ одно целое число в дес€тичной системе счислени€, необходимо вывести данное число в двоичной системе счислени€.
 */

import java.util.Scanner;

public class From10To2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        String str = "", result = "";
        while(a > 0){
            if(a % 2 == 0)
                str += 0;
            else str += 1;
            a /= 2;
        }
        for(int i = str.length()-1; i >= 0; i--)
            result += str.charAt(i);
        System.out.print(result);
    }
}
