
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

       

            </div>

        </div>

    </nav>

	

    <div class="container">


        <div class="row">
            <div class="col-lg-12">
              </div>
        </div>


        <div class="row">
            <center>
                  <form class="form"  name="myForm" id="myForm" onsubmit="return validateForm('myForm');" method="post" action="registration_action.jsp">
			<h2>Create your Account here</h2><br/>
                        <label>First Name :</label>
			<input type="text" name="fname" value="" ><br/><br/>
			<label>Last Name :</label>
			<input input type="text" name="lname" value=""><br/><br/>
			
			<label>Email :</label>
			<input input type="text" name="email" value="" ><br/><br/>
			
			<label>User Name :</label>
			<input input type="text" name="uname" value=""><br/><br/>
			
			<label>Password :</label>
			<input input type="password" name="pass" value="" ><br/><br/>
			
			<input input type="submit" id="register" value="Submit" ><br/><br/>
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


</body>

</html>
