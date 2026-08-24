<html>
  <body>
     <form>

        <label for="trainerName">Full Name:</label>
        <input type="text" id="trainerName" name="trainerName" required placeholder="Enter full trainer name">
        <br/>
           <br/>

        <label for="trainerEmail">Email Address:</label>
        <input type="email" id="trainerEmail" name="trainerEmail" required placeholder="Enter email">
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
        <label for="course">Selected Course:</label>
            <select id="course" name="course">
                 <option value="Computer Science">Computer Science</option>
                  <option value="Information Technology">Information Technology</option>
                  <option value="Business Administration">Business Administration</option>
                  <option value="Mechanical Engineering">Mechanical Engineering</option>
            </select>
<br/>
   <br/>
        <label for="address">Permanent Address:</label>
        <textarea id="address" name="address" rows="4" placeholder="Enter full address"></textarea>
<br/>
   <br/>
        <button type="submit">Submit Registration</button>

     </form>
  </body>
</html>
