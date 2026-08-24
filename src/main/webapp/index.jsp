<html>
<head>
    <meta charset="UTF-8">
    <!-- Responsive viewport meta tag -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>

    <!-- 1. Bootstrap CSS CDN Link -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

      <style>
         .card{
            display: inline-block;
         }
      </style>
</head>

<body>
<h1>Welcome to Institute Management System</h1>

<%-- Student card  --%>
<div class="card" style="width: 18rem;">
  <img  src="${pageContext.request.contextPath}/resources/images/student.png" class="card-img-top" alt="...">
  <div class="card-body">
    <a href="http://localhost:8080/Institute-Managment-System-Spring-mvc/students" class="btn btn-primary">Go somewhere</a>
  </div>
</div>

<%-- Course card  --%>
<div class="card" style="width: 18rem;">
  <img  src="/Institute-Managment-System-Spring-mvc/resources/images/course.png" class="card-img-top" alt="...">
  <div class="card-body">
    <a href="http://localhost:8080/Institute-Managment-System-Spring-mvc/courses" class="btn btn-primary">Go somewhere</a>
  </div>
</div>

<%-- Trainer card  --%>
<div class="card" style="width: 18rem;">
  <img  src="/Institute-Managment-System-Spring-mvc/resources/images/trainer.png" class="card-img-top" alt="...">
  <div class="card-body">
    <a href="http://localhost:8080/Institute-Managment-System-Spring-mvc/trainers" class="btn btn-primary">Go somewhere</a>
  </div>
</div>

<%-- Enrollment card  --%>
<div class="card" style="width: 18rem;">
  <img  src="/Institute-Managment-System-Spring-mvc/resources/images/enrollment.png" class="card-img-top" alt="...">
  <div class="card-body">
    <a href="http://localhost:8080/Institute-Managment-System-Spring-mvc/enrollments" class="btn btn-primary">Go somewhere</a>
  </div>
</div>



</body>
</html>
