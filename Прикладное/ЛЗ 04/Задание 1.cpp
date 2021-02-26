void rotate(int a[], unsigned size, int shift)
{
    int temp = 0, temp2;
    while (shift > 0)
    {
        temp = a[size-1];
        a[size-1] = a[0];
        for (int i = size - 2; i >= 0; --i)
        {
            temp2 = a[i];
            a[i] = temp;
            temp = temp2;
        }
        --shift;
    }
}
