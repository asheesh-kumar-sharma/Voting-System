
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MyDb {
    Connection con;
    
    public Connection getCon()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingsystem", "root", "root");
        } catch (Exception e) {
        } 
        return con;
    }
    
}
