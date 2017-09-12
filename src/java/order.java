//STEP 1. Import required packages
import java.sql.*;

public class order {
   // JDBC driver name and database URL
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost/logintest";

   //  Database credentials
   static final String USER = "root";
   static final String PASS = "myr3216";
   
   public static void main(String[] args) {
   Connection conn = null;
   Statement stmt = null;
   try{
      //STEP 2: Register JDBC driver
      Class.forName("com.mysql.jdbc.Driver");

      //STEP 3: Open a connection
      System.out.println("Connecting to a selected database...");
      conn = DriverManager.getConnection(DB_URL, USER, PASS);
      System.out.println("Connected database successfully...");
      
      //STEP 4: Execute a query
      System.out.println("Creating statement...");
      stmt = conn.createStatement();

      String sql = "SELECT * FROM order";
      ResultSet rs = stmt.executeQuery(sql);
      //STEP 5: Extract data from result set
      while(rs.next()){
         //Retrieve by column name
          String username = rs.getString("username");
         String email = rs.getString("email");
 int phno  = rs.getInt("phno");
          String address = rs.getString("address");
         String caketype = rs.getString("caketype");

        
         
         String cakesize = rs.getString("cakesize");
         Date cdate = rs.getDate("cdate");

         //Display values
         System.out.print("ID: " + username);
         System.out.print(", Age: " + email);
         System.out.print(", First: " + phno);
         System.out.println(", Last: " + address);
         System.out.println(", Last: " + caketype);
         System.out.println(", Last: " + cakesize);
         System.out.println(", Last: " + cdate);
      }
      rs.close();
   }catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }finally{
      //finally block used to close resources
      try{
         if(stmt!=null)
            conn.close();
      }catch(SQLException se){
      }// do nothing
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }//end finally try
   }//end try
   System.out.println("Goodbye!");
}//end main
}//end JDBCExample