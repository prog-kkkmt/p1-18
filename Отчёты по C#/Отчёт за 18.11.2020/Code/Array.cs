//using System.Linq;

/* Initialisation:
* int[] array;
* int[] array = new int[5];
* int[] array = mew int[] { 7, 14, 11, 105, 37 };
* int[] array = Enumerable.Range(4, 5).ToArray(); ----> (array { 4, 5, 6, 7, 8 })
* int[] array = Enumerable.Repeat(5, 10).ToArray(); ----> (array { 5, 5, 5, 5, 5, 5, 5, 5, 5, 5})
*/

/* Methods:
 * 
 */

using System;
using System.Linq;

class Program
{
    static void Main()
    {
        int[] array = { 7, 14, 11, 14, 105, 37, 11 };

        Console.Write("Array: ");
        Console.Write("{ ");
        foreach (int i in array)
        {
            Console.Write(i + " ");
        }

        Console.WriteLine(" }" + '\n');

        Console.WriteLine("MinArray: " + array.Min() + '\n');

        Console.WriteLine("MaxArray: " + array.Max() + '\n');

        Console.WriteLine("LenArray: " + array.Length + '\n');

        Console.WriteLine("SumArray: " + array.Sum() + '\n');

        int[] uniqueElems = array.Distinct().ToArray();

        Console.Write("UniqueElemsOfArray: ");
        Console.Write("{ ");
        foreach(int i in uniqueElems)
        {
            if (i == uniqueElems[^1])
                Console.Write(i);

            else
                Console.Write(i + ", ");
        }
        Console.WriteLine(" }" + '\n');

        Array.Sort(array);

        Console.Write("SortArray: ");
        Console.Write("{ ");
        foreach (int i in array)
        {
            if (i == array[^1])
                Console.Write(i);

            else
                Console.Write(i + ", ");
        }
        Console.WriteLine(" }" + '\n');

        Console.WriteLine("SumOfEvenElems: " + array.Where(i => i % 2 == 0).Sum() + '\n');

        Console.WriteLine("MinOfOddElems: " + array.Where(i => i % 2 != 0).Min() + '\n');

        array = array.OrderBy(i => i).ToArray();

        Console.Write("[x1 < x2]: ");
        Console.Write("{ ");
        foreach (int i in array)
        {
            if (i == array[^1])
                Console.Write(i);

            else
                Console.Write(i + ", ");
        }
        Console.WriteLine(" }" + '\n');

        array = array.OrderByDescending(i => i).ToArray();

        Console.Write("[x1 > x2]: ");
        Console.Write("{ ");
        foreach (int i in array)
        {
            if (i == array[^1])
                Console.Write(i);

            else
                Console.Write(i + ", ");
        }
        Console.WriteLine(" }" + '\n');

        Console.WriteLine("FirstElemOfArray(i < 70): " + Array.Find(array, i => i < 70) + '\n');

        Console.WriteLine("LastElemOfArray(i < 70): " + Array.FindLast(array, i => i < 70) + '\n');

        Console.Write("AllElemsOfArray(i < 70): ");
        Console.Write("{ ");

        int[] SmallerThan70 = Array.FindAll(array, i => i < 70);

        foreach (int i in SmallerThan70)
        {
            if (i == SmallerThan70[^1])
                Console.Write(i);

            else
                Console.Write(i + ", ");
        }
        Console.WriteLine(" }" + '\n');

        Console.WriteLine("    IndexOfElem(i = 14): " + Array.FindIndex(array, i => i == 14) + '\n');
        Console.WriteLine("LastIndexOfElem(i = 14): " + Array.FindLastIndex(array, i => i == 14) + '\n');

        Console.Write("       Array: ");
        Console.Write("{ ");
        foreach (int i in array)
        {
            if (i == array[^1])
                Console.Write(i);

            else
                Console.Write(i + ", ");
        }
        Console.WriteLine(" }" + '\n');

        Console.Write("ArrayReverse: ");

        Array.Reverse(array);
        Console.Write("{ ");
        foreach (int i in array)
        {
            if (i == array[^1])
                Console.Write(i);

            else
                Console.Write(i + ", ");
        }
        Console.WriteLine(" }" + '\n');
    }
}
