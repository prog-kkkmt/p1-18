/* If30.
 * Дано целое число, лежащее в диапазоне 1–999.
 * Вывести его строку-описание вида
 * «четное двузначное число», «нечетное трехзначное число»
 * и т. д.
 */

using System;

class Program
{
    static void Main(string[] args)
    {
        int num = int.Parse(Console.ReadLine());

        bool isEven = false;

        if (num >= 1 && num <= 999)
        {
            isEven = (num % 2 == 0);

            if (num > 9)
            {
                if (num > 99)
                {
                    if (isEven) Console.WriteLine("Чётное " + "Трёхзначное");

                    else        Console.WriteLine("Нечётное " + "Трёхзначное");
                }

                else
                {
                    if (isEven) Console.WriteLine("Чётное " + "Двузначное");
                    
                    else        Console.WriteLine("Нечётное " + "Двузначное");
                }
            }

            else
            {
                if (isEven) Console.WriteLine("Чётное");
                else        Console.WriteLine("Нечётное");
            }
        }
    }
}
