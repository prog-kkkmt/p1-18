import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.TreeMap;

public class Cars {
    private TreeMap<String, ArrayList<String>> cars = new TreeMap<>();

    public void add(ArrayList<String> al) {
        String str = al.get(0);
        al.remove(0);
        cars.put(str, al);
    }

    public void print() {
        for (String s : cars.keySet()) {
            System.out.print(s + " ");
            for (int i = 0; i != cars.get(s).size(); i++) {
                System.out.print(cars.get(s).get(i) + " ");
            }
            System.out.println();
        }
    }

    public void writeInFile() {
        try(FileWriter writer = new FileWriter("cars.txt", true))
        {
            for (String s : cars.keySet()) {
                writer.write(s + " ");
                for (int i = 0; i != cars.get(s).size(); i++) {
                    writer.write(cars.get(s).get(i) + " ");
                }
                writer.write("\r\n");
            }
            cars.clear();
            writer.flush();
        }
        catch(IOException ex){

            System.out.println(ex.getMessage());
        }
    }

    public void getFile(String nameFile) {
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
                    cars.put(s1, ss);
                    s = "";
                }
            }
        }
        catch(IOException ex) {

            System.out.println(ex.getMessage());
        }
    }
}
