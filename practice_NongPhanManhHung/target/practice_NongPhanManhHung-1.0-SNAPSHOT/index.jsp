<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/codeleanvn">
    select * from employee
</sql:query>
<html>
<head>
    <title>DB Test</title>
</head>
<body>

<a href="EmployeeControllerServlet">Employee List</a>
</body>
</html>