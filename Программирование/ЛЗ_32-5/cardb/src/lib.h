#include <string>
#include <vector>

struct carinfo
{
    tm date;
    std::string name;
    int price;

    carinfo()
    {
        this->date = {0};
    }
};

using db_type = std::vector<carinfo>;

db_type load(std::string path);
void save(std::string path, db_type table);

void sort_db(db_type* table);