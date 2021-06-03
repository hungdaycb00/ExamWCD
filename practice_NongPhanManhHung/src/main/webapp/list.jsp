
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>

</head>
<body>
<P></P>
<BR><br><br>
<input type="button" value="Add Student"
       onclick="window.location.href='employee.jsp'; return false;"
       class="add-student-button"
/>
<br><br>
<h2>Employee list</h2>
<table border="1">
    <tr>
        <td><b>ID</b></td>
        <td><b>Full Name</b></td>
        <td><b>Birthday</b></td>
        <td><b>Address</b></td>
        <td><b>Position</b></td>
        <td><b>Department</b></td>
    </tr>
    <c:forEach var="em" items="${Employee_list}">

        <tr>
            <td style="padding: 10px;">${em.ID}</td>
            <td>${em.full_Name}</td>
            <td>${em.birthday}</td>
            <td>${em.address}</td>
            <td>${em.position}</td>
            <td>${em.department}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>

