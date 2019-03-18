<%-- 
    Document   : displaystudent
    Created on : Apr 9, 2018, 4:42:15 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>
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
  <style>
      a:hover{color:red;}
  </style>
  <script>
      alert("Student Information Updated!");
      </script>
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
        <li class="breadcrumb-item active">Display</li>
      </ol>
   <!--Example DataTables Cards -->
      
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Student Table </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                    <th>ID</th>
                  <th>Name</th>
                  
                   <th>Country</th>
                  <th>Gender</th> 
                  <th>Date of Birth</th>
                  <th>Number</th>
                  
                  <th>Hobbies</th>
                  <th>Photo</th>
                  <th>Edit</th>
                  <th>Delete</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
                  <th>ID</th>
                  <th>Name</th>
                  
                   <th>Country</th>
                  <th>Gender</th> 
                  <th>Date of Birth</th>
                  <th>Number</th>
                  
                  <th>Hobbies</th>
                  <th>Photo</th>
                  <th>Edit</th>
                  <th>Delete</th>
                </tr>
              </tfoot>
              <c:forEach var="student" items="${studentdata}">
                  <tr>
                      <td>${student.id}</td>
                      <td>${student.name}</td>
                     
                      <td>${student.country}</td>
                       <td>${student.gender}</td>
                       <td>${student.dob}</td>
                        <td>${student.num}</td>
                        
                        <td>${student.hobbies}</td>
                         <td><img src="<c:url value="/images/${student.image}"/>" width="50" height="50"></td>
                      <td><a href="${cp}/Admin/Student/Edit/${student.id}">Edit</a></td>
                      <td><a href="${cp}/Admin/Student/Delete/${student.id}">Delete</a></td> 
                  </tr>
              </c:forEach>
              
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <%@include file="footer.jsp" %>
    
  </div>
  
</body>

</html>
