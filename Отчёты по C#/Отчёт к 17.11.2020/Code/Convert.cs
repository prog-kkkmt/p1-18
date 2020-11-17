using System;

namespace ConsoleApp5
{
    class Program
    {
        static void Main(string[] args)
        {
            string str;
            int a, b, c;

            Console.Write("Введите первое число: ");

            str = Console.ReadLine();
            a = Convert.ToInt32(str);

            Console.Write("Введите второе число: ");

            str = Console.ReadLine();
            b = Convert.ToInt32(str);

            Console.Write("Введите третье число: ");

            str = Console.ReadLine();
            c = Convert.ToInt32(str);
                
            Console.WriteLine();

            Console.WriteLine("Произведение введённых чисел: " + (a * b * c));

            Console.WriteLine();

            Console.WriteLine("Сумма введённых чисел: " + (a + b + c));
        }
    }
}
