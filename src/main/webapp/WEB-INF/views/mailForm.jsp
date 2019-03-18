<%-- 
    Document   : mailForm
    Created on : Jun 4, 2018, 5:43:53 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Email Page</title>
    </head>
    <body>
       <center>
        <h1>Sending e-mail</h1>
        <form method="post" action="${pageContext.request.contextPath}/admin/mail?${_csrf.parameterName}=${_csrf.token}">
            <table border="0" width="80%">
                <tr>
                    <td>To:</td>
                    <td><input type="text" name="to" size="65" value="${userdata.email}" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>Subject:</td>
                    <td><input type="text" name="subject" size="65" /></td>
                </tr>
                <tr>
                    <td>Message:</td>
                    <td><textarea cols="50" rows="10" name="message"></textarea></td>
                </tr>               
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Send E-mail" />
                    </td>
                </tr>
            </table>
        </form>
    </center>
    </body>
</html>
