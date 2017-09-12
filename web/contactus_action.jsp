<%@ page import ="java.sql.*" %>
<%
    String username = request.getParameter("username");    
    String email = request.getParameter("email");
    String subject = request.getParameter("subject");
    String message = request.getParameter("message");
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logintest",
            "root", "myr3216");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into contactus(username,email,subject,message,cdate) values ('" + username + "','" + email + "','" + subject + "','" + message + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("contactus_success.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("contactus.jsp");
    }
%>