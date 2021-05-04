package sample;

public class Main {

    public static void main(String[] args) {

        String expression = "15+7(3-2)(8+5)-7/2*3-1";

        System.out.println(expression);

        System.out.println(Rpn.Parse(expression));

        System.out.println(Rpn.GetResult(Rpn.Parse(expression)));
    }
}
