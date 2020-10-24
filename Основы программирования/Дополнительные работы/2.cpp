#include <math.h>
#include <iomanip>
#include <iostream>
using namespace std;
/* Класс реализует Матрицу \
*/
class QMatrix
{
public:
    double mtrx[3][3]; //
    static const QMatrix empty; // Пустая (нулевая) Матрица
public:
// Дефолтный конструктор
    QMatrix(): mtrx() { }
// Копирующий конструктор
    QMatrix(const QMatrix& obj) {
     for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j]= obj.mtrx[i][j];
            }
// Параметрический конструктор
    QMatrix(double matrix[3][3])
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j] = matrix[i][j];
    }

// Присваивание Матрицы матрицы (получение копии матрицы)
    QMatrix& operator =(const QMatrix& p)
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j] = p.mtrx[i][j];
        return *this;
    }
// Унарный плюс перед Матрицей (получение копии Матрицы)
    QMatrix operator +()
    {
        return QMatrix(mtrx);
    }
// Унарный минус перед Матрицей (получение противоположной Матрицы)
    QMatrix operator -() const
    {
        double matrix[3][3];
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                matrix[i][j] = -mtrx[i][j] ;
        return QMatrix(matrix);
    }
// Прибавить к каждому элементу Матрицы элемент другой Матрицы с созданием новой Матрицы
    QMatrix operator +(const QMatrix& p) const
    {
        double matrix[3][3];
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                matrix[i][j] = mtrx[i][j] + p.mtrx[i][j];

        return QMatrix(matrix);
    }
// Прибавить к каждому элементу Матрицы элемент другой Матрицы
    QMatrix& operator +=(const QMatrix& p)
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j] += p.mtrx[i][j];
        return *this;
    }
// Прибавить к каждому элементу Матрицы с созданием новой Матрицы
    QMatrix operator +(const double offset) const
    {
        double matrix[3][3];
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                matrix[i][j] = mtrx[i][j] + offset;
        return QMatrix(matrix);
    }
// Прибавить к каждому элементу Матрицы
    QMatrix& operator +=(const double offset)
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j] += offset;
        return *this;
    }
// Вычесть у каждого элемента Матрицы элемент другой Матрицы с созданием новой Матрицы
    QMatrix operator -(const QMatrix& p) const
    {
        double matrix[3][3];
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                matrix[i][j] = mtrx[i][j] - p.mtrx[i][j];
        return QMatrix(matrix);
    }
// Вычесть у каждого элемента Матрицы элемент другой Матрицы
    QMatrix& operator -=(const QMatrix& p)
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j] -= p.mtrx[i][j];
        return *this;
    }
// Вычесть у каждого элемента Матрицы с созданием новой матрицы
    QMatrix operator -(const double offset) const
    {
        double matrix[3][3];
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                matrix[i][j] = mtrx[i][j] - offset;
        return QMatrix(matrix);
    }
// Вычесть у каждого элемента Матрицы
    QMatrix& operator -=(const double offset)
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j] -= offset;
        return *this;
    }
// Умножить каждый элемент матрицы  на коэфицент
    QMatrix& operator *=(const double factor)
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j] *= factor;
        return *this;
    }
// Умножить каждый элемент матрицы  на элемент другой матрицы
    QMatrix operator *(const QMatrix& p) const
    {
        double matrix[3][3];
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                matrix[i][j] = mtrx[i][j] * p.mtrx[i][j];
        return QMatrix(matrix);
    }
// Сравнение двух Матриц на равенство
    bool operator ==(const QMatrix& p) const
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                if (mtrx[i][j] != p.mtrx[i][j])
                    return 0;
        return 1;
    }
// Сравнение двух Матриц на неравенство
    bool operator !=(const QMatrix& p) const
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                if (mtrx[i][j] != p.mtrx[i][j])
                    return 1;
        return 0;
    }
// вычисление детерминанта
    operator double() const
    {
        return mtrx[0][0] * mtrx[1][1] * mtrx[2][2] - mtrx[0][0] * mtrx[1][2] * mtrx[2][1]
               - mtrx[0][1] * mtrx[1][0] * mtrx[2][2] + mtrx[0][1] * mtrx[1][2] * mtrx[2][0]
               + mtrx[0][2] * mtrx[1][0] * mtrx[2][1] - mtrx[0][2] * mtrx[1][1] * mtrx[2][0];
    }
// Кол-во ячеек
    operator int() const
    {
        return 9;
    }
// Тронспонирование
    QMatrix operator ~() const
    {
        double matrix[3][3];
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                matrix[j][i] = mtrx[i][j];
        return QMatrix(matrix);
    }
// Проверка, является ли матрица нулевой
    bool operator !() const
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                if (mtrx[i][j] != 0)
                    return 0;
        return 1;
    }
};
// Инициализация пустой матрицы через дефолтный конструктор
const QMatrix QMatrix::empty;
// Ввод элементов Матрицы из стандартного потока
std::istream& operator >>(std::istream& in, QMatrix& p)
{
    for(int i=0; i<3; i++)
        for(int j=0; j<3; j++)
        {
            in >> p.mtrx[i][j];
            if(in.fail())
                break;
        }
    return in;
}
// Вывод Матрицы
std::ostream& operator <<(std::ostream& out, const QMatrix& v)
{
    for(int i=0; i<3; i++)
        out << "[" << v.mtrx[i][0] << " , " << v.mtrx[i][1] << " , " << v.mtrx[i][2] << "]" << endl;
    out << " => " << double(v);

    return out;
}
/* Редактирование Матриц с помощью перегруженных операторов
*/
void ModifyQMatrix(QMatrix& v)
{
    char ch = '?'; // Команда меню
    double value; // Число для ввода
    do   // Обработка команд меню
    {
        switch(ch)
        {
        case '?': // Вывести матрицу
            cout << v;
            break;
        case '+': // Прибавить к каждому элементу Матрицы
            cout << endl << "Введите значение:>";
            cin >> value;
            if(!cin.fail()) v += value;
            ch = '?';
            continue;
        case '-': // Вычесть у каждого элемента Матрицы
            cout << endl << "Введите значение:>";
            cin >> value;
            if(!cin.fail()) v -= value;
            ch = '?';
            continue;
        case '*': // Умножить каждый элемент матрицы  на коэфицент
            cout << endl << "Введите коэффициент:>";
            cin >> value;
            if(!cin.fail()) v *= value;
            ch = '?';
            continue;
        case '!': // Противоположная Матрица
            v = -v;
            ch = '?';
            continue;
        case '~': // Транспонирование матрицы
            v = ~v;
            ch = '?';
            continue;
        case '=': // Изменить координаты матрицы
            cout << "Введите координаты матрицы [3x3]:>";
            cin >> v;
            if(!cin.fail())
            {
                ch = '?';
                continue;
            }
            else
            {
                cin.clear();
                cin.sync();
                cout << "Ошибка: некорректное значение" << endl;
            }
            break;
        default:
            cout << "Ошибка: некорректная операция" << endl;
        }
// Отображение консольного меню
        cout << endl << "(~) Транспонирование Матрицы"
             << endl << "(-) Вычесть у каждого элемента Матрицы"
             << endl << "(+) Прибавить к каждому элементу Матрицы"
             << endl << "(*) Умножить каждый элемент матрицы на элемент "
             << endl << "(=) Изменить координаты матрицы"
             << endl << "(?) Информация о Матрице"
             << endl << "(!) Противоположная Матрица"
             << endl << "(0) Выход";
        cout << endl << "Выберите операцию:>";
        cin >> ch;
    }
    while(ch != '0');
}
/* Главная функция. Реализует ввод и интерфейс с пользователем.
*/
int main()
{
    char ch = '\0'; // Команда меню
    QMatrix a, b; // Экземпляры Матриц
// Переключить вывод сообщений на русском языке
    setlocale(LC_ALL, "Russian");
    cout << "Работа 2" << dec << setprecision(3) << boolalpha;
    do   // Обработка команд меню
    {
        switch(ch)
        {
        case 'A': // Изменить Матрицу А
        case 'a':
            ModifyQMatrix(a);
            break;
        case 'B': // Изменить Матрицу В
        case 'b':
            ModifyQMatrix(b);
            break;
        case 'T': // Тест между Матрицами
        case 't':
            cout << endl << "A + B = " << endl << (a + b) // Сложение Матриц
                 << endl << "A - B = " << endl << (a - b) // Разность Матриц
                 << endl << "A * B = " << endl <<( a * b) // Произведение Матриц
                 << endl << "(A = B) = " << endl << (a == b) // Сравнение Матриц
                 << endl;
            break;
        case '\0': // Пропустить действие
            break;
        default:
            cout << "Ошибка: некорректная операция" << endl;
        }
// Отображение консольного меню
        cout << endl << "(T) Выполнить операции для Матриц"
             << endl << "(A) Матрица А " << endl << a
             << endl << "(B) Матрица В " << endl << b
             << endl << "(Q) Выход";
        cout << endl << "Выберите пункт:>";
        cin >> ch;
    }
    while(ch != 'Q' && ch != 'q');
    return 0;
}
