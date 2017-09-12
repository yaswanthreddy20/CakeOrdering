<%@ page import ="java.sql.*" %>
<%
    String username = request.getParameter("username");    
    String email = request.getParameter("email");
    String phno = request.getParameter("phno");
    String address = request.getParameter("address");
    String caketype = request.getParameter("caketype");
    String cakesize = request.getParameter("cakesize");
    String orderdate = request.getParameter("orderdate");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logintest",
            "root", "myr3216");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into record(username,email,phno,address,caketype,cakesize,orderdate) values ('" + username + "','" + email + "','" + phno + "','" + address + "', '" + caketype + "','" + cakesize + "',CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("bookyourorder_success.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("bookyourorder.jsp");
    }
%>