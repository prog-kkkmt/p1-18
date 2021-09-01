import java.sql.*

class DataBase(nameDataBase: String) {
    private val nameDataBase: String = nameDataBase
    private var connection: Connection? = null

    init {
        try {
            Class.forName("org.sqlite.JDBC")
        } catch (ex: ClassNotFoundException) {
            ex.printStackTrace()
        }
        try {
            connection = DriverManager.getConnection("jdbc:sqlite:$nameDataBase")
            println("Success");
        } catch (ex: SQLException) {
            ex.printStackTrace()
        }
    }

    /**
     *  Количество полностью свободных номеров, то есть тех, в которых не поселены граждане
     * */
    fun getAvailableRooms(): Int {
        var countRoom = 0
        try {
            val stmt = connection!!.createStatement()
            val command =  "SELECT COUNT(room_number) as count_room FROM room WHERE code NOT IN (" +
                " SELECT code_room FROM accommodation)"
            val rooms = stmt.executeQuery(command)

            if (rooms.next()) {
                countRoom = rooms.getInt("count_room")
            }
        } catch (ex: SQLException) {
            System.err.println(ex.javaClass.name + ": " + ex.message)
        }
        return countRoom
    }

    /**
     * Сравнительную степень занятости (в процентах) номеров по категориям
     * */
    fun getDegreeEmployment(): MutableMap<String, String> {
        var resultMap = mutableMapOf<String, String>()
        try {
            val stmt = connection!!.createStatement()
            val command =  "SELECT c.name AS name, COUNT(c.name) * 1.0 / (SELECT COUNT(*) FROM accommodation) as result\n" +
                    "from accommodation a INNER JOIN room r ON a.code_room = r.code\n" +
                    " INNER JOIN category c ON r.category_code = c.code\n" +
                    " GROUP BY c.name;"
            val result = stmt.executeQuery(command)

            var percent: Int
            while (result.next()) {
                percent = (result.getFloat("result") * 100).toInt()
                resultMap.put(result.getString("name"), "${percent}%")
            }
        } catch (ex: SQLException) {
            System.err.println(ex.javaClass.name + ": " + ex.message)
        }
        return resultMap
    }
}