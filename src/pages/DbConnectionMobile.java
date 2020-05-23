package pages;

  /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



import java.sql.*;


public class DbConnectionMobile {
    public Connection con;
    public Statement stmt;
    public PreparedStatement pstmt;
    public ResultSet rst;
    public DbConnectionMobile()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankLocker","root","root");
           // Class.forName("org.sqlite.JDBC");
            // con=DriverManager.getConnection("jdbc:sqlite:mobile.db");       
        }
        catch(Exception e)
        {
            
           e.printStackTrace();
        }
    }
    
}
