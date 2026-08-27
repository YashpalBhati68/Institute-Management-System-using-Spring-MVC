<html>
  <body>
     <form method="POST" action="/Institute-Managment-System-Spring-mvc/trainers/save">


        <input type="hidden" name="id" value="${trainer.id}">

        <label for="trainerName">Full Name:</label>
        <input type="text" id="trainerName" name="trainerName" value="${trainer.trainerName}" required placeholder="Enter full trainer name">
        <br/>
           <br/>

        <label for="trainerMobileNo">Mobile No:</label>
        <input type="tel" id="trainerMobileNo" name="mobileNo" value="${trainer.mobileNo}" required placeholder="Enter mobile no">
<br/>
   <br/>
        <label for="trainerEmail">Email Address:</label>
        <input type="email" id="trainerEmail" name="email" value="${trainer.email}" required placeholder="Enter email">
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
        <textarea id="address" name="address"  rows="4" placeholder="Enter full address">${trainer.id}</textarea>
<br/>
   <br/>
        <button type="submit">Submit Registration</button>

     </form>
  <br/>
     <br/>
  <a href="/Institute-Managment-System-Spring-mvc/trainers">
      Back
  </a>

  </body>
</html>
