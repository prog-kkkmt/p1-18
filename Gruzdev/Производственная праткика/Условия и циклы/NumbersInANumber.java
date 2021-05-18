/*
Задание: https://stepik.org/lesson/90684/step/13?unit=66912

Дано число, необходимо вывести два числа через пробел.
Первое число - количество нечетных цифр данного числа,
 второе число - произведение четных цифр данного числа.
  Если четных цифр в числе нет - произведение 0.
 */
import java.util.Scanner;

public class NumbersInANumber {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int mul4et = 1, sumNe4et = 0;
        while(a > 0){
            if(a % 2 != 0)
                sumNe4et += 1;
            else mul4et *= a % 10;
            a /= 10;
        }
        if(mul4et == 1)
            mul4et = 0;
        System.out.printf("%d %d", sumNe4et, mul4et);
    }
}
