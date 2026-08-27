<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>

    <title>Student List</title>

</head>

<body>

<h1>Student List</h1>

<a href="/Institute-Managment-System-Spring-mvc/trainers/add">
    Add Trainer
</a>

<br><br>

<table border="1" cellpadding="10">

    <tr>

        <th>ID</th>
        <th>Name</th>
        <th>Mobile No</th>
        <th>Email</th>
        <th>Gender</th>
        <th>Address</th>
        <th>Action</th>

    </tr>

    <c:forEach var="trainer" items="${trainers}">

        <tr>

            <td>${trainer.id}</td>
            <td>${trainer.trainerName}</td>
            <td>${trainer.mobileNo}</td>
            <td>${trainer.email}</td>
            <td>${trainer.gender}</td>
            <td>${trainer.address}</td>

            <td>

                <a href="/Institute-Managment-System-Spring-mvc/trainers/edit/${trainer.id}">
                    Edit
                </a>

                |

                <a href="/Institute-Managment-System-Spring-mvc/trainers/delete/${trainer.id}">
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