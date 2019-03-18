<%-- 
    Document   : footer
    Created on : Apr 1, 2018, 4:57:42 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Your Website 2017</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/logout">Logout</a>
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
    <!-- Page level plugin JavaScript-->
    <script src="<c:url value="/resources/vendor/chart.js/Chart.min.js"/>"</script>
    <script src="<c:url value="/resources/vendor/datatables/jquery.dataTables.js"/>"</script>
    <script src="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.js"/>"</script>
    <!-- Custom scripts for all pages-->
    <script src="<c:url value="/resources/js/sb-admin.min.js"/>"</script>
    <!-- Custom scripts for this page-->
    <script src="<c:url value="/resources/js/sb-admin-datatables.min.js"/>"</script>
    <script src="<c:url value="/resources/js/sb-admin-charts.min.js"/>"</script>
  