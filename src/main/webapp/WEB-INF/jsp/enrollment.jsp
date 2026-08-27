<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>


<html>

<head>
    <title>Enrollment Form</title>
</head>

<body>

<h1>Enrollment Form</h1>

<form method="POST" action="/Institute-Managment-System-Spring-mvc/enrollments/save">

    <!-- Student -->

    <label>Student:</label>

    <select name="studentId" required>

        <option value="">
            Select Student
        </option>

        <c:forEach var="student" items="${students}">

            <option value="${student.id}">
                ${student.id} - ${student.studentName}
            </option>

        </c:forEach>

    </select>

    <br><br>


    <!-- Course -->

    <label>Course:</label>

    <select name="courseId" required>

        <option value="">
            Select Course
        </option>

        <c:forEach var="course" items="${courses}">

            <option value="${course.id}">
                ${course.id} - ${course.courseName}
            </option>

        </c:forEach>

    </select>

    <br><br>


    <!-- Date -->

    <label>Enrollment Date:</label>

    <input type="date"
           name="enrollmentDate"
           required>

    <br><br>

    <button type="submit">
        Enroll Student
    </button>

</form>

<br>

<a href="/Institute-Managment-System-Spring-mvc/enrollments">
    Back
</a>

</body>

</html>