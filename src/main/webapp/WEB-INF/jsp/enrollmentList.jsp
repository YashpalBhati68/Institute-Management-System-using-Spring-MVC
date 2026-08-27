<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="common/header.jsp">
    <jsp:param name="title" value="Enrollments"/>
    <jsp:param name="active" value="enrollments"/>
</jsp:include>

<div class="d-flex justify-content-between align-items-center mb-4 flex-wrap gap-2">
    <div>
        <h2 class="fw-bold mb-1"><i class="bi bi-clipboard-check-fill text-success me-2"></i>Enrollments</h2>
        <p class="text-muted mb-0">${enrollments.size()} enrollment(s) recorded</p>
    </div>
    <a href="${pageContext.request.contextPath}/enrollments/add" class="btn btn-primary">
        <i class="bi bi-plus-lg me-1"></i>Add Enrollment
    </a>
</div>

<div class="ims-card p-3 mb-3">
    <div class="input-group">
        <span class="input-group-text bg-white border-end-0"><i class="bi bi-search text-muted"></i></span>
        <input type="text" class="form-control border-start-0 ps-0" data-table-search="#enrollmentsTable"
               placeholder="Search by student, course or date...">
    </div>
</div>

<div class="table-responsive ims-card p-0">
    <table class="table table-hover align-middle mb-0" id="enrollmentsTable">
        <thead>
        <tr>
            <th>ID</th>
            <th>Student</th>
            <th>Course</th>
            <th>Enrollment Date</th>
            <th class="text-end">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="enrollment" items="${enrollments}">
            <tr>
                <td class="text-muted">#${enrollment.id}</td>
                <td class="fw-semibold">${enrollment.student.studentName}</td>
                <td>${enrollment.course.courseName}</td>
                <td><i class="bi bi-calendar-event me-1 text-muted"></i>${enrollment.enrollmentDate}</td>
                <td class="text-end">
                    <a href="${pageContext.request.contextPath}/enrollments/delete/${enrollment.id}"
                       class="btn btn-sm btn-outline-danger" title="Delete"
                       onclick="return confirm('Delete this enrollment?');">
                        <i class="bi bi-trash"></i>
                    </a>
                </td>
            </tr>
        </c:forEach>
        <c:if test="${empty enrollments}">
            <tr>
                <td colspan="5" class="text-center text-muted py-5">
                    <i class="bi bi-inbox display-6 d-block mb-2"></i>
                    No enrollments found. <a href="${pageContext.request.contextPath}/enrollments/add">Add one</a>.
                </td>
            </tr>
        </c:if>
        </tbody>
    </table>
</div>

<jsp:include page="common/footer.jsp"/>
