using System;

class Program
{
    static void Main()
    {
        int[] array = { 1, 2, 3, 4, 5 };

        int[] cpArray = array[..];          //  Copy All Elems.

        foreach(var i in cpArray)
        {
            Console.Write(i);
        }

        cpArray[^1] = array[0];             //  Copy First Elem From array And Paste It In Last Elem Of cpArray(^1 - last elem).

        Console.WriteLine();

        int[] cpArray2 = array[1..^1];      //  Copy Elems From array: From Second(1) To Last (^1).

        foreach (var i in cpArray2)
        {
            Console.Write(i);
        }

        //  If u wrote [0..], or [..^1], or [..] - it mean from first to last elem.
        //  Like u wrote [0..^1]. It mean that if u forgot,
        //  or intentionally (специально) didn't write something before, or after dots -
        //  - it take extreme indexes (крайние индексы) / extreme elems.
    }
}
