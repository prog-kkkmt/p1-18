package com.company;

import java.util.Scanner;

public class Task {
    public static void task1()
    {
        System.out.print("Hello ");
        System.out.print("Programming!");
    }
    public static void task2(int width, int height)
    {
        System.out.println("Площадь прямоугольника: " + width * height);
        System.out.println("Периметор прямоугольника: " + width + height + width + height);
    }
    public static void task3()
    {
        Scanner scan = new Scanner(System.in);
        String str1 = scan.nextLine();
        String str2 = scan.nextLine();
        String str3 = scan.nextLine();
        if (strcmp(str1, str2) || strcmp(str2, str3) || strcmp(str1, str3)) {
            System.out.println("Yes");
        } else {
            System.out.println("No");
        }
    }
    private static boolean strcmp(String str1, String str2)
    {
        if (str1.length() != str2.length())
            return false;
        int len = str1.length();
        for (int i = 0, j = 0; i < len && j < len; ++i, ++j) {
            if (str1.charAt(i) != str2.charAt(j))
                return false;
        }
        return true;
    }
    public static void task4()
    {
        Scanner scan = new Scanner(System.in);
        double x = scan.nextDouble();
        double y = scan.nextDouble();
        if ((3.0 * x) > y && (2.0 * x) < y) {
            System.out.println("Yes");
        } else {
            System.out.println("No");
        }
    }
    public static void task5()
    {
        Scanner scan = new Scanner(System.in);
        int horse_x1 = scan.nextInt();
        int horse_y1 = scan.nextInt();
        int enemy_figur_x1 = scan.nextInt();
        int enemy_figur_y1 = scan.nextInt();
        if (Math.abs(horse_x1 - enemy_figur_x1) * Math.abs(horse_y1 - enemy_figur_y1) == 2) {
            System.out.println("Yes");
        } else {
            System.out.println("No");
        }
    }
    public static void task6(int n)
    {
        int sum = 0;
        for (int i = 1; i <= n; ++i) {
            sum += i;
        }
        System.out.println(sum);
    }
    public static void task7()
    {
        int sum = 0, num;
        Scanner scan = new Scanner(System.in);
        while (scan.hasNext())
        {
            num = scan.nextInt();
            if (num != 0) {
                sum += num;
            } else {
                break;
            }
        }
    }
    public static void task8()
    {
        int prois = 1, num;
        Scanner scan = new Scanner(System.in);
        while (true) {
            if (scan.hasNextInt()) {
                num = scan.nextInt();
                if (num != 0)
                    prois *= num;
            }
            else if (scan.hasNextLine()) {
                String str = scan.nextLine();
                if (str.equals("СТОП")) {
                    break;
                }
            }
        }
        System.out.println(prois);
    }
}
