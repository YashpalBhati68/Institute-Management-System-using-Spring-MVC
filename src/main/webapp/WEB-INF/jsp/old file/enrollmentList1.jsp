<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>

    <title>Enrollment List</title>

</head>

<body>

<h1>Enrollment List</h1>

<a href="/Institute-Managment-System-Spring-mvc/enrollments/add">
    Add Enrollment
</a>

<br><br>

<table border="1" cellpadding="10">

    <tr>

        <th>ID</th>
        <th>Student</th>
        <th>Course</th>
        <th>Enrollment Date</th>
        <th>Action</th>

    </tr>

    <c:forEach var="enrollment"
               items="${enrollments}">

        <tr>

            <td>${enrollment.id}</td>

            <td>
                ${enrollment.student.studentName}
            </td>

            <td>
                ${enrollment.course.courseName}
            </td>

            <td>
                ${enrollment.enrollmentDate}
            </td>

            <td>

                <a href="/Institute-Managment-System-Spring-mvc/enrollments/delete/${enrollment.id}">
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