package Database;

import java.sql.*;

public class DBUtils {
    private static String username = "";
    private static String pwd = "";
    private static volatile Connection instance = null;

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        if (instance == null || instance.isClosed()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            username = "";
            pwd = "";
            instance = DriverManager.getConnection("jdbc:mysql://localhost:3306/SimpleToDo?autoReconnect=true&validationQuery=select 1", username, pwd);
        }

        return instance;
    }

    public static void close() throws SQLException {
        if (instance != null && !instance.isClosed()) {
            instance.close();
        }
        instance = null;
    }
}
