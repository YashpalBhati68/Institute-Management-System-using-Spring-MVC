<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="common/header.jsp">
    <jsp:param name="title" value="Courses"/>
    <jsp:param name="active" value="courses"/>
</jsp:include>

<div class="d-flex justify-content-between align-items-center mb-4 flex-wrap gap-2">
    <div>
        <h2 class="fw-bold mb-1"><i class="bi bi-journal-bookmark-fill text-info me-2"></i>Courses</h2>
        <p class="text-muted mb-0">${courses.size()} course(s) available</p>
    </div>
    <a href="${pageContext.request.contextPath}/courses/add" class="btn btn-primary">
        <i class="bi bi-plus-lg me-1"></i>Add Course
    </a>
</div>

<div class="ims-card p-3 mb-3">
    <div class="input-group">
        <span class="input-group-text bg-white border-end-0"><i class="bi bi-search text-muted"></i></span>
        <input type="text" class="form-control border-start-0 ps-0" data-table-search="#coursesTable"
               placeholder="Search by course name...">
    </div>
</div>

<div class="table-responsive ims-card p-0">
    <table class="table table-hover align-middle mb-0" id="coursesTable">
        <thead>
        <tr>
            <th>ID</th>
            <th>Course Name</th>
            <th>Duration</th>
            <th>Fees</th>
            <th class="text-end">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="course" items="${courses}">
            <tr>
                <td class="text-muted">#${course.id}</td>
                <td class="fw-semibold">${course.courseName}</td>
                <td><span class="badge text-bg-secondary rounded-pill">${course.duration} months</span></td>
                <td>&#8377; ${course.fee}</td>
                <td class="text-end">
                    <a href="${pageContext.request.contextPath}/courses/edit/${course.id}"
                       class="btn btn-sm btn-outline-primary me-1" title="Edit">
                        <i class="bi bi-pencil-square"></i>
                    </a>
                    <a href="${pageContext.request.contextPath}/courses/delete/${course.id}"
                       class="btn btn-sm btn-outline-danger" title="Delete"
                       onclick="return confirm('Delete this course?');">
                        <i class="bi bi-trash"></i>
                    </a>
                </td>
            </tr>
        </c:forEach>
        <c:if test="${empty courses}">
            <tr>
                <td colspan="5" class="text-center text-muted py-5">
                    <i class="bi bi-inbox display-6 d-block mb-2"></i>
                    No courses found. <a href="${pageContext.request.contextPath}/courses/add">Add one</a>.
                </td>
            </tr>
        </c:if>
        </tbody>
    </table>
</div>

<jsp:include page="common/footer.jsp"/>
