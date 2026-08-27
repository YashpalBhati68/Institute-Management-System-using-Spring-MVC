<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>

    <title>Student List</title>

</head>

<body>

<h1>Student List</h1>

<a href="/Institute-Managment-System-Spring-mvc/courses/add">
    Add Course
</a>

<br><br>

<table border="1" cellpadding="10">

    <tr>

        <th>ID</th>
        <th>Course Name</th>
        <th>Duration</th>
        <th>Fees</th>
        <th>Action</th>

    </tr>

    <c:forEach var="course" items="${courses}">

        <tr>

            <td>${course.id}</td>
            <td>${course.courseName}</td>
            <td>${course.duration}</td>
            <td>${course.fee}</td>

            <td>

                <a href="/Institute-Managment-System-Spring-mvc/courses/edit/${course.id}">
                    Edit
                </a>

                |

                <a href="/Institute-Managment-System-Spring-mvc/courses/delete/${course.id}">
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