
<%-- 
    Document   : addstudent
    Created on : Apr 8, 2018, 4:26:03 PM
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
  <title>SMS Admin</title>
  <%@include file="links.jsp" %>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
    <%@include file="header.jsp" %>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Student</a>
        </li>
        <li class="breadcrumb-item active">Add</li>
      </ol>
      <!-- Page Content -->
            <body class="bg-dark">
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Add New Student</div>
      <div class="card-body"> 
        <form action="${pageContext.request.contextPath}/Admin/Student/Add?${_csrf.parameterName}=${_csrf.token}"
              method="POST" enctype="multipart/form-data">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="name">Name</label>
                <input class="form-control" id="name" name="name" type="text" aria-describedby="nameHelp" placeholder="Enter Full Name">               
              </div>
            </div>
           
             <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="dob">Date of Birth</label>
                <input class="form-control" id="dob" name="dob" type="date">
           
              </div>
             </div>
          </div>
             <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="num">Phone Number</label>
                <input class="form-control" id="num" name="num" type="text" aria-describedby="nameHelp" placeholder="EnterPhone Number">
                   </div>
             </div>
          </div>
             <div class="form-group">
            <div class="form-row">
             <div class="col-md-12">
                     <label for="gender">Gender:</label><br>
                <input  type="radio" id="gender" value="Male" name="gender">Male &nbsp;
                <input  type="radio" id="gender1" value="Female" name="gender">Female 
             
             </div>
            </div>
             </div>
            <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="country">Country</label>
                <select class="form-control" name="country" id="country">
                    <option value="Nepal" >Nepal</option>
                    <option value="India" >India</option>
                    <option value="Pakistan">Pakistan</option>
                    <option value="Bhutan">Bhutan</option>
                    <option value="Bangladesh">Bangladesh</option>
                    <option value="China">China</option> 
                </select>
                <br>
            
              </div>
          </div>
               
              <div class="form-group">
            <div class="form-row">
              <div class="col-md-12">
                  <label for="hobbies">Hobbies</label><br>
                <input  id="hobbies" name="hobbies" type="checkbox" value="Music">Music &nbsp;
                <input  id="hobbies1" name="hobbies" type="checkbox" value="Sports">Sports &nbsp;
                <input  id="hobbies3" name="hobbies" type="checkbox" value="Studying">Studying &nbsp;
                <input  id="hobbies4" name="hobbies" type="checkbox" value="Travelling">Traveling &nbsp;
                 <input  id="hobbies5" name="hobbies" type="checkbox" value="Coding">Coding &nbsp;
      
              </div>
             </div>
          </div>
                 <div class="form-group">
            <div class="form-row">
              <div class="col-md-12">
                  <label for="image">Upload Image :</label><br>
                <input  id="image" name="image" type="file">
             
              
              </div>
             </div>
          </div>
           <div class="form-group">
            <div class="form-row">
              <div class="col-md-3">
                <input class="btn btn-primary btn-block" type="submit" value="Submit">
              </div>
             </div>
          </div>
      

        
      </div>

      </div>
      </form>
    </div>
  </div>
            </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <%@include file="footer.jsp" %>
  </div>
  
   <!-- confirm Modal-->
    <div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Successfully Added!!</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Ok</button>
            
          </div>
        </div>
      </div>
    </div>
</body>

</html>
