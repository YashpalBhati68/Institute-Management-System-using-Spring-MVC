<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="common/header.jsp">
    <jsp:param name="title" value="Enrollment Form"/>
    <jsp:param name="active" value="enrollments"/>
</jsp:include>

<div class="row justify-content-center">
    <div class="col-lg-7">
        <div class="ims-card p-4 p-md-5">
            <h3 class="fw-bold mb-4">
                <i class="bi bi-clipboard-plus text-success me-2"></i>Enroll Student
            </h3>

            <form method="POST" action="${pageContext.request.contextPath}/enrollments/save">

                <div class="mb-3">
                    <label class="form-label" for="studentId">Student</label>
                    <select class="form-select" id="studentId" name="studentId" required>
                        <option value="">Select Student</option>
                        <c:forEach var="student" items="${students}">
                            <option value="${student.id}">${student.id} - ${student.studentName}</option>
                        </c:forEach>
                    </select>
                </div>

                <div class="mb-3">
                    <label class="form-label" for="courseId">Course</label>
                    <select class="form-select" id="courseId" name="courseId" required>
                        <option value="">Select Course</option>
                        <c:forEach var="course" items="${courses}">
                            <option value="${course.id}">${course.id} - ${course.courseName}</option>
                        </c:forEach>
                    </select>
                </div>

                <div class="form-floating mb-4">
                    <input type="date" class="form-control" id="enrollmentDate" name="enrollmentDate" required
                           placeholder="Enrollment date">
                    <label for="enrollmentDate">Enrollment Date</label>
                </div>

                <div class="d-flex gap-2">
                    <button type="submit" class="btn btn-primary px-4">
                        <i class="bi bi-check2-circle me-1"></i>Enroll Student
                    </button>
                    <a href="${pageContext.request.contextPath}/enrollments" class="btn btn-outline-secondary px-4">
                        Cancel
                    </a>
                </div>

            </form>
        </div>
    </div>
</div>

<jsp:include page="common/footer.jsp"/>
