<%-- 
    Document   : products
    Created on : Oct 24, 2016, 7:50:45 PM
    Author     : Yaswanth Reddy
--%>


<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>Cake Factory</title>


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
                        <a href="homepage.jsp">Home</a>
                    </li>
                    
                    <li class="active">
                        <a href="products.jsp">Products</a>
                    </li>
                    <li>
                        <a href="contactus.jsp">Contact Us</a>
                    </li>
                    <li>
                        <a href="orders.jsp">My Orders</a>
                    </li>
                    <li>
                        <a href="about.jsp">AboutUs</a>
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


    <div class="container">


        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Superior 
                    <small>Quality Cakes</small>
                </h1>
                <h4>We provide you wide range of varieties of cakes and gift wraps or packing for exports are absolutely free upon purchase.</h4>
            </div>
        </div>


        <div class="row">
            <article class="col-md-4 article-intro">
                <a href="bookyourorder.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/wedding.png" alt="">
                </a>
                <h3>
                    <a href="bookyourorder.jsp">Wedding Cakes</a>
                </h3>
                 </article>
            <article class="col-md-4 article-intro">
                <a href="bookyourorder.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/bday.png" alt="">
                </a>
                <h3>
                    <a href="bookyourorder.jsp">Birthday Cakes</a>
                </h3>
                  </article>

            <article class="col-md-4 article-intro">
                <a href="bookyourorder.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/babyshower.png" alt="">
                </a>
                <h3>
                    <a href="bookyourorder.jsp">Baby Shower Cakes</a>
                </h3>
                 </article>
             <article class="col-md-4 article-intro">
                <a href="bookyourorder.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/cheese.png" alt="">
                </a>
                <h3>
                    <a href="bookyourorder.jsp">Cheese Cakes</a>
                </h3>
                 </article>
             <article class="col-md-4 article-intro">
                <a href="bookyourorder.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/sponge.png" alt="">
                </a>
                <h3>
                    <a href="bookyourorder.jsp">Sponge Cakes</a>
                </h3>
                 </article>
            <article class="col-md-4 article-intro">
                <a href="bookyourorder.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/butter.png" alt="">
                </a>
                <h3>
                    <a href="bookyourorder.jsp">Butter Cakes</a>
                </h3>
                 </article>
             <article class="col-md-4 article-intro">
                <a href="bookyourorder.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/layer.png" alt="">
                </a>
                <h3>
                    <a href="bookyourorder.jsp">Layer Cakes</a>
                </h3>
                 </article>
            <article class="col-md-4 article-intro">
                <a href="bookyourorder.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/sheet.png" alt="">
                </a>
                <h3>
                    <a href="bookyourorder.jsp">Sheet Cakes</a>
                </h3>
                 </article>
            <article class="col-md-4 article-intro">
                <a href="bookyourorder.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/cup.png" alt="">
                </a>
                <h3>
                    <a href="bookyourorder.jsp">Cup Cakes</a>
                </h3>
                 </article>
            <article class="col-md-4 article-intro">
                <a href="bookyourorder.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/fondant.png" alt="">
                </a>
                <h3>
                    <a href="bookyourorder.jsp">Fondant Cakes</a>
                </h3>
                 </article>
            <article class="col-md-4 article-intro">
                <a href="bookyourorder.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/swiss.png" alt="">
                </a>
                <h3>
                    <a href="bookyourorder.jsp">Swiss Roll</a>
                </h3>
                 </article>
            <article class="col-md-4 article-intro">
                <a href="bookyourorder.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/pastry.png" alt="">
                </a>
                <h3>
                    <a href="bookyourorder.jsp">Pastries</a>
                </h3>
                 </article>
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

</html>
