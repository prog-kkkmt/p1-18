import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.TreeMap;

public class Drivers {
    private TreeMap<String, ArrayList<String>> drivers = new TreeMap<>();

    public void add(ArrayList<String> al) {
        String str = al.get(0);
        al.remove(0);
        drivers.put(str, al);
    }

    public void print() {
        for (String s : drivers.keySet()) {
            System.out.print(s + " ");
            for (int i = 0; i != drivers.get(s).size(); i++) {
                System.out.print(drivers.get(s).get(i) + " ");
            }
            System.out.println();
        }
    }

    public void writeInFile() {
        try(FileWriter writer = new FileWriter("drivers.txt", true))
        {
            // запись всей строки
            for (String s : drivers.keySet()) {
                writer.write(s + " ");
                for (int i = 0; i != drivers.get(s).size(); i++) {
                    writer.write(drivers.get(s).get(i) + " ");
                }
                writer.write("\r\n");
            }
            drivers.clear();
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
                    drivers.put(s1, ss);
                    s = "";
                }
            }
        }
        catch(IOException ex) {

            System.out.println(ex.getMessage());
        }
    }
}
