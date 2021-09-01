import java.text.SimpleDateFormat;
import java.util.*;

public class CTM {
    public static void main(String[] args) {
        Points points = new Points();
        Cargo cargoes = new Cargo();
        Cars cars = new Cars();
        Drivers drivers = new Drivers();
        Flights flights = new Flights();
        Scanner sc = new Scanner(System.in);
        menu();
        while (true) {
            int x = -1;
            System.out.println("Введите номер из списка:");
            while (!sc.hasNextInt()) {
                System.out.println("Это не номер из списка. Попробуйте ещё раз.");
                sc.next();
            }
            x = sc.nextInt();
            switch (x) {
                case 0:
                    System.exit(0);
                    break;
                case 1:
                    menu1();
                    boolean bool = true;
                    while (bool) {
                        int w = -1;
                        System.out.println("Введите номер из списка:");
                        while (!sc.hasNextInt()) {
                            System.out.println("Это не номер из списка. Попробуйте ещё раз.");
                            sc.next();
                        }
                        w = sc.nextInt();
                        switch (w) {
                            case 0:
                                bool = false;
                                break;
                            case 1:
                                System.out.println("Введите пункт(-ы):");
                                Scanner in = new Scanner(System.in);
                                while (in.hasNextLine()) {
                                    String s = in.nextLine();
                                    if (s.isEmpty()) {
                                        break;
                                    }
                                    String[] mas = s.split(" ");
                                    points.add(mas[0], mas[1]);
                                }
                                menu1();
                                break;
                            case 2:
                                System.out.println("Введите название файла:");
                                Scanner in2 = new Scanner(System.in);
                                points.getFile(in2.nextLine() + ".txt");
                                menu1();
                                break;
                            case 3:
                                points.writeInFile();
                                menu1();
                                break;
                            case 4:
                                menu1();
                                break;
                            case 5:
                                points.print();
                                menu1();
                                break;
                        }
                    }
                    menu();
                    break;
                case 2:
                    menu2();
                    boolean bool2 = true;
                    while (bool2) {
                        int w = -1;
                        System.out.println("Введите номер из списка:");
                        while (!sc.hasNextInt()) {
                            System.out.println("Это не номер из списка. Попробуйте ещё раз.");
                            sc.next();
                        }
                        w = sc.nextInt();
                        switch (w) {
                            case 0:
                                bool2 = false;
                                break;
                            case 1:
                                System.out.println("Введите груз(-ы):");
                                Scanner in = new Scanner(System.in);
                                while (in.hasNextLine()) {
                                    String s = in.nextLine();
                                    if (s.isEmpty()) {
                                        break;
                                    }
                                    String[] mas = s.split(" ");
                                    ArrayList<String> ss = new ArrayList<>();
                                    Collections.addAll(ss, mas);
                                    cargoes.add(ss);
                                }
                                menu2();
                                break;
                            case 2:
                                System.out.println("Введите название файла:");
                                Scanner in2 = new Scanner(System.in);
                                cargoes.getFile(in2.nextLine() + ".txt");
                                menu2();
                                break;
                            case 3:
                                cargoes.writeInFile();
                                menu2();
                                break;
                            case 4:
                                menu2();
                                break;
                            case 5:
                                cargoes.print();
                                menu2();
                                break;
                        }
                    }
                    menu();
                    break;
                case 3:
                    menu3();
                    boolean bool3 = true;
                    while (bool3) {
                        int w = -1;
                        System.out.println("Введите номер из списка:");
                        while (!sc.hasNextInt()) {
                            System.out.println("Это не номер из списка. Попробуйте ещё раз.");
                            sc.next();
                        }
                        w = sc.nextInt();
                        switch (w) {
                            case 0:
                                bool3 = false;
                                break;
                            case 1:
                                System.out.println("Введите машину(-ы):");
                                Scanner in = new Scanner(System.in);
                                while (in.hasNextLine()) {
                                    String s = in.nextLine();
                                    if (s.isEmpty()) {
                                        break;
                                    }
                                    String[] mas = s.split(" ");
                                    ArrayList<String> ss = new ArrayList<>();
                                    Collections.addAll(ss, mas);
                                    cars.add(ss);
                                }
                                menu3();
                                break;
                            case 2:
                                System.out.println("Введите название файла:");
                                Scanner in2 = new Scanner(System.in);
                                cars.getFile(in2.nextLine() + ".txt");
                                menu3();
                                break;
                            case 3:
                                cars.writeInFile();
                                menu3();
                                break;
                            case 4:
                                menu3();
                                break;
                            case 5:
                                cars.print();
                                menu3();
                                break;
                        }
                    }
                    menu();
                    break;
                case 4:
                    menu4();
                    boolean bool4 = true;
                    while (bool4) {
                        int w = -1;
                        System.out.println("Введите номер из списка:");
                        while (!sc.hasNextInt()) {
                            System.out.println("Это не номер из списка. Попробуйте ещё раз.");
                            sc.next();
                        }
                        w = sc.nextInt();
                        switch (w) {
                            case 0:
                                bool4 = false;
                                break;
                            case 1:
                                System.out.println("Введите водителя(-ей):");
                                Scanner in = new Scanner(System.in);
                                while (in.hasNextLine()) {
                                    String s = in.nextLine();
                                    if (s.isEmpty()) {
                                        break;
                                    }
                                    String[] mas = s.split(" ");
                                    ArrayList<String> ss = new ArrayList<>();
                                    Collections.addAll(ss, mas);
                                    drivers.add(ss);
                                }
                                menu4();
                                break;
                            case 2:
                                System.out.println("Введите название файла:");
                                Scanner in2 = new Scanner(System.in);
                                drivers.getFile(in2.nextLine() + ".txt");
                                menu4();
                                break;
                            case 3:
                                drivers.writeInFile();
                                menu4();
                                break;
                            case 4:
                                menu4();
                                break;
                            case 5:
                                drivers.print();
                                menu4();
                                break;
                        }
                    }
                    menu();
                    break;
                case 5:
                    menu5();
                    boolean bool5 = true;
                    while (bool5) {
                        int w = -1;
                        System.out.println("Введите номер из списка:");
                        while (!sc.hasNextInt()) {
                            System.out.println("Это не номер из списка. Попробуйте ещё раз.");
                            sc.next();
                        }
                        w = sc.nextInt();
                        switch (w) {
                            case 0:
                                bool5 = false;
                                break;
                            case 1:
                                System.out.println("Введите рейс(-ы):");
                                Scanner in = new Scanner(System.in);
                                while (in.hasNextLine()) {
                                    String s = in.nextLine();
                                    if (s.isEmpty()) {
                                        break;
                                    }
                                    String[] mas = s.split(" ");
                                    ArrayList<String> ss = new ArrayList<>();
                                    Collections.addAll(ss, mas);
                                    flights.add(ss);
                                }
                                menu5();
                                break;
                            case 2:
                                System.out.println("Введите название файла:");
                                Scanner in2 = new Scanner(System.in);
                                flights.getFile(in2.nextLine() + ".txt");
                                menu5();
                                break;
                            case 3:
                                flights.writeInFile();
                                menu5();
                                break;
                            case 4:
                                menu5();
                                break;
                            case 5:
                                flights.print();
                                menu5();
                                break;
                        }
                    }
                    menu();
                    break;
                case 6:
                    Date date = new Date();
                    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                    String str = sdf.format(date.getTime());
                    String[] mas = str.split(":");
                    System.out.println(mas[0] + " " + mas[1]);
                    flights.compareDate(mas);
                    menu();
                    break;
                case 7:
                    flights.getFile("flights.txt");
                    cargoes.getFile("cargo.txt");
                    String[] cargoCode = flights.returnCodes();
                    int weight = cargoes.returnCargoes(cargoCode);
                    System.out.println("Средняя загруженность (по массе) автомобилей = " + weight/cargoCode.length);
                    menu();
                    break;
            }
        }
    }

    static void menu() {
        System.out.println("-------Менюшка-------");
        System.out.println("0. Выход");
        System.out.println("1. Таблица пунктов");
        System.out.println("2. Таблица грузов");
        System.out.println("3. Таблица автомобилей");
        System.out.println("4. Таблица водителей");
        System.out.println("5. Таблица рейсов");
        System.out.println("6. Cписок водителей в рейсе на данный момент времени");
        System.out.println("7. Cредняя загруженность (по массе) автомобилей");
    }

    static void menu1() {
        System.out.println("---Таблица пунктов---");
        System.out.println("0. Вернуться назад");
        System.out.println("1. Добавить пункт(-ы) через консоль");
        System.out.println("2. Добавить пункт(-ы) из файла");
        System.out.println("3. Сохранить в бд");
        System.out.println("4. Вывести таблицу с пунктами (в консоль)");
    }

    static void menu2() {
        System.out.println("---Таблица грузов---");
        System.out.println("0. Вернуться назад");
        System.out.println("1. Добавить груз(-ы) через консоль");
        System.out.println("2. Добавить груз(-ы) из файла");
        System.out.println("3. Сохранить в бд");
        System.out.println("4. Вывести таблицу с грузами (в консоль)");
    }

    static void menu3() {
        System.out.println("---Таблица автомобилей---");
        System.out.println("0. Вернуться назад");
        System.out.println("1. Добавить автомобиль(-и) через консоль");
        System.out.println("2. Добавить автомобиль(-и) из файла");
        System.out.println("3. Сохранить в бд");
        System.out.println("4. Вывести таблицу с автомобилями (в консоль)");
    }

    static void menu4() {
        System.out.println("---Таблица водителей---");
        System.out.println("0. Вернуться назад");
        System.out.println("1. Добавить водителя(-ей) через консоль");
        System.out.println("2. Добавить водителя(-ей) из файла");
        System.out.println("3. Сохранить в бд");
        System.out.println("4. Вывести таблицу с водителями (в консоль)");
    }

    static void menu5() {
        System.out.println("---Таблица рейсов---");
        System.out.println("0. Вернуться назад");
        System.out.println("1. Добавить рейс(-ы) через консоль");
        System.out.println("2. Добавить рейс(-ы) из файла");
        System.out.println("3. Сохранить в бд");
        System.out.println("4. Вывести таблицу с рейсами (в консоль)");
    }
}
