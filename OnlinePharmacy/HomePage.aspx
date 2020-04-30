<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="OnlinePharmacy.HomePage" %>
<!DOCTYPE html>


<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Medicine Shop</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="css/landing-page.min.css" rel="stylesheet">

      <style type="text/css">
          .auto-style1 {
              left: 0px;
              top: 0px;
          }
          .auto-style2 {
              display: -ms-flexbox;
              display: flex;
              -ms-flex-wrap: wrap;
              flex-wrap: wrap;
              margin-right: -5px;
              margin-left: -5px;
              text-align: center;
          }
          .auto-style3 {
              width: 100%;
              max-width: 1140px;
              min-width: 992px;
              text-align: center;
              margin-left: auto;
              margin-right: auto;
              padding-left: 15px;
              padding-right: 15px;
          }
          .auto-style4 {
              left: -5px;
              top: 0px;
          }
      </style>

  </head>

  <body>
    
    <!-- Navigation -->
    <nav class="navbar navbar-light bg-light static-top">

      <div class="container">
       
              <a class="nav-link js-scroll-trigger" href="About.aspx">About</a>

              <a class="nav-link js-scroll-trigger" href="ShowMedicine.aspx">Medicines</a>
              <a class="nav-link js-scroll-trigger" href="Contact.aspx">Contact</a>
              <a class="nav-link js-scroll-trigger" href="Review.aspx">Review</a>
              <a class="nav-link js-scroll-trigger" href="faq.aspx">FAQ</a>
              <a class="btn btn-primary" href="SignIn.aspx">Sign in</a>
              <br/>             
      </div>
    </nav>
      
    <!-- Masthead -->
    <header class="masthead text-white text-center">
      <div class="overlay" style="left: 0; top:0"></div>
         <div style="left: 0; top:0px">
            
 <div class="col-xl-9 mx-5">
           <h5 class="text-right">
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <asp:Label ID="LabelS" runat="server" ForeColor="White"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </h5>
       </div>
             </div>
          
      <div class="container">
        <div class="row">
          <div class="col-xl-9 mx-auto">
           
              <h1>ONLINE MEDICINE SHOP</h1>
          </div>
          <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
              <form id="form1" runat="server">
              <div class="form-row">
                <div class="auto-style1">
                  &nbsp;</div>
                <div class="auto-style1">
                  &nbsp;</div>
              </div>
              </form>
          </div>
        </div>
      </div>
    </header>

    <!-- Icons Grid -->
    <section class="features-icons bg-light text-center">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
              <div class="features-icons-icon d-flex">
                <i class="icon-screen-desktop m-auto text-primary"></i>
              </div>
             <h3><a href="#orderonline"> Order Online</a> </h3>
              <p class="lead mb-0">You can order medicine sitting at your home!</p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
              <div class="features-icons-icon d-flex">
                <i class="icon-layers m-auto text-primary"></i>
              </div>
              <h3><a href="#quality">Quality Assurance</a></h3>
              <p class="lead mb-0">We give assurance you to provide original medicine!</p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-0 mb-lg-3">
              <div class="features-icons-icon d-flex">
                <i class="icon-check m-auto text-primary"></i>
              </div>
              <h3><a href="#trusted">Trusted Service</a></h3>
              <p class="lead mb-0">Your will get a quick and quality service from us!</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Image Showcases -->
    <section class="showcase">
      <div class="container-fluid p-0">
        <div class="row no-gutters">

          <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('img/bg-showcase-1.jpg');"></div>
          <div class="col-lg-6 order-lg-1 my-auto showcase-text">
            <h2 id="orderonline">Order Online</h2>
            <p class="lead mb-0">Now you don't need to go to medicine store in the days of your sickness.You just order medicine sitting at your home. We will deliver you the medicine according to your order.</p>
          </div>
        </div>
        <div class="row no-gutters">
          <div class="col-lg-6 text-white showcase-img" style="background-image: url('img/bg-showcase-2.jpg');"></div>
          <div class="col-lg-6 my-auto showcase-text">
            <h2 id="quality">Quality Assurance</h2>
            <p class="lead mb-0">All medicines of our store are checked by our own pharmacists. So we can assure you to provide original and certififed medicine with valid expirey date and correct price.</p>
          </div>
        </div>
        <div class="row no-gutters">
          <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('img/bg-showcase-3.jpg');"></div>
          <div class="col-lg-6 order-lg-1 my-auto showcase-text">
            <h2 id="trusted">Trusted Service</h2>
            <p class="lead mb-0">Ours has a group of young and energetic delivary persons who are ready to serve you the best possible service. So we can get a quick and quality service from us. You will get a friendly behaviour from them.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Testimonials -->
    <section class="testimonials text-center bg-light">
      <div class="container">
        <h2 class="mb-5">DEVELOPER TEAM</h2>
        <div class="row">
          <div class="col-lg-4">
            <div class="testimonial-item mx-auto mb-5 mb-lg-0">
              <img class="img-fluid rounded-circle mb-3" src="img/testimonials-1.jpg" alt="">
              <h5>Md. Saifur Rahman Chowdhury</h5>
              <p class="font-weight-light mb-0">"Lets enjoy life."</p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="testimonial-item mx-auto mb-5 mb-lg-0">
              <img class="img-fluid rounded-circle mb-3" src="img/testimonials-2.jpg" alt="">
              <h5>Soumik Nafiul Ferdous.</h5>
              <p class="font-weight-light mb-0">"Handsome is what handsome does."</p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="testimonial-item mx-auto mb-5 mb-lg-0">
              <img class="img-fluid rounded-circle mb-3" src="img/testimonials-3.jpg" alt="">
              <h5>Radia Rayan Chowdhury</h5>
              <p class="font-weight-light mb-0">"Alhamdulillah for everything."</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Call to Action -->
    <section class="call-to-action text-white text-center">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-xl-9 mx-auto">
            <h2 class="mb-4">Want to buy medicine? Sign up now!</h2>
          </div>
          <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
            <form>
                <div class="col-12 col-md-4 mx-auto">
                  <a type="submit" class="btn btn-block btn-lg btn-primary" href="CustomerRegistration.aspx">Sign up</a>
                </div></form>
              </div>
            
          </div>
        </div>
   
    </section>
            	    <!-- Call to Action -->

      <div class="overlay"></div>
      <div class="auto-style3">
        <div class="row">
          <div class="col-xl-9 mx-auto text-center">
              <h3 class="mb-4">24/7 Hotline: +88-028130211 </h3>
			<h4 class="mb-4">Give your feedback!</h4>
            
          </div>
             
          <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
            <form>
              <div class="auto-style2">
                <div class="col-12 col-md-6 mx-auto">
                  &nbsp;<a type="submit" class="btn btn-block btn-lg btn-primary" href="Review.aspx"><div class="text-center">
                        Write a Review</div>
                    </a>
                &nbsp;</div>
                <div class="auto-style4">
                </div>
              </div>
            </form>
          </div>


        </div>
      </div>

    <!-- Footer -->
    <footer class="footer bg-light">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
            <ul class="list-inline mb-2">
              <li class="list-inline-item">
                <a href="About.aspx">About</a>
              </li>
              <li class="list-inline-item">&sdot;</li>
              <li class="list-inline-item">
                <a href="Contact.aspx">Contact</a>
              </li>
              <li class="list-inline-item">&sdot;</li>
              <li class="list-inline-item">
                <a href="faq.aspx"">FAQ</a>
                  </li>
            </ul>
            <p class="text-muted small mb-4 mb-lg-0">&copy; Online Medicine Website 2018. All Rights Reserved.</p>
          </div>
          <div class="col-lg-6 h-100 text-center text-lg-right my-auto">
            <ul class="list-inline mb-0">
              <li class="list-inline-item mr-3">
                <a href="https://www.facebook.com/">
                  <i class="fa fa-facebook fa-2x fa-fw"></i>
                </a>
              </li>
              <li class="list-inline-item mr-3">
                <a href="https://twitter.com/?lang=en">
                  <i class="fa fa-twitter fa-2x fa-fw"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="https://www.instagram.com/">
                  <i class="fa fa-instagram fa-2x fa-fw"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
