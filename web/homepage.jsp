
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
                <a href="products.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/wedding.png" alt="">
                </a>
                <h3>
                    <a href="products.jsp">Wedding Cakes</a>
                </h3>
                <p>A wedding cake is the traditional cake served at wedding receptions following dinner. In some parts of England, the wedding cake is served at a wedding breakfast, note that 'wedding breakfast' does not mean the meal will be held in the morning but at a time following the ceremony on the same day. In modern Western culture, the cake is usually on display and served to guests at the reception. Traditionally, wedding cakes were made to bring good luck to all guests and the couple. Modernly however, they are more of a centerpiece to the wedding and are not always even served to the guests. Some cakes are built with only a single edible tier for the bride and groom to share.</p>
            </article>
            <article class="col-md-4 article-intro">
                <a href="products.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/bday.png" alt="">
                </a>
                <h3>
                    <a href="products.jsp">Birthday Cakes</a>
                </h3>
                <p>The birthday cake has been an integral part of the birthday celebrations in western European countries since the middle of the 19th century, which extended to Western culture.Certain rites and traditions, such as singing of birthday songs, associated with birthday cakes are common to many Western cultures. The Western tradition of adding lit candles to the top of a birthday cake originates in 18th-century Germany. However, the intertwining of cakes and birthday celebrations stretches back to the ancient Romans. The development of the birthday cake has followed the development of culinary and confectionery advancement. While throughout most of Western history, these elaborate cakes in general were the privilege of the wealthy.</p>
            </article>

            <article class="col-md-4 article-intro">
                <a href="products.jsp">
                    <img class="img-responsive img-rounded" style="width:700px;height:300px"src="images/babyshower.png" alt="">
                </a>
                <h3>
                    <a href="products.jsp">Baby Shower Cakes</a>
                </h3>
                <p >Cake is a form of sweet dessert that is typically baked. In its oldest forms, cakes were modifications of breads but now cover a wide range of preparations that can be simple or elaborate and share features with other desserts such as pastries, meringues, custards and pies.Typical cake ingredients are flour, sugar, eggs, butter or oil, a liquid, and leavening agents, such as baking soda and/or baking powder. Common additional ingredients and flavourings include dried, candied or fresh fruit, nuts, cocoa, and extracts such as vanilla, with numerous substitutions for the primary ingredients. Cakes can also be filled with fruit preserves or dessert sauces (like pastry cream), iced with buttercream or other icings, and decorated with marzipan, piped borders, or candied fruit.</p>
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
