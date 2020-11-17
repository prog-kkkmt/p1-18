#include <stdio.h>
#include <string.h>
#define LEN 101

/**
Param41. Описать процедуру SplitStr(S, W, N), которая формирует
по данной строке S массив W слов, входящих в S (массив W и его размер N являются
выходными параметрами).
Словом считается набор символов, не содержащий пробелов и ограниченный пробелами
или началом/концом строки; предполагается, что строка S содержит не более 10 слов.
Используя функцию SplitStr, найти количество слов N, содержащихся в данной строке S,
и сами эти слова.
*/

void SplitStr(char *string, char *words, int len_string)
{
    int i, count_word = 1, nc = 0, index_for_string = 0;
    if (words[len_string - 2] == ' ') // проверяет нет ли в конце строки пробела
        --count_word;
    for (i = 0; words[i] != '\0'; ++i)
    {
        if (words[i] != ' ') // записываем в string все буквы
        {
            nc = 0;
            string[index_for_string] = words[i];
            ++index_for_string; // увеличиваем индекс string
        }
        else if (words[i] == ' ' && nc == 0 && i != 0) //учитывается слуай когда перед строкой стоит пробел
        {// также записывается только первый пробел
            ++nc; // контроль, что будет записан только один пробел
            ++count_word; // считаем кол-во слов посредством пробелов
            string[index_for_string] = words[i];
            ++index_for_string; // увеличиваем индекс string
        }
    }
    printf("%d\n%s", count_word, string);
}

int main()
{
    char words[LEN];
    char string[LEN];
    fgets(words, LEN, stdin);
    int len_string = strlen(words);
    SplitStr(string, words, len_string);
    return 0;
}
