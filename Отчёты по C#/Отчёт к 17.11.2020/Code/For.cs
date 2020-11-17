using System;

namespace For
{
    class Program
    {
        static void Main(string[] args)
        {
            int a = int.Parse(Console.ReadLine());

            for (; ; )
            {
                if (a >= 10)
                    break;
                else
                {
                    Console.WriteLine(++a);
                }
            }
        }
    }
}
