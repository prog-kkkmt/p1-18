/*Сделал Роголев В.А. Группы П1-18
 разработал:
> классы для описания положения «Location» и ограничивающей области «Clip» в плоскости;
> статический класс «Geometry» для хранения общих констант и методов
  проверки различных ограничений на размещение фигур в плоскости;
> класс геометрического примитива «Primitive» для хранения и редактирования
  оформительских свойств фигуры как наследника от статического класса «Geometry»;
> класс примитивной фигуры – точки «Point» как наследника от классов «Location» и «Primitive»;
> класс фигуры согласно варианту «Figure» как наследника от класса
  «Point» с описанием специфических свойств и методов фигуры;
> наборы конструкторов для создания экземпляров каждого класса
  различными способами (дефолтный, копирующий, параметрический);
> методы для изменения свойств и вычисления характеристик фигуры;
> интерфейс для отображения и изменения всех свойств фигуры.

Ознакомлен с концепциями наследования и абстракции,
Обычным и множественноым наследованием классов.
Статическими свойствами, методами и классами.
Перегрузкой методов при наследовании классов.
Освоил приѐмы создания, редактирования, копирования,
удаления экземпляров и разработки интерфейсов классов.

Интерфейс и классы реализуются в одном модуле. Для редактирования
фигуры разработана функцию ModifyFigure(), которая получает
ссылку на экземпляр фигуры и предоставляет интерактивный консольный
интерфейс для работы с ним.

Фигура: правильная трапеция.
*/

#include <math.h>
#include <iostream>
using namespace std;
/* Класс реализует позицию (x,y) на плоскости
*/
class Location
{
public:
    double x; // X-координата
    double y; // Y-координата
// Дефолтный конструктор
    Location() : x(0), y(0) { }
// Копирующий конструктор
    Location(const Location& obj) : x(obj.x), y(obj.y) { }
// Параметрический конструктор
    Location(double xx, double yy) : x(xx), y(yy) { }
};
/* Класс реализует ограничивающую область на плоскости
*/
class Clip
{
public:
    Location min; // Левая нижняя граница
    Location max; // Правая верхняя граница
// Дефолтный конструктор
    Clip() : min(), max() { }
// Копирующий конструктор
    Clip(const Clip& obj) : min(obj.min), max(obj.max) { }
// Параметрический конструктор
    Clip(double xn, double yn, double xk, double yk)
    {
        if(xn < xk)
        {
            min.x = xn;
            max.x = xk;
        }
        else
        {
            min.x = xk;
            max.x = xn;
        }
        if(yn < yk)
        {
            min.y = yn;
            max.y = yk;
        }
        else
        {
            min.y = yk;
            max.y = yn;
        }
    }
// Вычисление ширины области
    double sizeX() const
    {
        return (max.x - min.x);
    }
// Вычисление высоты области
    double sizeY() const
    {
        return (max.y - min.y);
    }
};
/* Класс реализует геометрические константы и функции проверки
(базовый статический класс для всех примитивов)*/
class Geometry
{
public:
    static const double extent; // предельный размер
// Проверка и корректировка значения координаты
    static double accurateExtent(double value)
    {
        return ((value < -extent) ? -extent : (value > extent) ? extent : value);
    }
};
// Инициализация констант
const double Geometry::extent = 1E6; // предельный размер
/* Реализует геометрический примитив на плоскости
(родитель для точки и базовый для фигуры)*/
class Primitive : public Geometry
{
private:
    bool visible; // Видимость
    unsigned char color; // Цвет (0..255)
public:
// Получение цвета примитива
    int getColor() const
    {
        return int(color);
    }
// Установка цвета примитива
    void setColor(int tint)
    {
        color = char((tint < 0) ? 0 : (tint > 255) ? 255 : tint);
    }
// Проверка видимости примитива
    bool isVisible() const
    {
        return visible;
    }
// Отображение примитива (видим)
    void setShow()
    {
        visible = true;
    }
// Скрытие примитива (невидим)
    void setHide()
    {
        visible = false;
    }
// Дефолтный конструктор
    Primitive() : visible(false), color(0) { }
// Копирующий конструктор
    Primitive(const Primitive& obj) : visible(obj.visible), color(obj.color) {}
};
/* Класс реализует цветную точку на плоскости (родитель для фигуры)
*/
class Point : public Primitive, public Location
{
public:
// Дефолтный конструктор
    Point() : Primitive(), Location() { }
// Копирующий конструктор
    Point(const Point& obj) : Primitive(obj), Location(obj) { }
// Параметрический конструктор
    Point(double xx, double yy, int tint)
    {
        setX(xx);
        setY(yy);
        setShow();
        setColor(tint);
    }
// Получение X-координаты
    double getX() const
    {
        return x;
    }
// Получение Y-координаты
    double getY() const
    {
        return y;
    }
// Получение позиции
    Location getPosition() const
    {
        return Location(x, y);
    }
// Установка X-координаты
    virtual void setX(double xx)
    {
        x = accurateExtent(xx);
    }
// Установка Y-координаты
    virtual void setY(double yy)
    {
        y = accurateExtent(yy);
    }
// Вычисление ограничивающей области
    virtual Clip getClipBox() const
    {
        return Clip(x, y, x, y);
    }
};
/* Класс реализует фигуру "Правельную трапецию" (наследник для точки)
*/
class Figure : public Point
{
private:
    Point A[4];
public:
// Дефолтный конструктор
    Figure() : A() { }
// Копирующий конструктор
    Figure(const Figure& obj)
    {
        A[0] = obj;
        A[1] = obj;
        A[2] = obj;
        A[3] = obj;
    }
// Параметрический конструктор
    Figure(double xa, double ya, double xb, double yb, double xc, double yc, double xd, double yd, int tint)
    {
        setColor(tint);
        setShow(); // Установка общих свойств
        A[0].setX(xa);// Установка свойств родителя точки A
        A[0].setY(ya);
        A[1].setX(xb);// Установка свойств родителя точки B
        A[1].setY(yb);
        A[2].setX(xc);// Установка свойств родителя точки C
        A[2].setY(yc);
        A[3].setX(xd);// Установка свойств родителя точки D
        A[3].setY(yd);
    }


// Вычисление длины стороны
    double getLineA(int i,int j)
    {
        return sqrt(pow(A[j].x-A[i].x,2)+pow(A[j].y-A[i].y,2));
    }
// Вычисление периметра
    double getLength()
    {
        return getLineA(0,1)+getLineA(1,2)+getLineA(2,3)+ getLineA(3,0);
    }
// Вычисление высоты
    double getHigh()
    {
        return sqrt(pow(getLineA(0,1),2) * pow(((getLineA(3,0)-getLineA(1,2))/2),2));
    }
// Вычисление площади
    double getSquare()
    {
        return (getLineA(3,0) + getLineA(1,2))/2 * getHigh();
    }
// Установка X-координаты(перегрузка)
    void setX(double xx, int i)
    {
        A[i].x = ((xx < -extent) ? -extent : (xx > +extent) ? +extent : xx) ;
    }
// Установка Y-координаты (перегрузка)
     void setY(double yy, int i)
    {
        A[i].y = ((yy < -extent) ? -extent : (yy > +extent) ? +extent : yy) ;
    }

// Являеться ли фигура правильной трапецией
    bool isTrap()
    {
        if (getLineA(0,1) == getLineA(2,3) && A[0].y == A[3].y && A[1].y == A[2].y)
            return 1;
        return 0;
    }
// Вычисление ограничивающей области (перегрузка)
    virtual Clip getClipBox() const
    {
        double minx, miny, maxx, maxy;
        minx = maxx = A[0].x;
        miny = maxy = A[0].y;
        for (int i = 1;i<4;i++)
        {
            if (A[i].x < minx)
                minx = A[i].x;
            if (A[i].x > maxx)
                maxx = A[i].x;
            if (A[i].y < miny)
                miny = A[i].y;
            if (A[i].y > maxy)
                maxy = A[i].y;
        }
        return Clip(minx,miny,maxx,maxy);
    }
// Вывод координат точек фигуры
    void PrintPoints()
    {
        for(int i = 0;i<4;i++)
        cout << endl << "[" << A[i].getX() << ";" << A[i].getY() << "]";
    }
};
/* Реализует отображение ошибки */
void ErrorValue()
{
    cin.clear();
    cin.sync();
    cout << "Ошибка: некорректное значение" << endl;
}
/* Реализует консольный интерфейс для изменения свойств фигуры */
void ModifyFigure(Figure Fig)
{
    char ch = 'P'; // Команда меню
    do   // Обработка команд меню
    {
        switch(ch)
        {
        case 'P': // Печать всех свойств фигуры
        case 'p':
            cout << endl << "Свойства фигуры:"
                 << endl << "Точки ="; Fig.PrintPoints();
            cout << endl << "Высота = " << Fig.getHigh()
                 << endl << "Площадь = " << Fig.getSquare()
                 << endl << "Периметр = " << Fig.getLength()
                 << endl << "Видимость = " << ((Fig.isVisible()) ? "Да" : "Нет")
                 << endl << "Номер цвета = " << Fig.getColor()
                 << endl << "Являеться ли фигура правельной трапецией = " << ((Fig.isTrap()) ? "Да" : "Нет")
                 << endl;
            {
                Clip area = Fig.getClipBox();
                cout << "Область = (" << area.min.x << ";" << area.min.y
                     << ")--(" << area.max.x << ";" << area.max.y << ")" << endl
                     << "Размер = [" << area.sizeX() << "x" << area.sizeY() << "]"
                     << endl;
            }
            break;
        case 'R': // Установка всех кардинат
        case 'r':
            double valuex,valuey;
            for(int i = 0;i<4;i++)
            {
            cout << endl << "Введите X и Y координату точки " << i << " :>";
            cin >> valuex >> valuey;
            if(!cin.fail()){
                Fig.setX(valuex,i);
                Fig.setY(valuey,i);
                }
            else
                ErrorValue();
            }
            break;
        case 'X': // Установка X-координаты (свойство родителя)
        case 'x':
        {
            int i;
            double value;
            cout << endl << "Введите точку для редактирования:";
            cin >> i;
            cout << endl << "Введите X-координату :>";
            cin >> value;
            if(!cin.fail())
                Fig.setX(value,i);
            else
                ErrorValue();
        }
        break;
        case 'Y': // Установка Y-координаты (свойство родителя)
        case 'y':
        {
            int i;
            double value;
            cout << endl << "Введите точку для редактирования:";
            cin >> i;
            cout << endl << "Введите Y-координату:>";
            cin >> value;
            if(!cin.fail())
                Fig.setY(value,i);
            else
                ErrorValue();
        }
        break;
        case 'T': // Установка цвета (базовое свойство)
        case 't':
        {
            int tint;
            cout << endl << "Введите цвет [0..255]:>";
            cin >> tint;
            if(!cin.fail())
                Fig.setColor(tint);
            else
                ErrorValue();
        }
        break;
        case 'V': // Переключение видимости (базовое свойство)
        case 'v':
            cout << endl << "Видимость [N-on|F-off]:>";
            cin >> ch;
            if(ch == 'N' || ch == 'n')
                Fig.setShow();
            else if(ch == 'F' || ch == 'f')
                Fig.setHide();
            else
                ErrorValue();
            break;
        default:
            cout << "Ошибка: некорректная операция" << endl;
        }
// Отображение консольного меню
        cout << endl << "(T) Изменить цвет"
             << endl << "(V) Изменить видимость"
             << endl << "(R) Изменить X и Y координаты"
             << endl << "(X) Изменить X-координату"
             << endl << "(Y) Изменить Y-координату"
             << endl << "(P) Печатать все свойства"
             << endl << "(Q) Выход";
        cout << endl << "Выберите пункт:>";
        cin >> ch;
    }
    while(ch != 'Q' && ch != 'q');
}
/* Главная функция. */
int main()
{
// Переключить вывод сообщений на русском языке
    setlocale(LC_ALL, "Russian");
    cout << "Работа 3";
    ModifyFigure(Figure());
    return 0;
}
