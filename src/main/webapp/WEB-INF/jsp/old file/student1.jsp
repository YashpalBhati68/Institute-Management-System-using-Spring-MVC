<html>
  <body>
     <form method="POST" action="/Institute-Managment-System-Spring-mvc/students/save">

        <input type="hidden" name="id" value="${student.id}">

        <label for="studentName">Full Name:</label>
        <input type="text" id="studentName" name="studentName" value="${student.studentName}" required placeholder="Enter full name">
        <br/>
           <br/>

        <label for="studentEmail">Email Address:</label>
        <input type="email" id="studentEmail" name="email" value="${student.email}" required placeholder="Enter email">
<br/>
   <br/>
        <label>Gender:</label>
         <%--    <div class="radio-group"> --%>
                <input type="radio" id="male" name="gender" value="Male" checked>
                <label for="male">Male</label>
                <input type="radio" id="female" name="gender" value="Female">
                <label for="female">Female</label>
         <%--   </div>  --%>
<br/>
  <br/>
        <label for="address">Permanent Address:</label>
        <textarea id="address" name="address" rows="4" placeholder="Enter full address">${student.address}</textarea>
<br/>
   <br/>
        <button type="submit">Registrated</button>

     </form>
 <br/>
    <br/>
 <a href="/Institute-Managment-System-Spring-mvc/students">
     Back
 </a>

  </body>
</html>
