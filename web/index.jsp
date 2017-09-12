
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

<body  onload="disableBackButton()">


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

            
        </div>

    </nav>

	<div class="container">
                    <h1> <img style="width:300px;height:150px"src="images/logo.gif">   </h1>
		</div>


        <div class="row">
            <div class="col-lg-12">
               
                 <center><form action="login_action.jsp" method="post">
        <fieldset style="width: 400px">
            <legend style="color:black;"> Login to Book your order </legend><br>
            <table width='100%' cellspacing="15">
                <tr>
                    <td style="color:black;">User Name</td>
                    <td><input type="text" name="uname" required="required" /></td>
                </tr><br>
                 <tr>
                    <td style="color:black;">Password</td>
                    <td><input type="password" name="pass" required="required" /></td>
                </tr>        
            </table><br>
            <center><input type="submit"  value="Login" /></center>
        </fieldset>
        <br><br>
        <center style="color:black;">New to our site? Don't worry<a style="color:red;"href="registration.jsp"> Register Here</a></center>
    </form>
</center>
                
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
<script type = "text/javascript" >
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>
</html>


