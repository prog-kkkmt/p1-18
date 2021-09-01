import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.TreeMap;

public class Cargo {
    private TreeMap<String, ArrayList<String>> cargoes = new TreeMap<>();

    public void add(ArrayList<String> al) {
        String str = al.get(0);
        al.remove(0);
        cargoes.put(str, al);
    }

    public void print() {
        for (String s : cargoes.keySet()) {
            System.out.print(s + " ");
            for (int i = 0; i != cargoes.get(s).size(); i++) {
                System.out.print(cargoes.get(s).get(i) + " ");
            }
            System.out.println();
        }
    }

    public int returnCargoes(String[] str) {
        int weight = 0;
        for (String s : str) {
            for (String s_ : cargoes.keySet()) {
                if (s.equals(s_)) {
                    String s1 = cargoes.get(s_).get(1).replace("\r\n","");
                    System.out.println(s1.length());
                    weight += Integer.parseInt(s1);
                }
            }
        }
        return weight;
    }

    public void writeInFile() {
        try(FileWriter writer = new FileWriter("cargo.txt", true))
        {
            // запись всей строки
            for (String s : cargoes.keySet()) {
                writer.write(s + " ");
                for (int i = 0; i != cargoes.get(s).size(); i++) {
                    writer.write(cargoes.get(s).get(i) + " ");
                }
                writer.write("\r\n");
            }
            cargoes.clear();
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
                    cargoes.put(s1, ss);
                    s = "";
                }
            }
        }
        catch(IOException ex) {

            System.out.println(ex.getMessage());
        }
    }
}
