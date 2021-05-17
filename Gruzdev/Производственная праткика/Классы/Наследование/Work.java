/*
 Задание: https://stepik.org/lesson/90695/step/7?unit=66923

Составьте классы в соответствии с UML диаграммой.
Методы не должны иметь реализаций и должны возвращать, в случае необходимости, базовые значения.
        Классы не должны содержать конструкторов.
        Базовые значения для целых - 0,  для строк - "", для boolean - true
*/

import java.math.BigInteger;

public class Work {
    public static void main(String[] args) {

    }
}

abstract class Employee {
    protected String name = "";
    protected int salary = 0;
    protected int ID = 0;

    public abstract void setSalary(int salary);

    public abstract void work();
}

class Manager extends Employee{
    private long time = 0;
    private BigInteger projectMoney = BigInteger.ZERO;
    private byte countOfPaper = 0;

    public void throwPaper(){}

    @Override
    public void setSalary(int salary) {}

    @Override
    public void work() {}
}

class Programmer extends Employee{
    private String task = "";
    private int stamina = 0;
    private String code = "";

    public String coding(String task) {
        return this.task;
    }

    public boolean test(String code) {
        return true;
    }

    public void fix(String code) {
        System.out.println(this.code);
    }

    @Override
    public void setSalary(int salary) {}

    @Override
    public void work() {}
}