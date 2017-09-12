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


    <title>Cake Factory</title>


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
                    <li class="active">
                        <a href="homepage.jsp">Home</a>
                    </li>
                    
                    <li>
                        <a href="products.jsp">Products</a>
                    </li>
                    <li>
                        <a href="contactus.jsp">Contact Us</a>
                    </li>
                    <li>
                        <a href="orders.jsp">My Orders</a>
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
                <h1 class="page-header">
                    <small>complaint Registered Successfully...!!</small>
                </h1>
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


