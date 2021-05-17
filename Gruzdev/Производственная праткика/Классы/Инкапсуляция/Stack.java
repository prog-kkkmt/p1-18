/**
  Задание: https://stepik.org/lesson/90694/step/10?unit=66922

 Необходимо создать класс Stack. Для данного класса должны быть доступны следующие методы:

        push(int value) - положить число на стек

        pop() - вернуть вершину стека и извлечь элемент из стека, в случае извлечения максимума или минимума необходимо найти новые максимум и минимум

        getMin() - возвращает минимум стека

        getMax() - возвращает максимум стека

        size() - возвращает длину стека

        isEmpty() - проверяет стек на пустоту */




import java.util.Arrays;

class Stack {
    private int size = 0;
    private int[] st = new int[1];


    public void push(int value) {
        if (this.size == st.length) {
            st = Arrays.copyOf(st, st.length + 1);
        }
            st[this.size] = value;
            size++;

    }

    public int pop() {
        int top = st[this.size-1];
        st = Arrays.copyOf(st, st.length-1);
        size--;
        return top;
    }

    private int searchMin() {
        int min = Integer.MAX_VALUE;
        for (int i = 0; i != st.length; i++) {
            if (st[i] < min) {
                min = st[i];
            }
        }

        return min;
    }

    private int searchMax() {
        int max = Integer.MIN_VALUE;
        for (int i = 0; i != st.length; i++) {
            if (st[i] > max) {
                max = st[i];
            }
        }

        return max;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public int getMin() { return searchMin(); }

    public int getMax() { return searchMax(); }

    public int size() { return this.size; }

}




