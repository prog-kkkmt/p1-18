/* Case1.
 * Дано целое число в диапазоне 1–7.
 * Вывести строку — название дня недели,
 * соответствующее данному числу
 * (1 — «понедельник», 2 — «вторник» и т. д.).
 */

/*string[] Week = { "Monday", "Tuesday", "Wednesday", "Thursday", "Fryday", "Saturday", "Sunday" };

        int numOfWeek;

        numOfWeek = int.Parse(Console.ReadLine());

        Console.WriteLine(Week[numOfWeek - 1]);*/



/* Case10°.
Робот может перемещаться в четырех направлениях
(«С» — север, «З» — запад, «Ю» — юг, «В» — восток)
и принимать три цифровые команды:
0 — продолжать движение,
1 — поворот налево,
−1 — поворот направо.
Дан символ C — исходное направление робота
и целое число N — посланная ему команда.
Вывести направление робота после выполнения полученной команды.
*/

/*char direction = '0';

        char[] dirCont = { 'С', 'З', 'Ю', 'В' };

        Console.WriteLine();

        ConsoleKey consoleKey;

        int iDir = 1;

        int changeDir = int.Parse(Console.ReadLine());

        while (changeDir == 0 || changeDir == 1 || changeDir == -1)
        {
            iDir += changeDir;

            iDir =   (iDir > 4) ? iDir %= 4 : iDir;
            iDir =   (iDir < 1) ? iDir %= 4 : iDir;
            iDir =   (iDir < 0) ?     -iDir : iDir;
            iDir =  (iDir == 0) ?         4 : iDir;

            changeDir = int.Parse(Console.ReadLine());
        }

        direction = dirCont[iDir - 1];

        Console.WriteLine(direction);*/



using System;

class Program
{
    static void Main(string[] args)
    {
        
    }
}
