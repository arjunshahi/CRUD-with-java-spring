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
  <title>our courses</title>
  
  <style>
      table{
      border-collapse:collapse;
      }
      a{
          color:blue;
          text-decoration: none;
      }
      a:hover{
          color:green;
          text-decoration: underline;
      }
  </style>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      
   <!--Example DataTables Cards -->
      
      <div class="card mb-3">
        <div class="card-body">
          <div class="table-responsive">
       
              <b>Our available courses if you want to learn from our institute.</b>
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" border="1">
              <thead>
                <tr>
                   
                  <th>Course(Title)</th>
                  <th>Price(NRs.)</th>
                  <th>Duration</th>
                 
                </tr>
              </thead>
              
              <c:forEach var="course" items="${coursedata}">
                  <tr>
                      
                      <td>${course.title}</a></td>
                      <td>${course.price}</td>
                      <td>${course.duration}</td>
                 
                  </tr>
              </c:forEach>
              
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>
    </div>
  
    
    
  </div>
    <br>
<center><b>Click <a href="index">here</a> to go home page</b></center></body>

</html>
