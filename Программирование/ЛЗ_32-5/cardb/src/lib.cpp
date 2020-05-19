#include "lib.h"
#include <string>
#include <string.h>
#include <array>
#include <fstream>
#include <iostream>
#include <iomanip>
#include <algorithm>
#include <exception>

bool skipBOM(std::istream & in)
{
    char test[4] = {0};
    in.read(test, 3);
    if (strcmp(test, "\xEF\xBB\xBF") == 0)
        return true;
    in.seekg(0);
    return false;
}

db_type load(std::string path)
{
    std::ifstream f(path);
    if (f.fail())
    {
        throw std::runtime_error("Could not open file "+path);
    }
    skipBOM(f);

    db_type table = db_type();
    std::string date;
    for (int i=0; !f.eof(); i++)
    {
        table.resize(i+1);
        f >> date >> table[i].name >> table[i].price;

        std::cout << "Loading: " << date << " " << table[i].name << " " << table[i].price << std::endl;
		strptime(date.c_str(), "%d.%m.%Y", &table[i].date);
        // perror("PARSE ERROR");
    }
    f.close();

    std::cout << table.size() << " items loaded." << std::endl;

    return table;
}


void save(std::string path, db_type table)
{
    std::ofstream f(path);
    // if (f.fail())
    // {
    //     throw std::runtime_error("Could not open file "+path);
    // }
    for (carinfo ci : table)
    {
        f << std::put_time(&(ci.date), "%d.%m.%Y") << " " << ci.name << " " << ci.price << std::endl;
    }
    f.close();
}


void sort_db(db_type* table)
{
    std::sort(table->begin(), table->end(), 
        [](carinfo &a, carinfo &b) -> bool {return mktime(&a.date) < mktime(&b.date);});
}

