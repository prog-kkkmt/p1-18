import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.TreeMap;

public class Points {
    private TreeMap<String, String> points = new TreeMap<>();

    public void add(String a, String b) {
        points.put(a, b);
    }

    public void print() {
        for (String s : points.keySet()) {
            System.out.print(s + " " + points.get(s));
            System.out.println();
        }
    }

    public void writeInFile() {
        try(FileWriter writer = new FileWriter("points.txt", false))
        {
            // запись всей строки
            for (String s : points.keySet()) {
                writer.write(s + " ");
                writer.write(points.get(s) + " ");
                writer.write("\r\n");
            }
            points.clear();
            writer.flush();
        }
        catch(IOException ex){

            System.out.println(ex.getMessage());
        }
    }


    public void getFile(String fileName) {
        TreeMap<String, String> map = new TreeMap<>();
        try(FileReader reader = new FileReader(fileName)) {
            int c;
            String s = "";
            while((c=reader.read())!=-1){
                s += (char) c;
                if ((char) c == '\n') {
                    System.out.println("\n + *** +" + s + "+ *** + \n");
                    String[] mas = s.split(" ");
                    points.put(mas[0], mas[1].replace("\n",""));
                    s = "";
                }
            }
        }
        catch(IOException ex) {

            System.out.println(ex.getMessage());
        }
    }
}
