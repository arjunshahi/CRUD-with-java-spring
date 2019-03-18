<%-- 
    Document   : courseadded
    Created on : May 10, 2018, 11:43:17 AM
    Author     : Lenovo
--%>
<%-- 
    Document   : addcourse
    Created on : Apr 2, 2018, 7:23:59 PM
    Author     : Deepak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Admin</title>
  <%@include file="links.jsp" %>
 
<script language="JavaScript">
alert("Course Added!")
</script>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
    <%@include file="header.jsp" %>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Course</a>
        </li>
        <li class="breadcrumb-item active">My Course</li>
      </ol>
      <!-- Page Content -->
            <body class="bg-dark">
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Add New Course</div>
      <div class="card-body">
        <form action="${pageContext.request.contextPath}/Admin/Course/Add"
              method="post">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="title">Course Title</label>
                <input class="form-control" id="title" name="title" type="text" aria-describedby="nameHelp" placeholder="Enter title">
              ${ctitle}
              </div>
             </div>
          </div>
             <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="title">Course Price</label>
                <input class="form-control" id="price" name="price" type="text" aria-describedby="nameHelp" placeholder="Enter Price">
              ${cprice}
              </div>
             </div>
          </div>

              <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="duration">Course Duration</label>
                <input class="form-control" id="duration" name="duration" type="text" aria-describedby="nameHelp" placeholder="Enter duration">
              ${cduration}
              </div>
             </div>
          </div>
           <div class="form-group">
            <div class="form-row">
              <div class="col-md-3">
                <input class="btn btn-primary btn-block" type="submit" value="Submit">
              </div>
                <div class="col-md-3">
                <input class="btn btn-primary btn-block" type="reset" value="Reset">
              </div>
             </div>
          </div>
      

        </form>
        
      </div>
    </div>
  </div>
            </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <%@include file="footer.jsp" %>
  </div>
</body>

</html>
