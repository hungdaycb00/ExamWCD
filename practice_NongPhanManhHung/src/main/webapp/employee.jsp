
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>ADD EMPLOYEE</h3>
<form action="EmployeeControllerServlet" method="get">
    <input type="hidden" name="command" value="ADD" />
    <table>
        <tbody>
        <tr>
            <td>Full Name:</td>
            <td><input type="text" name="fullname" required></td>
        </tr>
        <tr>
            <td>Birthday:</td>
            <td><input type="date" name="birthday" ></td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><input type="text" name="address" required></td>
        </tr>
        <tr>
            <td>Position:</td>
            <td><input type="text" name="position" required></td>
        </tr>
        <tr>
            <td>Department:</td>
            <td><input type="text" name="department" required></td>
        </tr>
        <tr>
            <br>
            <td></td>
            <td><input type="submit" value="Save">   <input type="reset" value="Reset"></td>
        </tr>
        </tbody>

    </table>
</form>
</body>
</html>
