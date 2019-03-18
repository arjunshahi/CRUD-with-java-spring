<%-- 
    Document   : header
    Created on : May 8, 2018, 4:30:50 PM
    Author     : Lenovo
--%>
<%-- 
    Document   : header
    Created on : Apr 1, 2018, 4:53:53 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="${cp}/Admin/Home">SMS ADMIN</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="${cp}/Admin/Home">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="#">
            <i class="fa fa-fw fa-calendar-check-o"></i>
            <span class="nav-link-text">Events</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="${cp}/admin/display/usermsg">
            <i class="fa fa-fw fa-bell-o"></i>
            <span class="nav-link-text">Notifications</span>
          </a>
        </li>
         <!--<li class="nav-item" data-toggle="tooltip" data-placement="right" title="notification">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapsenotification" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-bell"></i>
            <span class="nav-link-text">Notification</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapsenotification">
            
            <li> <li>
            
              <a href="${cp}/admin/display/usermsg"> <i class="fa fa-fw fa-envelope"></i>View Notification</a>
            </li>
          </ul>
        </li> -->
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Courses">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseCourse" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-book"></i>
            <span class="nav-link-text">Course</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseCourse">
            <li>
               
              <a href="${cp}/Admin/Course/Add">
                   <i class="fa fa-fw fa-plus"></i>Add Course</a>
            </li>
            <li> <li>
            
              <a href="${cp}/Admin/Course/Display"> <i class="fa fa-fw fa-television"></i>Display Course</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Students">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseStudent" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-user"></i>
            <span class="nav-link-text">Student</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseStudent">
            <li>
               
              <a href="${cp}/Admin/Student/Add">
                   <i class="fa fa-fw fa-plus"></i>Add Student</a>
            </li>
            <li> <li>
            
              <a href="${cp}/Admin/Student/Display"> <i class="fa fa-fw fa-television"></i>Display Student</a>
            </li>
            
             <!--
            <li>
            
              <a href="${cp}/Admin/Student/Attendance"> <i class="fa fa-fw fa-table"></i>Attendance</a>
            </li>
             <li>
              <a href="${cp}/Admin/Student/AttendDisplay"> <i class="fa fa-fw fa-television"></i>Attendance Data</a>
            </li>-->
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Exams">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExam" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-pencil"></i>
            <span class="nav-link-text">Examination</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExam">
            <li>
               
              <a href="${cp}/Admin/Exam/Add">
                   <i class="fa fa-fw fa-plus"></i>Add Exam</a>
            </li>
            <li> <li>
            
              <a href="${cp}/Admin/Exam/Display"> <i class="fa fa-fw fa-television"></i>Display Result</a>
            </li>
          </ul>
        </li>
         </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="User">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseUser" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-user-circle-o"></i>
            <span class="nav-link-text">Users</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseUser">
            <li>
               
              <a href="${cp}/Admin/User/Add">
                   <i class="fa fa-fw fa-plus"></i>Add Users</a>
            </li>
            <li> <li>
            
              <a href="${cp}/Admin/User/Display"> <i class="fa fa-fw fa-television"></i>Display Users</a>
            </li>
          </ul>
        </li>
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Relation">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseRelation" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Relation</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseRelation">
            <li>
               
              <a href="${cp}/Relation?action=add">
                   <i class="fa fa-fw fa-plus"></i>Add Relation</a>
            </li>
            <li> <li>
            
              <a href="${cp}/Relation?action=display"> <i class="fa fa-fw fa-television"></i>Display Relation</a>
            </li>
          </ul>
        </li>
        
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header">New Messages:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>David Miller</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome! These messages clip off when they reach the end of the box so they don't overflow over to the sides!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>Jane Smith</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>John Doe</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I've sent the final files over to you for review. When you're able to sign off of them let me know and we can discuss distribution.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all messages</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-bell"></i>
            <span class="d-lg-none">Alerts
              <span class="badge badge-pill badge-warning">6 New</span>
            </span>
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="alertsDropdown">
            <h6 class="dropdown-header">New Alerts:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                  <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all alerts</a>
          </div>
        </li>
        <li class="nav-item">
          <form class="form-inline my-2 my-lg-0 mr-lg-2">
            <div class="input-group">
              <input class="form-control" type="text" placeholder="Search for...">
              <span class="input-group-btn">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#logoutModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
</nav>