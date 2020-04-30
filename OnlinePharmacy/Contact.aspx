<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OnlinePharmacy.Contact" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Pharmacy Website</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/business-casual.min.css" rel="stylesheet">
</head>

<!-- Navigation -->
<nav class="navbar navbar-light bg-light static-top">
                   <h1 style="text-align:center" class="auto-style2">
        <a href="HomePage.aspx" style="text-decoration: none"><span class="site-heading-upper text-primary mb-3" style="font-weight: bold; color: #CC3300"><strong>Online Medicine Shop</strong></span></a><strong> </strong>
        <span class="site-heading-lower"></span>
        </h1>
    <div class="container">

        <a class="nav-link js-scroll-trigger" href="HomePage.aspx">Home</a>

        <a class="nav-link js-scroll-trigger" href="ShowMedicine.aspx">Medicines</a>
        <a class="nav-link js-scroll-trigger" href="About.aspx">About</a>

        <a class="nav-link js-scroll-trigger" href="faq.aspx">FAQ</a>

        <a class="btn btn-primary" href="SignIn.aspx">Sign in</a>

    </div>

</nav>
<body>

    <h1 class="site-heading text-center text-white d-none d-lg-block">
        <span class="site-heading-upper text-primary mb-3"></span>
        <a href="HomePage.aspx" style="text-decoration: none"><span class="site-heading-lower text-primary mb-3">Visit Our Shop</span></a>
    </h1>

    <section class="page-section cta">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 mx-auto">
                    <div class="cta-inner text-center rounded">
                        <h2 class="section-heading mb-5">
                            <span class="section-heading-upper">Come On!</span>
                            <span class="section-heading-lower">We're Open</span>
                        </h2>

                        <li class="list-unstyled-item list-hours-item d-flex">Saturday
                  <span class="ml-auto">8:00 AM to 11:00 PM</span>
                        </li>
                        <li class="list-unstyled-item list-hours-item d-flex">Sunday
                  <span class="ml-auto">8:00 AM to 11:00 PM</span>
                        </li>
                        <li class="list-unstyled-item list-hours-item d-flex">Monday
                  <span class="ml-auto">8:00 AM to 11:00 PM</span>
                        </li>
                        <li class="list-unstyled-item list-hours-item d-flex">Tuesday
                  <span class="ml-auto">8:00 AM to 11:00 PM</span>
                        </li>
                        <li class="list-unstyled-item list-hours-item d-flex">Wednesday
                  <span class="ml-auto">8:00 AM to 11:00 PM</span>
                        </li>
                        <li class="list-unstyled-item list-hours-item d-flex">Thursday
                  <span class="ml-auto">8:00 AM to 11:00 PM</span>
                        </li>
                        <li class="list-unstyled-item list-hours-item d-flex">Friday
                  <span class="ml-auto">8:00 AM to 11:00 PM</span>
                        </li>
                        </ul>

              <p class="address mb-5">
                  <em>
                      <strong>Mirpur Road, College Gate</strong>
                      <br>
                      Mohammadpur, Dhaka, Bangladesh
                  </em>
              </p>
                        <p class="mb-0">
                            <small>
                                <em>Call Anytime</em>
                            </small>
                            <br>
                            +88-028130211
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="page-section about-heading">
        <div class="container">
            <img class="img-fluid rounded about-heading-img mb-3 mb-lg-0" src="img/about.jpg" alt="">
        </div>

        <footer class="footer text-faded text-center py-5">
            <div class="container">
                <p class="m-0 small">Copyright &copy; Online Pharmacy Website 2018</p>
            </div>
        </footer>


        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

<!-- Script to highlight the active date in the hours list -->
<script>
    $('.list-hours li').eq(new Date().getDay()).addClass('today');
</script>

</html>
