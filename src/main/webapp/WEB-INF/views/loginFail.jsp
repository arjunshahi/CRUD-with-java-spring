<%-- 
    Document   : register
    Created on : May 16, 2018, 11:33:51 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Admin Login</title>
  <!-- Bootstrap core CSS-->
  <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="<c:url value="/resources/css/sb-admin.css"/>" rel="stylesheet">
  <script language=JavaScript>
      alert("Wrong Username and Password!\n\
             Try Again!!");
  </script>
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Login In</div>
      <div class="card-body">
          <form action="${pageContext.request.contextPath}/login?${_csrf.parameterName}=${_csrf.token}" method="POST">
          <div class="form-group">
                <label for="username">Username</label>
                <input class="form-control" id="username" name="username" type="text" aria-describedby="usernameHelp" placeholder="Enter Username" required>
              </div>
            
          <div class="form-group">
              
            <label for="password">Password</label>
            <input class="form-control" id="password" name="password" type="password"  placeholder="Enter Password" required>
          </div>
          <input class="btn btn-primary btn-block" type="submit" value="Login"/>
        </form>
        <div class="text-center">
          <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"</script>
  <script src="<c:url value="/resources/vendor/popper/popper.min.js"/>"</script>
  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js"/>"</script>
  <!-- Core plugin JavaScript-->
  <script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js"/>"</script>
</body>
</html>
