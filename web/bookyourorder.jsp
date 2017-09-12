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


    <title>Book Your Order</title>


    <link href="css/bootstrap.min.css" rel="stylesheet">


    <link href="css/custom.css" rel="stylesheet">


</head>

<body>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
     %><center>
         <br><img src="./images/donttry.gif"><br><br><br><b>Don't act smart..!<br><br>You are not logged in</b><br><br><br>
    <a href="index.jsp"><button style=" background-color: hotpink; color: white;border-radius: 50%;padding: 15px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;margin: 4px 2px;cursor: pointer;" >Please Login</button></a>
    </center>
    <%} else {
    %>

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
    
        <div class="row">
            <div class="col-lg-12">
                
                    <center> <form name="book"action="bookyourorder_action.jsp" onsubmit="return validateForm()" method="post">
                        <input type="text" name="username" maxlength="30" value="<%=session.getAttribute("userid")%>" class="textcontact" /><br><br>
                        <input type="text" name="email"maxlength="30" placeholder="E-mail Address" class="textcontact" /><br><br>
                        <input type="text" name="phno"maxlength="30" placeholder="Phone Number" class="textcontact" /><br><br>
			<textarea name="address" cols="30" rows="5" placeholder="Address"></textarea><br><br>
                        <select name="caketype">
                        <option value="select">---select caketype---</option>
                        <option value="wedding">Wedding</option>
                        <option value="bday">Birthday</option>
                        <option value="babyshower">BabyShower</option>
                        <option value="cheese">Cheese</option>
                        <option value="sponge">Sponge</option>
                        <option value="butter">Butter</option>
                        <option value="layer">Layer</option>
                        <option value="sheet">Sheet</option>
                        <option value="cup">Cup</option>
                        <option value="fondant">Fondant</option>
                        <option value="swissroll">Swiss Roll</option>
                        <option value="pastry">Pastry</option>
                        </select>
                         <select name="sizeofake">
                        <option value="select">---select---</option>
                        <option value="0.5kg">0.5kg  -- 110$</option>
                        <option value="1kg">1.0kg  -- 210$</option>
                        <option value="2kg">2.0kg  -- 310$</option>
                        <option value="3kg">3.0kg  -- 500$</option>
                        </select>
                            <br><br>
                        <input type="submit"value="submit">
                        </form></center>
                
                 </div>
        </div>


        
	
	<footer>

        
        <div class="small-print">
        	<div class="container">
                        <marquee><p>Copyright &copy; Yaswanth Reddy 2016</p></marquee>
        	</div>
        </div>
	</footer>
<%
            }
%>

</body>
<script>
function validateForm() {
    var x = document.forms["book"]["email"].value;
    if (x == null || x == "") {
        alert("Incomplete Details");
        return false;
    }
    var y = document.forms["book"]["phno"].value;
    if (y == null || y == "") {
        alert("Incomplete Details");
        return false;
    }
    var z = document.forms["book"]["address"].value;
    if (z == null || z == "") {
        alert("Incomplete Details");
        return false;
    }
    var a = document.forms["book"]["caketype"].value;
    if (a == null || a == "" || a=="select") {
        alert("Incomplete Details");
        return false;
    }
    var b = document.forms["book"]["sizeofcake"].value;
    if (b == null || b == "" || b=="select") {
        alert("Incomplete Details");
        return false;
    }
}
</script>
</html>


