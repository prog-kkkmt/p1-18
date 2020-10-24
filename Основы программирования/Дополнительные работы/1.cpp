/* Сделал Роголев В.А. Группы П1-18
 разработал:
> класс для описания элемента и его свойств;
> класс для описания набора и его свойств;
> методы работы с элементом и с набором для перечисленных операций;
    - установка стартового индекса, получение диапазона индексов;
    - заполнение набора случайными значениями;
    - получение и изменение элемента набора по индексу;
> дефолтный, копирующий, параметрический конструкторы для создания
экземпляров набора и экземпляров элемента;
> интерфейс для редактирования элемента и интерфейс для редактирования
набора, отображения и изменения их свойств.

Ознакомлен с концепциями инкапсуляции и модульности. Изучил
приемы работы с классами, конструкторами и деструкторами, разработал
интерфейс методов класса, создал и работал с экземплярами класса.
Освоил принцип «класс-элемент — класс-набор».

Элемент: время в формате h-часы, m-минуты, s-секунды.

Интерфейс и все классы реализуются в одном модуле.
Для редактирования элемента разработана функция ModifyElement(),
которая получает ссылку на экземпляр элемента и предоставляет интерактивный
консольный интерфейс для работы с ним. Для редактирования набора
разработана функция ModifyPalette(), которая получает ссылку на
экземпляр набора и предоставляет интерактивный консольный интерфейс
для работы с ним. Функция Main() запрашивает количество элементов,
создаѐт экземпляр набора параметрическим конструктором и вызывает
функцию ModifyPalette(), которая использует ModifyElement().
Использованы
библиотеки <iostream> и <cstdlib>.
*/

#include <iostream>
#include <cstdlib>
using namespace std;
/* Класс реализует элемент «Время в формате HH:MM:SS»
*/
class Time
{
private:
    union
    {
        unsigned long number; // упакованное значение времени
        struct   // структура компонент времени:
        {
            unsigned hours: 8; // Часы
            unsigned minutes: 8; // Минуты
            unsigned seconds: 8; // Секунды
        } components; // компоненты
    } time; // внутреннее представление времени
protected:
// Проверка значения компонента Времени
    int accurateValue(int value)
    {
        return ((value < 0) ? 0 : (value > 60) ? 0 : value);
    }
    int accurateValueH(int value)
    {
        return ((value < 0) ? 0 : (value > 24) ? 0 : value);
    }
public:
// Дефолтный конструктор
    Time()
    {
        time.number = 0;
    }
// Копирующий конструктор
    Time(const Time& obj)
    {
        time.number = obj.time.number;
    }
// Параметрический конструктор
    Time(int hours, int minutes, int seconds)
    {
        setHours(hours);
        setMinutes(minutes);
        setSeconds(seconds);
    }
// Установка компонент времени
    void setHours(int hours)
    {
        time.components.hours = accurateValue(hours);
    }
    void setMinutes(int minutes)
    {
        time.components.minutes = accurateValue(minutes);
    }
    void setSeconds(int seconds)
    {
        time.components.seconds = accurateValue(seconds);
    }
// Получение компонент Времени
    int getHours() const
    {
        return int(time.components.hours);
    }
    int getMinutes() const
    {
        return int(time.components.minutes);
    }
    int getSeconds() const
    {
        return int(time.components.seconds);
    }
// Получение времени как целого беззнакового числа
    unsigned long getValue() const
    {
        return time.number;
    }
};
/* Класс реализует набор «Набор дней»
*/
class Days
{
private:
    Time* items; // Указатель на массив элементов (набор)
    int begin; // Базовый индекс массива (элемента в наборе)
    int size; // Размер массива (набора)
protected:
    static Time ground; // Дефолтное время набора
public:
// Параметрический конструктор (и дефолтный одновременно)
    Days(int count = 2)
    {
        begin = 0;
        size = ((count < 2) ? 2 : (count > 99) ? 99 : count);
        if((items = new Time[size]) == NULL)
            size = 0;
    }
// Копирующий конструктор
    Days(const Days& day)
    {
        size = day.size;
        begin = day.begin;
        if((items = new Time[size]) == NULL)
            size = 0;
        else
            for(int i = 0 ; i < size ; i++)
                items[i] = day.items[i];
    }
// Деструктор
    ~Days()
    {
        if(size != 0)
            delete [] items;
    }
// Получение размера набора
    int Count() const
    {
        return size;
    }
// Установка стартового индекса для набора
    void BeginAt(const int start_index)
    {
        begin = start_index;
    }
// Получение индекса первого элемента в наборе
    int Start() const
    {
        return begin;
    }
// Получение индекса последнего элемента в наборе
    int End() const
    {
        return (begin + size - 1);
    }
// Получение элемента из набора с заданным индексом
    Time& Item(const int idx) const
    {
        return ((idx >= Start() && idx <= End()) ? items[idx - begin] : ground);
    }
};
// Инициализация дефолтного времени через дефолтный конструктор
Time Days::ground;
/* Функция реализует отображение ошибки
*/
void ErrorValue()
{
    cin.clear();
    cin.sync();
    cout << "Ошибка: некорректное значение" << endl;
}
/* Функция реализует консольный интерфейс для изменения элемента (времени)
*/
void ModifyTime(Time& time)
{
    char ch = '\0'; // Команда меню
    int value; // Значение компоненты
    do   // Обработка команд меню
    {
        switch(ch)
        {
        case 'P': // Печать компонентов времени
        case 'p':
            cout << endl <<"Часы = " << time.getHours()
                 << endl <<"Минуты = " << time.getMinutes()
                 << endl <<"Секунды = " << time.getSeconds()
                 << endl;
            break;
        case 'H': // Установка часаовой компонент
        case 'h':
            cout << endl << "Введите часовую компоненту [0..23]:>";
            cin >> value;
            if(!cin.fail())
                time.setHours(value);
            else
                ErrorValue();
            break;
        case 'M': // Установка Минутной компоненты
        case 'm':
            cout << endl << "Введите минутную компоненту [0..59]:>";
            cin >> value;
            if(!cin.fail())
                time.setMinutes(value);
            else
                ErrorValue();
            break;
        case 'S': // Установка сикундной компоненты
        case 's':
            cout << endl << "Введите секундную компоненту [0..59]:>";
            cin >> value;
            if(!cin.fail())
                time.setSeconds(value);
            else
                ErrorValue();
            break;
        case 'F': // Установка компонент в случайные значения
        case 'f':
            time.setHours(rand()%24);
            time.setMinutes(rand()%60);
            time.setSeconds(rand()%60);
            break;
        case '\0': // Пропустить действие
            break;
        default:
            cout << "Ошибка: некорректная операция" << endl;
        }
// Отображение консольного меню
        cout << endl << "Цвет = "
             << showbase << hex << time.getValue() << dec << noshowbase
             << endl << "(P) Печать всех компонент"
             << endl << "(H) Изменение Часовой компоненты"
             << endl << "(M) Изменение Минутной компоненты"
             << endl << "(S) Изменение Секундной компоненты"
             << endl << "(F) Заполнение случайными значениями"
             << endl << "(O) Выход";
        cout << endl << "Выберите пункт:>";
        cin >> ch;
    }
    while(ch != 'O' && ch != 'o');
}
/* Функция реализует консольный интерфейс для изменения набора (палитры)
*/
void ModifyDays(Days table)
{
    char ch = 'P'; // Команда меню
    int num; // Значение для ввода
    do   // Обработка команд меню
    {
        switch(ch)
        {
        case 'P': // Печать содержания набора
        case 'p':
            cout << endl << "Содержание набора дней:";
            for(num = table.Start() ; num <= table.End() ; num++)
                cout << endl << num
                     << ". (" << table.Item(num).getHours()
                     << "," << table.Item(num).getMinutes()
                     << "," << table.Item(num).getSeconds()
                     << ") = " << table.Item(num).getValue();
            cout << endl;
            break;
        case 'M': // Изменение элемента в наборе
        case 'm':
            cout << endl << "Введите индекс Дня:>";
            cin >> num;
            if(!cin.fail())
                ModifyTime(table.Item(num));
            else
                ErrorValue();
            break;
        case 'I': // Установка начального индекса
        case 'i':
            cout << endl << "Введите начальный индекс:>";
            cin >> num;
            if(!cin.fail())
                table.BeginAt(num);
            else
                ErrorValue();
            ch = 'P';
            continue;
        case 'F': // Заполнение набора случайными значениями
        case 'f':
            for(num = table.Start() ; num <= table.End() ; num++)
            {
                table.Item(num).setHours(rand()%24);
                table.Item(num).setMinutes(rand()%60);
                table.Item(num).setSeconds(rand()%60);
            }
            ch = 'P';
            continue;
        default:
            cout << "Ошибка: некорректная операция" << endl;
        }
// Отображение консольного меню
        cout << endl << "(P) Печать всех Дней"
             << endl << "(M) Изменение времени в Дне"
             << endl << "(I) Установка начального индекса"
             << endl << "(F) Заполнение случайными значениями"
             << endl << "(Q) Выход";
        cout << endl << "Выберите пункт:>";
        cin >> ch;
    }
    while(ch != 'Q' && ch != 'q');
}
/* Главная функция */
int main()
{
// Переключить вывод сообщений на русском языке
    setlocale(LC_ALL, "Russian");
    cout << "Работа 1";
    int count; // Размер набора (=0 выход)
    do
    {
// Ввод размера набора
        cout << endl << "Введите кол-во дней [=0 выход]:>";
        cin >> count;
        if(!cin.fail())
            if(count == 0)
                break; // Выход, если ноль, иначе
            else
                ModifyDays(Days(count)); // Создание и изменение набора
        else
            ErrorValue(); // Вывод ошибки
    }
    while(1);
}
