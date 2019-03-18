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
  <title>Sign Up</title>
  <!-- Bootstrap core CSS-->
  <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="<c:url value="/resources/css/sb-admin.css"/>" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Sign Up</div>
      <div class="card-body">
          <form action="${pageContext.request.contextPath}/signup?${_csrf.parameterName}=${_csrf.token}" method="POST" >
          <div class="form-group">
              <div class="form-row">
              <div class="col-md-12">
                <label for="uname">Username</label>
                <input class="form-control" id="uname" name="uname" type="text" aria-describedby="nameHelp" placeholder="Enter full name">
              </div>
              </div>
          </div>
              <div class="form-group">
              <div class="form-row">
              <div class="col-md-12">
                <label for="upass">New Password</label>
                <input class="form-control" id="upass" name="upass" type="password" aria-describedby="nameHelp" placeholder="Enter new password">
              </div>
              </div>
          </div>
              <div class="form-group">
              <div class="form-row">
              <div class="col-md-12">
                <label for="upass1">Confirm Password</label>
                <input class="form-control" id="upass" name="upass1" type="password" aria-describedby="nameHelp" placeholder="Confirm password">
              </div>
              </div>
          </div>
         
            
          <div class="form-group">
            <div class="form-row">
             <div class="col-md-12">
                <label for="country">Country</label>
                <select class="form-control" name="country" id="country">
                    <option value="Nepal" >Nepal</option>
                    <option value="India" >India</option>
                    <option value="Pakistan">Pakistan</option>
                    <option value="Bhutan">Bhutan</option>
                    <option value="Bangladesh">Bangladesh</option>
                    <option value="China">China</option> 
                </select>
              </div>
            </div>
          </div>
           
           <div class="form-group">
            <div class="form-row">
              <div class="col-md-3">
                <input class="btn btn-primary btn-block" type="submit" value="Sign Up">
              </div>
             </div>
          </div>
        </form>
          <div>
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
