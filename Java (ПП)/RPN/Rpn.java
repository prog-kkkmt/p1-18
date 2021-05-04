package sample;

import java.util.Stack;

public class Rpn {

    public static String Parse(String expression) {

        String result = "";
        Stack<Character> stack = new Stack<>();

        int currentPriority;

        expression = prepareInputExpression(expression);

        System.out.println(expression);

        for (int i = 0; i < expression.length(); i++) {

            currentPriority = getPriority(expression.charAt(i));

            if (isDigit(expression.charAt(i)))
                result += expression.charAt(i);
            else if (currentPriority == 1)      //  (
                stack.push(expression.charAt(i));
            else if (isOperation(expression.charAt(i))) {

                result += ' ';

                while (!stack.isEmpty()) {

                    if (getPriority(stack.peek()) >= currentPriority) {

                        result += stack.pop() + " ";
                    }
                    else break;
                }

                stack.push(expression.charAt(i));
            }

            else if (currentPriority == -1) {       //  )

                result += ' ';

                while (getPriority(stack.peek()) != 1) {        //  (

                    result += stack.pop();
                }

                stack.pop();    //  (


            }
        }

        while (!stack.isEmpty()) {

            result += stack.pop();
        }

        return result;
    }

    public static double GetResult (String rpn) {

        String currentNumber = "";

        Stack<Double> numbers = new Stack<>();

        for (int i = 0; i < rpn.length(); i++) {

            if (rpn.charAt(i) == ' ') continue;

            if (isDigit(rpn.charAt(i))) {

                while (isDigit(rpn.charAt(i)) && i < rpn.length()) {

                    currentNumber += rpn.charAt(i++);
                }

                numbers.push(Double.parseDouble(currentNumber));

                currentNumber = "";
            }

            if (isOperation(rpn.charAt(i))) {

                numbers.push(doOperation(numbers.pop(), rpn.charAt(i), numbers.pop()));
            }
        }

        return numbers.pop();
    }

    private static int getPriority (char operation) {

        if      (operation == '*' || operation == '/')  return  3;
        else if (operation == '+' || operation == '-')  return  2;
        else if (operation == '(')                      return  1;
        else if (operation == ')')                      return -1;
        else                                            return  0;
    }

    private static double doOperation   (double rightValue, char operation, double leftValue) {

        switch (operation) {

            case '+':
                return leftValue + rightValue;
            case '-':
                return leftValue - rightValue;
            case '*':
                return leftValue * rightValue;
            case '/':
                return leftValue / rightValue;
            default: return 0;
        }
    }

    private static String prepareInputExpression (String expression) {

        String result = (expression.trim().charAt(0) == '-' ? "0" : "") + expression.trim().charAt(0);

        for (int i = 1; i < expression.length(); i++) {

            result += (expression.charAt(i - 1) == '(' && expression.substring(i).trim().charAt(0) == '-' ?
                    "0" : (expression.charAt(i) ==   '(' && (getPriority(expression.charAt(i - 1)) <= 0) ?
                        "*" : ""))   +   expression.charAt(i);
        }

        return result;
    }

    private static boolean isOperation  (char ch4r){
        return getPriority(ch4r) > 1;
    }
    private static boolean isDigit      (char ch4r){
        return ch4r - 48 >= 0 && ch4r - 48 <= 9;
    }
}
