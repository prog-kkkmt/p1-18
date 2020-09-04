#include <stdio.h>
#include <stdlib.h>

int main()
{
    int word;
    int command;
while (command != 5) {
    FILE *f;
    printf("\nMain menu.\n1. Add.\n2. Read.\n3. Delete.\n4. Save.\n5. Exit & Save.\n");
    printf("> ");
    scanf("%d", &command);
    if (command == 1) {
        f = fopen("C:\\Users\\p1-18\\Desktop\\Программа меню\\file.txt", "a");
        printf("Enter number: ");
        scanf("%d", &word);
        fprintf(f, "%d", word);
        continue;
    }
    else if (command == 2) {
        char st1[100];
        f = fopen("C:\\Users\\p1-18\\Desktop\\Программа меню\\file.txt", "r");
        fgets(st1, 100, f);
        printf("%s", st1);
        fclose(f);
        continue;
    }
    else if (command == 3) {
        f = fopen("C:\\Users\\p1-18\\Desktop\\Программа меню\\file.txt", "w");
       continue;
    }
    else if (command == 4) {
        f = fopen("C:\\Users\\p1-18\\Desktop\\Программа меню\\file.txt", "a");
        fclose(f);
        continue;
    }
    return 0;
}
}
