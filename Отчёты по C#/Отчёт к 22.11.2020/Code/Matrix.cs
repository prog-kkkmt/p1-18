using System;

class Program
{
    static void Main()
    {
        int[,] matrix = new int[10, 7];

        Random random = new Random();

        for (int y = 0; y < matrix.GetLength(0); y++)
            for (int x = 0; x < matrix.GetLength(1); x++)
                matrix[y, x] = random.Next(10);

        foreach (int item in matrix) Console.WriteLine(item);

        int[][] mArray = new int[3][];

        for (int i = 0; i < mArray.Length; i++)
            mArray[i] = new int[i + 3];

        for (int i = 0; i < mArray.Length; i++)
        {
            for (int j = 0; j < mArray.Length; j++)
            {
                mArray[i][j] = random.Next(100);
            }
        }

        for (int i = 0; i < mArray.Length; i++)
        {
            for (int j = 0; j < mArray[i].Length; j++)
            {
                Console.Write(mArray[i][j] + "\t");
            }

            Console.WriteLine();
        }
    }
}
