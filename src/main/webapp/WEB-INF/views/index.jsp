<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Institute of Technology</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources1/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="<c:url value="/resources1/vendor/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources1/https://fonts.googleapis.com/css?family=Montserrat:400,700"/>" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources1/css/agency.min.css"/>" rel="stylesheet">

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Institute of Technology</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
              <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="courses">Our Courses</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
            </li>
             <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="admin/home">Admin</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header -->
    <header class="masthead">
      <div class="container">
        <div class="intro-text">
          <div class="intro-lead-in">Welcome To Our Institute!</div>
          <div class="intro-heading">It's Nice To Meet You</div>
        </div>
      </div>
    </header>
   
    <!-- Contact -->
    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Contact Us</h2>
            <h3 class="section-subheading text-muted">Contact us</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
              <form id="contactForm" name="sentMessage" novalidate 
                    action="${pageContext.request.contextPath}/contact?${_csrf.parameterName}=${_csrf.token}" method="post">
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <input class="form-control" id="name" type="text" name="name" placeholder="Your Name *" required data-validation-required-message="Please enter your name.">
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="email" type="email" name="email" placeholder="Your Email *" required data-validation-required-message="Please enter your email address.">
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                      <input class="form-control" id="phone" type="tel"  name="phone" placeholder="Your Phone *" required data-validation-required-message="Please enter your phone number.">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <textarea class="form-control" id="message" name="msg" placeholder="Your Message *" required data-validation-required-message="Please enter a message."></textarea>
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-12 text-center">
                  <div id="success"></div>
                  <button id="sendMessageButton" class="btn btn-xl" type="submit">Send Message</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <span class="copyright">Copyright &copy; Your Website 2017</span>
          </div>
          <div class="col-md-4">
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-facebook"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-linkedin"></i>
                </a>
              </li>
            </ul>
          </div>
          <div class="col-md-4">
            <ul class="list-inline quicklinks">
              <li class="list-inline-item">
                <a href="#">Privacy Policy</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Terms of Use</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
    <!-- Bootstrap core JavaScript -->
    <script src="<c:url value="/resources1/vendor/jquery/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources1/vendor/popper/popper.min.js"/>"</script>
    <script src="<c:url value="/resources1/vendor/bootstrap/js/bootstrap.min.js"/>"</script>

    <!-- Plugin JavaScript -->
    <script src="<c:url value="/resources1/vendor/jquery-easing/jquery.easing.min.js"/>"</script>

    <!-- Contact form JavaScript -->
    <script src="<c:url value="/resources1/js/jqBootstrapValidation.js"/>"</script>
    <script src="<c:url value="/resources1/js/contact_me.js"/>"</script>

    <!-- Custom scripts for this template -->
    <script src="<c:url value="/resources1/js/agency.min.js"/>"</script>

  </body>

</html>
