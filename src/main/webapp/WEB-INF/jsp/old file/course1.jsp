<html>
  <body>
     <form method="POST" action="/Institute-Managment-System-Spring-mvc/courses/save">

        <input type="hidden" name="id" value="${course.id}">

        <label for="courseTitle">Full Course Name:</label>
        <input type="text" id="courseTitle" name="courseName" value="${course.courseName}" required placeholder="Enter full course name ">

        <br/>
        <br/>

        <label for="courseDescription">Course Description:</label>
        <textarea id="courseDescription" name="description" rows="4" placeholder="Enter full course description">${course.description}</textarea>
        <br/>
        <br/>
        <label for="courseDuration">Course Duration:</label>
        <input type="number" id="courseDuration" name="duration" value="${course.duration}" >

        <br/>
        <br/>

        <label for="coursePrice">Course Price:</label>
        <input type="number" id="coursePrice" name="fee" value="${course.fee}" >

        <br/>
        <br/>

        <button type="submit">Submit Registration</button>

     </form>
<br/>
<br/>
<a href="/Institute-Managment-System-Spring-mvc/courses">
    Back
</a>

  </body>
</html>
