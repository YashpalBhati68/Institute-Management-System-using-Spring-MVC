<%@ page contentType="text/html;charset=UTF-8" %>

<jsp:include page="common/header.jsp">
    <jsp:param name="title" value="${empty trainer.id ? 'Add Trainer' : 'Edit Trainer'}"/>
    <jsp:param name="active" value="trainers"/>
</jsp:include>

<div class="row justify-content-center">
    <div class="col-lg-7">
        <div class="ims-card p-4 p-md-5">
            <h3 class="fw-bold mb-4">
                <i class="bi bi-person-badge text-warning me-2"></i>${empty trainer.id ? 'Add' : 'Edit'} Trainer
            </h3>

            <form method="POST" action="${pageContext.request.contextPath}/trainers/save">

                <input type="hidden" name="id" value="${trainer.id}">

                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="trainerName" name="trainerName"
                           value="${trainer.trainerName}" required placeholder="Enter full trainer name">
                    <label for="trainerName">Full Name</label>
                </div>

                <div class="form-floating mb-3">
                    <input type="tel" class="form-control" id="trainerMobileNo" name="mobileNo"
                           value="${trainer.mobileNo}" required placeholder="Enter mobile no">
                    <label for="trainerMobileNo">Mobile No</label>
                </div>

                <div class="form-floating mb-3">
                    <input type="email" class="form-control" id="trainerEmail" name="email"
                           value="${trainer.email}" required placeholder="Enter email">
                    <label for="trainerEmail">Email Address</label>
                </div>

                <label class="form-label d-block">Gender</label>
                <div class="mb-3 btn-group" role="group">
                    <input type="radio" class="btn-check" name="gender" id="male" value="Male"
                           ${empty trainer.gender || trainer.gender == 'Male' ? 'checked' : ''}>
                    <label class="btn btn-outline-primary" for="male"><i class="bi bi-gender-male me-1"></i>Male</label>

                    <input type="radio" class="btn-check" name="gender" id="female" value="Female"
                           ${trainer.gender == 'Female' ? 'checked' : ''}>
                    <label class="btn btn-outline-primary" for="female"><i class="bi bi-gender-female me-1"></i>Female</label>
                </div>

                <div class="form-floating mb-4">
                    <textarea class="form-control" id="address" name="address" style="height: 100px"
                              placeholder="Enter full address">${trainer.address}</textarea>
                    <label for="address">Permanent Address</label>
                </div>

                <div class="d-flex gap-2">
                    <button type="submit" class="btn btn-primary px-4">
                        <i class="bi bi-check2-circle me-1"></i>Save
                    </button>
                    <a href="${pageContext.request.contextPath}/trainers" class="btn btn-outline-secondary px-4">
                        Cancel
                    </a>
                </div>

            </form>
        </div>
    </div>
</div>

<jsp:include page="common/footer.jsp"/>
