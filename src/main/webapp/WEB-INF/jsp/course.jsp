<%@ page contentType="text/html;charset=UTF-8" %>

<jsp:include page="common/header.jsp">
    <jsp:param name="title" value="${empty course.id ? 'Add Course' : 'Edit Course'}"/>
    <jsp:param name="active" value="courses"/>
</jsp:include>

<div class="row justify-content-center">
    <div class="col-lg-7">
        <div class="ims-card p-4 p-md-5">
            <h3 class="fw-bold mb-4">
                <i class="bi bi-journal-plus text-info me-2"></i>${empty course.id ? 'Add' : 'Edit'} Course
            </h3>

            <form method="POST" action="${pageContext.request.contextPath}/courses/save">

                <input type="hidden" name="id" value="${course.id}">

                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="courseTitle" name="courseName"
                           value="${course.courseName}" required placeholder="Enter full course name">
                    <label for="courseTitle">Full Course Name</label>
                </div>

                <div class="form-floating mb-3">
                    <textarea class="form-control" id="courseDescription" name="description" style="height: 100px"
                              placeholder="Enter full course description">${course.description}</textarea>
                    <label for="courseDescription">Course Description</label>
                </div>

                <div class="row g-3 mb-4">
                    <div class="col-sm-6">
                        <div class="form-floating">
                            <input type="number" class="form-control" id="courseDuration" name="duration"
                                   value="${course.duration}" placeholder="Duration">
                            <label for="courseDuration">Duration (months)</label>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-floating">
                            <input type="number" class="form-control" id="coursePrice" name="fee"
                                   value="${course.fee}" placeholder="Price">
                            <label for="coursePrice">Course Fee</label>
                        </div>
                    </div>
                </div>

                <div class="d-flex gap-2">
                    <button type="submit" class="btn btn-primary px-4">
                        <i class="bi bi-check2-circle me-1"></i>Save
                    </button>
                    <a href="${pageContext.request.contextPath}/courses" class="btn btn-outline-secondary px-4">
                        Cancel
                    </a>
                </div>

            </form>
        </div>
    </div>
</div>

<jsp:include page="common/footer.jsp"/>
