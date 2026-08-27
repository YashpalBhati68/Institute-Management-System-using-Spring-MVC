<jsp:include page="/WEB-INF/jsp/common/header.jsp">
    <jsp:param name="title" value="Home"/>
    <jsp:param name="active" value="home"/>
</jsp:include>

<section class="hero rounded-4 p-4 p-md-5 mb-5 text-white">
    <div class="row align-items-center">
        <div class="col-lg-8">
            <h1 class="display-6 fw-bold mb-3">Welcome to Institute Management System</h1>
            <p class="lead mb-0">Manage students, courses, trainers and enrollments &mdash; all in one simple dashboard.</p>
        </div>
        <div class="col-lg-4 text-lg-end d-none d-lg-block">
            <i class="bi bi-mortarboard display-1"></i>
        </div>
    </div>
</section>

<div class="row g-4">

    <!-- Student card -->
    <div class="col-sm-6 col-lg-3">
        <a href="${pageContext.request.contextPath}/students" class="text-decoration-none">
            <div class="ims-card hoverable h-100 p-4 text-center">
                <div class="ims-icon bg-primary-subtle text-primary mb-3">
                    <i class="bi bi-people-fill"></i>
                </div>
                <h5 class="fw-semibold text-dark mb-1">Students</h5>
                <p class="text-muted small mb-0">Manage student records</p>
            </div>
        </a>
    </div>

    <!-- Course card -->
    <div class="col-sm-6 col-lg-3">
        <a href="${pageContext.request.contextPath}/courses" class="text-decoration-none">
            <div class="ims-card hoverable h-100 p-4 text-center">
                <div class="ims-icon bg-info-subtle text-info mb-3">
                    <i class="bi bi-journal-bookmark-fill"></i>
                </div>
                <h5 class="fw-semibold text-dark mb-1">Courses</h5>
                <p class="text-muted small mb-0">Manage available courses</p>
            </div>
        </a>
    </div>

    <!-- Trainer card -->
    <div class="col-sm-6 col-lg-3">
        <a href="${pageContext.request.contextPath}/trainers" class="text-decoration-none">
            <div class="ims-card hoverable h-100 p-4 text-center">
                <div class="ims-icon bg-warning-subtle text-warning mb-3">
                    <i class="bi bi-person-workspace"></i>
                </div>
                <h5 class="fw-semibold text-dark mb-1">Trainers</h5>
                <p class="text-muted small mb-0">Manage trainer profiles</p>
            </div>
        </a>
    </div>

    <!-- Enrollment card -->
    <div class="col-sm-6 col-lg-3">
        <a href="${pageContext.request.contextPath}/enrollments" class="text-decoration-none">
            <div class="ims-card hoverable h-100 p-4 text-center">
                <div class="ims-icon bg-success-subtle text-success mb-3">
                    <i class="bi bi-clipboard-check-fill"></i>
                </div>
                <h5 class="fw-semibold text-dark mb-1">Enrollments</h5>
                <p class="text-muted small mb-0">Enroll students into courses</p>
            </div>
        </a>
    </div>

</div>

<jsp:include page="/WEB-INF/jsp/common/footer.jsp"/>
