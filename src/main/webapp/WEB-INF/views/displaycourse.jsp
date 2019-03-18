<%-- 
    Document   : displaycourse
    Created on : Apr 4, 2018, 5:22:50 PM
    Author     : Deepak
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
        <li class="breadcrumb-item active">Display</li>
      </ol>
   <!--Example DataTables Cards -->
      
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Course Table </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                    <th>ID</th>
                  <th>Course(Title)</th>
                  <th>Price(NRs.)</th>
                  <th>Duration</th>
                  <th>Edit</th>
                  <th>Delete</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
                   <th>ID</th>
                  <th>Course(Title)</th>
                  <th>Price(NRs.)</th>
                  <th>Duration</th>
                  <th>Edit</th>
                  <th>Delete</th>

                </tr>
                
              </tfoot>
              <c:forEach var="course" items="${coursedata}">
                  <tr>
                      <td>${course.id}</td>
                      <td>${course.title}</td>
                      <td>${course.price}</td>
                      <td>${course.duration}</td>
                      <td><a href="${cp}/Admin/Course/Edit/${course.id}">Edit</a></td>
                      <td><a href="${cp}/Admin/Course/Delete/${course.id}">Delete</a></td> 
                  </tr>
              </c:forEach>
              
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>
    </div>

    <%@include file="footer.jsp" %>
    
  </div>
  
</body>

</html>
