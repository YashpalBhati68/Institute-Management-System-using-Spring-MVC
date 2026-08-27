<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${empty param.title ? 'Institute Management System' : param.title} &middot; IMS</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- App CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

<nav class="navbar navbar-expand-lg ims-navbar sticky-top">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">
            <i class="bi bi-mortarboard-fill"></i> Institute<span>MS</span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu"
                aria-controls="navMenu" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navMenu">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link ${param.active == 'home' ? 'active' : ''}" href="${pageContext.request.contextPath}/">
                        <i class="bi bi-house-door me-1"></i>Home
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${param.active == 'students' ? 'active' : ''}" href="${pageContext.request.contextPath}/students">
                        <i class="bi bi-people me-1"></i>Students
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${param.active == 'courses' ? 'active' : ''}" href="${pageContext.request.contextPath}/courses">
                        <i class="bi bi-journal-bookmark me-1"></i>Courses
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${param.active == 'trainers' ? 'active' : ''}" href="${pageContext.request.contextPath}/trainers">
                        <i class="bi bi-person-workspace me-1"></i>Trainers
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${param.active == 'enrollments' ? 'active' : ''}" href="${pageContext.request.contextPath}/enrollments">
                        <i class="bi bi-clipboard-check me-1"></i>Enrollments
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<main class="container py-4">
