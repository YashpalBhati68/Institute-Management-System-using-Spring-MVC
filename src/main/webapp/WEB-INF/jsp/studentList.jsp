<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>

    <title>Student List</title>

</head>

<body>

<h1>Student List</h1>

<a href="/Institute-Managment-System-Spring-mvc/students/add">
    Add Student
</a>

<br><br>

<table border="1" cellpadding="10">

    <tr>

        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Gender</th>
        <th>Address</th>
        <th>Action</th>

    </tr>

    <c:forEach var="student" items="${students}">

        <tr>

            <td>${student.id}</td>
            <td>${student.studentName}</td>
            <td>${student.email}</td>
            <td>${student.gender}</td>
            <td>${student.address}</td>

            <td>

                <a href="/Institute-Managment-System-Spring-mvc/students/edit/${student.id}">
                    Edit
                </a>

                |

                <a href="/Institute-Managment-System-Spring-mvc/students/delete/${student.id}">
                    Delete
                </a>

            </td>

        </tr>

    </c:forEach>

</table>

<br>

<a href="/Institute-Managment-System-Spring-mvc/">
    Home
</a>

</body>

</html>