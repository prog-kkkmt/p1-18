#include <iostream>
#include <vector>
#include <string>
/**
Àëåêñàíäð Ñìàëü, Ìèõàèë Êðèíêèí
Ëèïïìàí, Ñòåíëè Á., Ëàæîéå, Æîçè, Ìó, Áàðáàðà Ý.
Ïðî÷èòàéòå íåêîòîðûé òåêñò, ñîõðàíÿÿ êàæäîå ââåäåííîå ñëîâî êàê îòäåëüíûé ýëåìåíò âåêòîðà.
Ïðåîáðàçóéòå ñèìâîëû êàæäîãî ñëîâà â ïðîïèñíûå.
Îòîáðàçèòå ïðåîáðàçîâàííûå ýëåìåíòû âåêòîðà, âûâîäÿ ïî âîñåìü ñëîâ â ñòðîêå.
Ìèòþøèí Ï¸òð
*/

int main()
{
    int i, j = 0;
    std::string word;
    std::vector <std::string> array_string;
    while (std::cin >> word)
    {
        for (i = 0; i < word.length(); ++i)
        {
            word[i] = toupper(word[i]);
        }
        array_string.push_back(word);
        ++j;
        if (j == 8)
        {
            for (int v = 0; v < i; ++v)
            {
                std::cout << array_string[v] << std::endl;
            }
            j = 0;
        }
    }
    return 0;
}
