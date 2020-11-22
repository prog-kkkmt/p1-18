using System;

class Program
{
    /// <summary>
    /// Сумма двух целых чисел.
    /// </summary>
    /// <param name="a"></param>
    /// <param name="b"></param>
    /// <returns></returns>
    static int sum(int a, int b)
    {
        return a + b;
    }

    static void Main()
    {
        Console.WriteLine(sum(5, 7));
    }
}
