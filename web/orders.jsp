<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "logintest";
String userId = "root";
String password = "myr3216";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%-- 
    Document   : contactus_success
    Created on : Oct 24, 2016, 7:44:09 PM
    Author     : Yaswanth Reddy
--%>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>Order Success</title>


    <link href="css/bootstrap.min.css" rel="stylesheet">


    <link href="css/custom.css" rel="stylesheet">


</head>

<body>


    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="homepage.jsp">
                	<span class="glyphicon glyphicon-fire"></span> 
                	Cake Factory
                </a>
            </div>

            <div class="collapse navbar-collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li >
                        <a>Booking Order</a>
                    </li>
                 
                </ul>
                                        <div class="navbar-form navbar-right" id="navbar">
                                           
					<li>
                                             <%=session.getAttribute("userid")%>  
                                        <a style="color:white"href="logout.jsp">LogOut</a>
                                        </li>
					</div>
            </div>
        </div>
    </nav>
	<div class="jumbotron feature">
		<div class="container">
                    <h1> <img style="width:300px;height:150px"src="images/logo.gif">        FREE...!Home Delivery</h1>
		</div>
	</div>
    

                <h1 class="page-header">
                    <center><small>Your Orders</small></center><br/>
                </h1>
                <table align="center" cellpadding="25" cellspacing="25" border="1">
                           <tr >
                            <td><b>UserName</b></td>
                            <td><b>Email</b></td>
                            <td><b>Phno</b></td>
                            <td><b>Address</b></td>
                            <td><b>CakeType</b></td>
                            <td><b>CakeSize</b></td>

                            </tr>
           
                 

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM record where username=14003216";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

    <td><a href="deleteorder.jsp"><%=resultSet.getString("username") %></a></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("phno") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("caketype") %></td>
<td><%=resultSet.getString("cakesize") %></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
 </div>
 </div>
<footer>

        
        <div class="small-print">
        	<div class="container">
                        <marquee><p>Copyright &copy; Yaswanth Reddy 2016</p></marquee>
        	</div>
        </div>
	</footer>


</body>

</html>
