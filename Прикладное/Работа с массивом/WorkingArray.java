import java.io.BufferedReader;
import java.io.InputStreamReader;

import java.io.IOException;

public class WorkingArray
{
	BufferedReader reader;
	int[] mas = new int[0];
	
	//Открытие потока ввода
	public void openStream(){ 
		reader = new BufferedReader(new InputStreamReader(System.in));
	}
	
	//Закрытие потока ввода
	public void closeStream(){
		try{ 
			reader.close();
		} catch (IOException ex){
			ex.printStackTrace();
		}
	}
	
	public void menu(){
		System.out.println();
		System.out.println("==={ menu }===");
		System.out.println("1. Ввод массива");
		System.out.println("2. Сумма элементов массива");
		System.out.println("3. Отсортировать массив");
		System.out.println("4. Вывод массива");
		System.out.println("0. Выход");
		System.out.println("==============");
		System.out.println();
	}
	
	//1. Ввод массива
	public void inputArray(){
		try{
			System.out.println("Введите целочисленный массив: ");
			System.out.print(">> ");
			String[] words = reader.readLine().split(" ");
			int[] new_mas = new int[words.length];
			for (int i = 0; i != words.length; ++i)
				new_mas[i] = Integer.parseInt(words[i]);
			mas = new_mas;
			System.out.println("Accept");
			System.out.println();
		} catch (Exception ex){
			System.out.println("Error. Элемент массива не число");
			System.out.println();
		}
	}
	
	//2. Сумма элементов массива
	public void sumArray(){
		System.out.println("Сумма всех элементов массива: ");
		System.out.print(">> ");
		long summ = 0;
		for (int digit : mas)
			summ += digit;
		System.out.println(summ);
		System.out.println("Accept");
		System.out.println();
	}
	
	//3. Отсортировать массив
	public void sortedArray(){
		System.out.println("Ваш отсортированный массив: ");
		System.out.print(">> ");
		int n_mas = mas.length - 1;
		for (int i = 0; i != mas.length; ++i){
			for (int j = i + 1; j < mas.length; ++j){
				if (mas[j] > mas[i]){
					int t = mas[i];
					mas[i] = mas[j];
					mas[j] = t;
					
				}
			}
		}
		System.out.println("Accept");
		System.out.println();
	}
	
	//4. Вывод массива
	public void printArray(){
		if (mas.length != 0){
			System.out.println("Ваш массив: ");
			System.out.print(">> ");
			for (int digit : mas)
				System.out.print(digit + " ");
			System.out.println();
			System.out.println("Accept");
		} else{
			System.out.println("Ваш массив пуст");
		}
		System.out.println();
	}
	
}








