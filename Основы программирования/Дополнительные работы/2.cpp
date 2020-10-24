#include <math.h>
#include <iomanip>
#include <iostream>
using namespace std;
/* ����� ��������� ������� \
*/
class QMatrix
{
public:
    double mtrx[3][3]; //
    static const QMatrix empty; // ������ (�������) �������
public:
// ��������� �����������
    QMatrix(): mtrx() { }
// ���������� �����������
    QMatrix(const QMatrix& obj) {
     for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j]= obj.mtrx[i][j];
            }
// ��������������� �����������
    QMatrix(double matrix[3][3])
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j] = matrix[i][j];
    }

// ������������ ������� ������� (��������� ����� �������)
    QMatrix& operator =(const QMatrix& p)
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j] = p.mtrx[i][j];
        return *this;
    }
// ������� ���� ����� �������� (��������� ����� �������)
    QMatrix operator +()
    {
        return QMatrix(mtrx);
    }
// ������� ����� ����� �������� (��������� ��������������� �������)
    QMatrix operator -() const
    {
        double matrix[3][3];
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                matrix[i][j] = -mtrx[i][j] ;
        return QMatrix(matrix);
    }
// ��������� � ������� �������� ������� ������� ������ ������� � ��������� ����� �������
    QMatrix operator +(const QMatrix& p) const
    {
        double matrix[3][3];
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                matrix[i][j] = mtrx[i][j] + p.mtrx[i][j];

        return QMatrix(matrix);
    }
// ��������� � ������� �������� ������� ������� ������ �������
    QMatrix& operator +=(const QMatrix& p)
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j] += p.mtrx[i][j];
        return *this;
    }
// ��������� � ������� �������� ������� � ��������� ����� �������
    QMatrix operator +(const double offset) const
    {
        double matrix[3][3];
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                matrix[i][j] = mtrx[i][j] + offset;
        return QMatrix(matrix);
    }
// ��������� � ������� �������� �������
    QMatrix& operator +=(const double offset)
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j] += offset;
        return *this;
    }
// ������� � ������� �������� ������� ������� ������ ������� � ��������� ����� �������
    QMatrix operator -(const QMatrix& p) const
    {
        double matrix[3][3];
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                matrix[i][j] = mtrx[i][j] - p.mtrx[i][j];
        return QMatrix(matrix);
    }
// ������� � ������� �������� ������� ������� ������ �������
    QMatrix& operator -=(const QMatrix& p)
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j] -= p.mtrx[i][j];
        return *this;
    }
// ������� � ������� �������� ������� � ��������� ����� �������
    QMatrix operator -(const double offset) const
    {
        double matrix[3][3];
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                matrix[i][j] = mtrx[i][j] - offset;
        return QMatrix(matrix);
    }
// ������� � ������� �������� �������
    QMatrix& operator -=(const double offset)
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j] -= offset;
        return *this;
    }
// �������� ������ ������� �������  �� ���������
    QMatrix& operator *=(const double factor)
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                mtrx[i][j] *= factor;
        return *this;
    }
// �������� ������ ������� �������  �� ������� ������ �������
    QMatrix operator *(const QMatrix& p) const
    {
        double matrix[3][3];
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                matrix[i][j] = mtrx[i][j] * p.mtrx[i][j];
        return QMatrix(matrix);
    }
// ��������� ���� ������ �� ���������
    bool operator ==(const QMatrix& p) const
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                if (mtrx[i][j] != p.mtrx[i][j])
                    return 0;
        return 1;
    }
// ��������� ���� ������ �� �����������
    bool operator !=(const QMatrix& p) const
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                if (mtrx[i][j] != p.mtrx[i][j])
                    return 1;
        return 0;
    }
// ���������� ������������
    operator double() const
    {
        return mtrx[0][0] * mtrx[1][1] * mtrx[2][2] - mtrx[0][0] * mtrx[1][2] * mtrx[2][1]
               - mtrx[0][1] * mtrx[1][0] * mtrx[2][2] + mtrx[0][1] * mtrx[1][2] * mtrx[2][0]
               + mtrx[0][2] * mtrx[1][0] * mtrx[2][1] - mtrx[0][2] * mtrx[1][1] * mtrx[2][0];
    }
// ���-�� �����
    operator int() const
    {
        return 9;
    }
// ����������������
    QMatrix operator ~() const
    {
        double matrix[3][3];
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                matrix[j][i] = mtrx[i][j];
        return QMatrix(matrix);
    }
// ��������, �������� �� ������� �������
    bool operator !() const
    {
        for(int i=0; i<3; i++)
            for(int j=0; j<3; j++)
                if (mtrx[i][j] != 0)
                    return 0;
        return 1;
    }
};
// ������������� ������ ������� ����� ��������� �����������
const QMatrix QMatrix::empty;
// ���� ��������� ������� �� ������������ ������
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
// ����� �������
std::ostream& operator <<(std::ostream& out, const QMatrix& v)
{
    for(int i=0; i<3; i++)
        out << "[" << v.mtrx[i][0] << " , " << v.mtrx[i][1] << " , " << v.mtrx[i][2] << "]" << endl;
    out << " => " << double(v);

    return out;
}
/* �������������� ������ � ������� ������������� ����������
*/
void ModifyQMatrix(QMatrix& v)
{
    char ch = '?'; // ������� ����
    double value; // ����� ��� �����
    do   // ��������� ������ ����
    {
        switch(ch)
        {
        case '?': // ������� �������
            cout << v;
            break;
        case '+': // ��������� � ������� �������� �������
            cout << endl << "������� ��������:>";
            cin >> value;
            if(!cin.fail()) v += value;
            ch = '?';
            continue;
        case '-': // ������� � ������� �������� �������
            cout << endl << "������� ��������:>";
            cin >> value;
            if(!cin.fail()) v -= value;
            ch = '?';
            continue;
        case '*': // �������� ������ ������� �������  �� ���������
            cout << endl << "������� �����������:>";
            cin >> value;
            if(!cin.fail()) v *= value;
            ch = '?';
            continue;
        case '!': // ��������������� �������
            v = -v;
            ch = '?';
            continue;
        case '~': // ���������������� �������
            v = ~v;
            ch = '?';
            continue;
        case '=': // �������� ���������� �������
            cout << "������� ���������� ������� [3x3]:>";
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
                cout << "������: ������������ ��������" << endl;
            }
            break;
        default:
            cout << "������: ������������ ��������" << endl;
        }
// ����������� ����������� ����
        cout << endl << "(~) ���������������� �������"
             << endl << "(-) ������� � ������� �������� �������"
             << endl << "(+) ��������� � ������� �������� �������"
             << endl << "(*) �������� ������ ������� ������� �� ������� "
             << endl << "(=) �������� ���������� �������"
             << endl << "(?) ���������� � �������"
             << endl << "(!) ��������������� �������"
             << endl << "(0) �����";
        cout << endl << "�������� ��������:>";
        cin >> ch;
    }
    while(ch != '0');
}
/* ������� �������. ��������� ���� � ��������� � �������������.
*/
int main()
{
    char ch = '\0'; // ������� ����
    QMatrix a, b; // ���������� ������
// ����������� ����� ��������� �� ������� �����
    setlocale(LC_ALL, "Russian");
    cout << "������ 2" << dec << setprecision(3) << boolalpha;
    do   // ��������� ������ ����
    {
        switch(ch)
        {
        case 'A': // �������� ������� �
        case 'a':
            ModifyQMatrix(a);
            break;
        case 'B': // �������� ������� �
        case 'b':
            ModifyQMatrix(b);
            break;
        case 'T': // ���� ����� ���������
        case 't':
            cout << endl << "A + B = " << endl << (a + b) // �������� ������
                 << endl << "A - B = " << endl << (a - b) // �������� ������
                 << endl << "A * B = " << endl <<( a * b) // ������������ ������
                 << endl << "(A = B) = " << endl << (a == b) // ��������� ������
                 << endl;
            break;
        case '\0': // ���������� ��������
            break;
        default:
            cout << "������: ������������ ��������" << endl;
        }
// ����������� ����������� ����
        cout << endl << "(T) ��������� �������� ��� ������"
             << endl << "(A) ������� � " << endl << a
             << endl << "(B) ������� � " << endl << b
             << endl << "(Q) �����";
        cout << endl << "�������� �����:>";
        cin >> ch;
    }
    while(ch != 'Q' && ch != 'q');
    return 0;
}
