import java.io.BufferedReader;
import java.io.InputStreamReader;

import java.io.IOException;

public class Prog
{
	private static int intInput(String s){
		String s_int = "";
		int len_s = s.length();
		for (int i = 0; i != len_s; ++i)
			if (Character.isDigit(s.charAt(i)))
				s_int += s.charAt(i);
		if (s_int.equals(""))
			return 0;
		else
			return Integer.parseInt(s_int);
	}
	
	public static void main(String[] args){
		try{
			BufferedReader reader = 
				new BufferedReader(new InputStreamReader(System.in));
			WorkingArray wa = new WorkingArray();
			wa.openStream();
			int n = -1;
			while (n != 0){
				wa.menu();
				n = intInput(reader.readLine());
				
				//1. Ввод массива
				if (n == 1)
					wa.inputArray();
					
				//2. Сумма элементов массива
				else if (n == 2)
					wa.sumArray();				
				
				//3. Отсортировать массив
				else if (n == 3)
					wa.sortedArray();				
				
				//4. Вывод массива
				else if (n == 4)
					wa.printArray();
				
				//Исключения
				else if (n != 0)
					System.out.println("Error. Такой функции не существует");
			}
			
			wa.closeStream();
			
		}
		catch (IOException ex){
			ex.printStackTrace();
		}
	}
	
}
