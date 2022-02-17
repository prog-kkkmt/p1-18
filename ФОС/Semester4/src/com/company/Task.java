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
        boolean found = false;
        int prois = 1, num = -1;
        Scanner scan = new Scanner(System.in);
        String str; // = scan.nextLine();
        while (!((str = scan.nextLine()).equals("СТОП")))
        {
            num = Integer.parseInt(str);
            if (num != 0) {
                prois *= num;
                found = true;
            }
            // str = scan.nextLine();
        }
        if (found) {
            System.out.println(prois);
        }
        else
        {
            System.out.println("Не найдено");
        }
    }
    public static void task9()
    {
        Scanner scan = new Scanner(System.in);
        int a = scan.nextInt(), b = scan.nextInt(), prois = 1;
        for (int i = a; i <= b; ++i) {
            prois *= i;
        }
        System.out.println(prois);
    }
    public static void task10()
    {
        Scanner scan = new Scanner(System.in);
        int a = scan.nextInt(), b = scan.nextInt();
        for (int i = b; i >= a; i-=2) {
            System.out.println(i);
        }
    }
    public static void task11()
    {
        Scanner scan = new Scanner(System.in);
        int nArr1 = scan.nextInt();
        int[] arr1 = fillArray(nArr1);

        int nArr2 = scan.nextInt();
        int[] arr2 = fillArray(nArr2);

        int a = scan.nextInt();
        int b = scan.nextInt();

        int tmp = arr1[a];
        arr1[a] = arr2[b];
        arr2[b] = tmp;

        print(arr1);
        print(arr2);
    }
    public static int[] fillArray(int n) {
        Scanner scan = new Scanner(System.in);
        int[] arr = new int[n];
        for (int i = 0; i < n ; ++i) {
            arr[i] = scan.nextInt();
        }
        return arr;
    }
    public static int[][] fillMatrix(int n, int m) {
        Scanner scan = new Scanner(System.in);
        int [][] matrix = new int[n][m];
        for (int i = 0; i < n ; ++i)
        {
            for (int j = 0; j < n ; ++j) {
                matrix[i][j] = scan.nextInt();
            }
        }
        return matrix;
    }
    private static void print(int[] arr) {
        System.out.println(Arrays.toString(arr));
    }
    private static void task12()
    {
        Scanner scan = new Scanner(System.in);
        int n = scan.nextInt();
        int[] arr = fillArray(n);
        for (int i = 1; i < n; ++i) {
            System.out.println(arr[i - 1] + arr[i]);
        }
    }
    private static void task13()
    {
        Scanner scan = new Scanner(System.in);
        int n = scan.nextInt(), m = scan.nextInt();
        int [][] matrix = fillMatrix(n, m);
        int minIndi = 0, minIndj = 0;
        for (int i = 0; i < n; ++i)
        {
            for (int j = 0; j < m; ++j)
            {
                if (matrix[i][j] < matrix[minIndi][minIndj]) {
                    minIndi = i;
                    minIndj = j;
                }
            }
        }
        System.out.print(minIndi + " " + minIndj);
    }
    private static void task14()
    {
        Scanner scan = new Scanner(System.in);
        int n = scan.nextInt();
        int[] arr = fillArray(n);
        for (int i = 0; i < n; i+=2) {
            System.out.println(arr[i]);
        }
    }
}
