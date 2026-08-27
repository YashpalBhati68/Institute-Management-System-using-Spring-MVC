<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="common/header.jsp">
    <jsp:param name="title" value="Students"/>
    <jsp:param name="active" value="students"/>
</jsp:include>

<div class="d-flex justify-content-between align-items-center mb-4 flex-wrap gap-2">
    <div>
        <h2 class="fw-bold mb-1"><i class="bi bi-people-fill text-primary me-2"></i>Students</h2>
        <p class="text-muted mb-0">${students.size()} student(s) registered</p>
    </div>
    <a href="${pageContext.request.contextPath}/students/add" class="btn btn-primary">
        <i class="bi bi-plus-lg me-1"></i>Add Student
    </a>
</div>

<div class="ims-card p-3 mb-3">
    <div class="input-group">
        <span class="input-group-text bg-white border-end-0"><i class="bi bi-search text-muted"></i></span>
        <input type="text" class="form-control border-start-0 ps-0" data-table-search="#studentsTable"
               placeholder="Search by name, email, gender or address...">
    </div>
</div>

<div class="table-responsive ims-card p-0">
    <table class="table table-hover align-middle mb-0" id="studentsTable">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Gender</th>
            <th>Address</th>
            <th class="text-end">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="student" items="${students}">
            <tr>
                <td class="text-muted">#${student.id}</td>
                <td class="fw-semibold">${student.studentName}</td>
                <td>${student.email}</td>
                <td>
                    <span class="badge rounded-pill ${student.gender == 'Male' ? 'text-bg-primary' : 'text-bg-danger'}">
                        <i class="bi ${student.gender == 'Male' ? 'bi-gender-male' : 'bi-gender-female'} me-1"></i>${student.gender}
                    </span>
                </td>
                <td>${student.address}</td>
                <td class="text-end">
                    <a href="${pageContext.request.contextPath}/students/edit/${student.id}"
                       class="btn btn-sm btn-outline-primary me-1" title="Edit">
                        <i class="bi bi-pencil-square"></i>
                    </a>
                    <a href="${pageContext.request.contextPath}/students/delete/${student.id}"
                       class="btn btn-sm btn-outline-danger" title="Delete"
                       onclick="return confirm('Delete this student?');">
                        <i class="bi bi-trash"></i>
                    </a>
                </td>
            </tr>
        </c:forEach>
        <c:if test="${empty students}">
            <tr>
                <td colspan="6" class="text-center text-muted py-5">
                    <i class="bi bi-inbox display-6 d-block mb-2"></i>
                    No students found. <a href="${pageContext.request.contextPath}/students/add">Add one</a>.
                </td>
            </tr>
        </c:if>
        </tbody>
    </table>
</div>

<jsp:include page="common/footer.jsp"/>
