using System;

class Program
{
    static void ChangeElemOfArray(int value)
    {
        value = -value / 2;
    }

    static void ChangeElemOfArray(int[] array, int index)
    {
        array[index] = -array[index] / 2;
    }

    static void Main()
    {
        int[] array = { 5, 18, 0, 101, 89 };

        ChangeElemOfArray(array[1]);	//  Value

        Console.WriteLine(array[1]);    //  18

        ChangeElemOfArray(array, 1);	//  Reference

        Console.WriteLine(array[1]);    //  -9
    }
}
