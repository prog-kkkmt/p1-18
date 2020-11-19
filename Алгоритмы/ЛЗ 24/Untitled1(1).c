#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define LEN 101

struct struct_set
{
    char set[LEN];
};

int main()
{
    char temp_string[LEN];
    int length_set = 0, i, nc = 0;
    struct struct_set struc_set[LEN];
    int n;
    scanf("%d", &n);
    for (i = 0; i < n; ++i)
    {
        scanf("%s", &struc_set[i].set);
        if (length_set == 0)
        {
            ++length_set;
            sprintf(temp_string, "%s",  struc_set[i].set);
        }
        else
        {
            //printf("%s %s\n", struc_set[length_set].set, temp_string);
            if (strcmp(struc_set[length_set].set, temp_string) == 0)
            {
                *struc_set[length_set].set = '\0';
                --length_set;
                printf("Remove equal element\n");
            }
            else
            {
                int j; nc = 0;
                for (j = 0; j < length_set - 1; ++j)
                {
                    //printf("%s %s\n", struc_set[length_set].set, struc_set[j].set);
                    if (strcmp(struc_set[length_set].set, struc_set[j].set) == 0)
                    {
                        *struc_set[length_set].set = '\0';
                        ++nc;
                        --length_set;
                        printf("Remove equal element\n");
                        break;
                    }
                }
            }
            if (nc == 0)
            {
                ++length_set;
            }
        }

    }
    for (i = 0; i < length_set; ++i)
    {
        printf("%s ", struc_set[i].set);
    }
    //printf("\n%d", length_set);
    return 0;
}
