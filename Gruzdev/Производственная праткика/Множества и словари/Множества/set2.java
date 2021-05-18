/*
Задание: https://stepik.org/lesson/98411/step/12?thread=solutions&unit=74237

Вводится несколько строк по два слова в каждой - имена двух друзей. Дружба - вещь взаимная(с двух сторон!!!).
 Иначе люди - не друзья.

Необходимо вывести ответ в соответствии с примерами ниже - список друзей.
 Список состоит из имен людей, список выстроен в лексографическом порядке(по алфавиту) по возрастанию,
  после имени человека идет фраза " дружит с : ", далее следует список имен его друзей, выстроенный так же по возрастанию.



 */





import java.util.*;

public class set2 {
    public static void main(String[] args) {
        TreeMap<String, TreeSet<String>> map = new TreeMap<>();
        Scanner in = new Scanner(System.in);
        while (in.hasNextLine()){
            String s = in.nextLine();
            if (s.isEmpty()) {
                break;
            }
            String[] ss = s.split(" ");
            String name1 = ss[0];
            String name2 = ss[1];
            if (map.containsKey(name1) && map.containsKey(name2)) {
                map.get(name1).add(name2);
                map.get(name2).add(name1);
            } else if (!map.containsKey(name1) && map.containsKey(name2)){
                map.get(name2).add(name1);
                TreeSet<String> set = new TreeSet<>();
                set.add(name2);
                map.put(name1, set);
            } else if (!map.containsKey(name2) && map.containsKey(name1)) {
                map.get(name1).add(name2);
                TreeSet<String> set = new TreeSet<>();
                set.add(name1);
                map.put(name2, set);
            } else {
                TreeSet<String> set1 = new TreeSet<>();
                set1.add(name2);
                TreeSet<String> set2 = new TreeSet<>();
                set2.add(name1);
                map.put(name1, set1);
                map.put(name2, set2);
            }
        }

        for (String s : map.keySet()) {
            System.out.print(s + " дружит с : ");
            for (String s_ : map.get(s)) {
                System.out.print(s_ + " ");
            }
            System.out.println();
        }





    }
}
