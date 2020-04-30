<!DOCTYPE html>
<html lang="en">
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Online Medicine Shop</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" type="text/css" href="../bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link href="css/global.css" type="text/css" rel="stylesheet">
       <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            left: 15px;
            top: -544px;
        }
    </style>
</head>
<body style="background-image: url('Image/bg (7).jpg')">
    <nav class="navbar navbar-light bg-light static-top">
      <div class="container">
       
              <a class="nav-link js-scroll-trigger" href="HomePage.aspx">Home</a>
          <a class="nav-link js-scroll-trigger" href="ShowMedicine.aspx">Medicines</a>
              <a class="nav-link js-scroll-trigger" href="About.aspx">About</a>
              <a class="nav-link js-scroll-trigger" href="Contact.aspx">Contact</a>

              <a class="nav-link js-scroll-trigger" href="faq.aspx">FAQ</a>

        <a class="btn btn-primary" href="CustomerRegistration.aspx">Sign up</a>

      </div>
	  
    </nav>
    <div class="row">
        <div class="col-md-4 com-sm-4 col-xs-12"></div>
        <div class="col-md-4 com-sm-4 col-xs-12">
            <form class="form-container">
                <h1>LOGIN AS CUSTOMER</h1>
                <div class="form-group">
                    <label>User Name</label>
                    <input type="name" class="form-control" id="TextBoxUser" placeholder="Name">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" id="TextBoxPass" placeholder="Password">
                </div>

                <button type="submit" class="btn btn-default" onclick="ButtonLogin_Click" id="ButtonLogin">Login</button>
            </form>
        </div>
        <div class="auto-style1"></div>
    </div>
</body>
</html>
