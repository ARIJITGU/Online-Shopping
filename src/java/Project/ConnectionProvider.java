
package Project;
import java.sql.*;

/**
 * @author ARIJIT
 */
public class ConnectionProvider {
    public static Connection getCon() throws ClassNotFoundException
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/arijit","root","Arijit123#");
            return con;
        }catch(SQLException e)
        {
            e.printStackTrace();
            return null;
        }
    }
}
