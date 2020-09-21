/**Дан массив A размера N и целое число K (1 ≤ K ≤ N).
Преобразовать массив, увеличив каждый его элемент на исходное значение элемента AK.


*/
#include <stdio.h>
#include <stdlib.h>



int main()
{
    int n, i, temp, k;
    scanf("%d %d", &n, &k);
    int a[n]; int b[n];
    for (i = 0; i < n; i++)
    {
        scanf("%d", &a[i]);
    }
    --k;
    for (i = 0; i < n; i++)
    {
        a[i] = a[i] + a[k];
        printf("%d ", a[i]);
    }
    return 0;
}
