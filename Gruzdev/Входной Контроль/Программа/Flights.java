import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.TreeMap;

public class Flights {
    private TreeMap<String, ArrayList<String>> flights = new TreeMap<>();

    public void add(ArrayList<String> al) {
        String str = al.get(0);
        al.remove(0);
        flights.put(str, al);
    }

    public void print() {
        for (String s : flights.keySet()) {
            System.out.print(s + " ");
            for (int i = 0; i != flights.get(s).size(); i++) {
                System.out.print(flights.get(s).get(i) + " ");
            }
            System.out.println();
        }
    }

    public void writeInFile() {
        try(FileWriter writer = new FileWriter("flights.txt", true))
        {
            // запись всей строки
            for (String s : flights.keySet()) {
                writer.write(s + " ");
                for (int i = 0; i != flights.get(s).size(); i++) {
                    writer.write(flights.get(s).get(i) + " ");
                }
                writer.write("\r\n");
            }
            flights.clear();
            writer.flush();
        }
        catch(IOException ex){

            System.out.println(ex.getMessage());
        }
    }

    public void getFile(String nameFile) {
        TreeMap<String, ArrayList<String>> map = new TreeMap<>();
        try(FileReader reader = new FileReader(nameFile)) {
            // читаем посимвольно
            int c;
            String s = "";
            while((c=reader.read())!=-1){
                s += (char) c;
                if ((char) c == '\n') {
                    String[] mas = s.split(" ");
                    ArrayList<String> ss = new ArrayList<>();
                    Collections.addAll(ss, mas);
                    String s1 = ss.get(0);
                    ss.remove(0);
                    flights.put(s1, ss);
                    s = "";
                }
            }
        }
        catch(IOException ex) {

            System.out.println(ex.getMessage());
        }
    }

    public String[] returnCodes() {

        ArrayList<String> mas = new ArrayList<>();
        for (String s : flights.keySet()) {
            mas.add(flights.get(s).get(3));
        }
        return mas.toArray(new String[mas.size()]);
    }

    public void compareDate(String[] mass) {
        for (String s : flights.keySet()) {
            String[] mas = flights.get(s).get(4).split(":");
            String[] mas2 = flights.get(s).get(5).split(":");
            System.out.println(mas[0] + " " + mas[1]);
            System.out.println(mas2[0] + " " + mas2[1]);
            System.out.println(Integer.parseInt(mas[0]) + Integer.parseInt(mas2[0]) + " " + Integer.parseInt(mas[1]) + Integer.parseInt(mas2[1]));
                if (Integer.parseInt(mas[0]) == Integer.parseInt(mass[0]) && Integer.parseInt(mas[1]) == Integer.parseInt(mass[1])) {
                    System.out.println("Водитель " + flights.get(s).get(0) + " в пути");
                } else if (Integer.parseInt(mas[0]) > Integer.parseInt(mass[0])) {
                    System.out.println("Водитель " + flights.get(s).get(0) + " ещё не выехал");
                } else if ((Integer.parseInt(mas[0]) == Integer.parseInt(mass[0])) && (Integer.parseInt(mas[1]) > Integer.parseInt(mass[1]))) {
                        System.out.println("Водитель " + flights.get(s).get(0) + " ещё не выехал");
                } else if ((Integer.parseInt(mas[0]) + Integer.parseInt(mas2[0])) > Integer.parseInt(mass[0])) {
                    System.out.println("Водитель " + flights.get(s).get(0) + " в пути");
                } else if (((Integer.parseInt(mas[0]) + Integer.parseInt(mas2[0])) == Integer.parseInt(mass[0])) && ((Integer.parseInt(mas[1]) + Integer.parseInt(mas2[1])) > Integer.parseInt(mass[1]))) {
                            System.out.println("Водитель " + flights.get(s).get(0) + " в пути");
                } else {
                    System.out.println("Водитель " + flights.get(s).get(0) + " прибыл на место");
                }
        }
    }
}

/*
001 #004 *900 &102 $34 08:09 03:03
002 #002 *456 &312 $92 16:00 03:09
003 #006 *496 &342 $854 19:00 01:09
004 #092 *4236 &734 $943 00:00 04:17
 */
