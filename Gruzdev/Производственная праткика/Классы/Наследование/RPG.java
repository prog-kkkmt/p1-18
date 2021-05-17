/*
Задание: https://stepik.org/lesson/90695/step/10?unit=66923

Необходимо описать недостающие методы и добавить часть кода для того, чтобы программа заработала.
 */



import java.util.ArrayList;

class Item{
    int price, weight, type;
    public Item(int price, int weight, int type){
        this.price = price;
        this.weight = weight;
        this.type = type;
    }
}

class Enemy{
    int hp, damage;
    int exp;
    public Enemy(int hp, int damage, int exp){
        this.hp = hp;
        this.damage = damage;
        this.exp = exp;
    }
}

abstract class Hero{

    protected String nickName;
    protected int s, a, i, exp, hp, mana; // сила ловкость интеллект опыт здоровье мана
    protected int x, y; // координаты героя на карте
    protected ArrayList<Item> items = new ArrayList<>(); // список поднятых предметов
    protected int damage; // урон

    public int getMana(){
        return mana;
    }
    public int getDamage(){
        return damage;
    }
    public int getHp(){
        return hp;
    }
    public void goToCursor(int xx, int yy){
        x = xx; y = yy;
    }

    public abstract void attack(Enemy enemy); // этот метод должнен быть определен в классах наследниках

    public abstract void defense(Enemy enemy);// этот метод должнен быть определен в классах наследниках

    public void openItem(Item item){
        if ((int) (Math.random()*100 + 1) <= 50) {
            items.add(item);
        }
        // метод должен добавлять предмет в список с вероятностью 50 %
        // для осуществления вероятностных процессов можно использовать случайное число от 0 до 100.
    }
}

class Warrior extends Hero{
    public Warrior(){
        hp = 500;
        mana = 10;
        s = 100;
        a = 50;
        i = 1;
        exp = 0;
        damage = 150;
        //базовые значение
    }
            /*
класс должен обладать всеми свойствами героя при создании воин должен обладать следующими характеристиками:
 здоровье - 500, мана - 10, сила - 100, ловкость - 50, интеллект - 1, опыт 0, урон - 150. При атаке герой наносит цели урон и получает урон в ответ от цели, действия повторяются пока кто то не победит. В случае победы герой получает опыт цели, каждые 500 единиц опыта герой получает новый уровень. Новый уровень дает +10 ко всем характеристикам, +200 здоровья и +20 урона.Если воин имеет предмет 1 типа, к его урону добавляется 100.
            Уже мертвая цель - урона герою не наносит!!!
            */

    @Override
    public void openItem(Item item){
        if (item.type != 2) {
            items.add(item);
        }
    }

    @Override
    public void attack(Enemy enemy) {
        if(enemy.hp > 0 && this.hp > 0) {
            enemy.hp -= this.damage;
        }
        if (this.hp > 0 && enemy.hp <= 0) {
            this.exp += enemy.exp;
            int expOnLvl = this.exp / 500;
            if (expOnLvl > 0) {
                this.exp -= 500 * expOnLvl;
                this.hp += 200 * expOnLvl;
                this.damage += 20 * expOnLvl;
                this.mana += 10 * expOnLvl;
                this.s += 10 * expOnLvl;
                this.a += 10 * expOnLvl;
                this.i += 10 * expOnLvl;
            }
        }
    }

    @Override
    public void defense(Enemy enemy) {
        if (this.hp > 0 && enemy.hp > 0) {
            this.hp -= enemy.damage;
            if (this.hp <= 0) {
                System.out.print("Ваш герой был убит");
            }
        }
    }
}

class Archer extends Hero{
    public Archer(){
        hp = 200;
        mana = 50;
        a = 150;
        i = 30;
        exp = 0;
        damage = 200;
        //базовые значение
    }
    /*
        класс должен обладать всеми свойствами героя при создании лучник должен обладать следующими характеристиками: здоровье - 200, мана - 50, сила - 20, ловкость - 150, интеллект - 30, опыт 0, урон - 200.
    атака по аналогии с воином, но в процессе атаки лучник имеет 30% шанс избежать урон
    лучник всегда открывает предмет - 100%
    Новый уровень дает +10 ко всем характеристикам, +50 здоровья и +50 урона и 30 ловкости.
    */
    @Override
    public void openItem(Item item){
        if (item.type != 2) {
            items.add(item);
        }
    }

    @Override
    public void attack(Enemy enemy) {
        if(enemy.hp > 0 && this.hp > 0) {
            enemy.hp -= this.damage;
        }
        if (this.hp > 0 && enemy.hp <= 0) {
            this.exp += enemy.exp;
            int expOnLvl = this.exp / 500;
            if (expOnLvl > 0) {
                this.exp -= 500 * expOnLvl;
                this.hp += 50 * expOnLvl;
                this.damage += 50 * expOnLvl;
                this.mana += 10 * expOnLvl;
                this.s += 10 * expOnLvl;
                this.a += 30 * expOnLvl;
                this.i += 10 * expOnLvl;
            }
        }
    }

    @Override
    public void defense(Enemy enemy) {
        if (this.hp > 0 && enemy.hp > 0) {
            if ((int) (Math.random()*100 + 1) <= 30) {
                this.hp -= 0;
            } else {
                this.hp -= enemy.damage;
                if (this.hp <= 0) {
                    System.out.print("Ваш герой был убит");
                }
            }
        }
    }
}

class Magician extends Hero{
    public Magician(){
        hp = 100;
        mana = 5000;
        s = 5;
        a = 30;
        i = 300;
        exp = 0;
        damage = 40;
        //базовые значение
    }
    private ArrayList<Item> casts = new ArrayList<>();
    /*
        класс должен обладать всеми свойствами героя при создании маг должен обладать следующими характеристиками: здоровье - 100, мана - 5000, сила - 5, ловкость - 30, интеллект - 300, опыт 0, урон - 40.
    атака по аналогии с воином
    помимо обычной атаки, маг имеет возможность бить заклинанием в процессе атаки
    защита мага осуществляется магическим щитом, который полгащает весь урон, но вместо здоровья тратит ману. Новый уровень дает +10 ко всем характеристикам, +30 здоровья, 1000 маны и +10 урона.
    В случае возможности убить врага с руки - маг бьет с руки!!! в Первую очередь
    */
    public void makeCast(Enemy enemy){
        if(!casts.isEmpty()) {
            this.mana -= 100;
            enemy.hp -= 1000;
            casts.remove(casts.size()-1);
        }
        // если в списке есть заклятия можно его произнести потратив 100 маны и нанеся 1000 урона цели.
        // после произнесения предмет из списка пропадает
    }

    public void eduCast(Item item){
        if (item.type == 2) {
            casts.add(item);
        }
                /*
                если предмет или предметы из списка имеют тип 2, это заклинания и их нужно добавить в список
заклинаний мага
                */
    }

    @Override
    public void openItem(Item item){
        if (item.type == 2) {
            casts.add(item);
        }
    }

    @Override
    public void attack(Enemy enemy) {
        if(enemy.hp > 0 && this.hp > 0) {
            if (enemy.hp - this.damage <= 0) {
                enemy.hp -= this.damage;
            } else {
                if (this.mana >= 100) {
                    makeCast(enemy);
                } else {
                    enemy.hp -= this.damage;
                }
            }
        }
        if (this.hp > 0 && enemy.hp <= 0) {
            this.exp += enemy.exp;
            int expOnLvl = this.exp / 500;
            if (expOnLvl > 0) {
                this.exp -= 500 * expOnLvl;
                this.hp += 200 * expOnLvl;
                this.damage += 20 * expOnLvl;
                this.mana += 10 * expOnLvl;
                this.s += 10 * expOnLvl;
                this.a += 10 * expOnLvl;
                this.i += 10 * expOnLvl;
            }
        }
    }

    @Override
    public void defense(Enemy enemy) {
        if (this.hp > 0 && enemy.hp > 0) {
            this.hp -= enemy.damage;
            if (this.hp <= 0) {
                System.out.print("Ваш герой был убит");
            }
        }
    }
}
