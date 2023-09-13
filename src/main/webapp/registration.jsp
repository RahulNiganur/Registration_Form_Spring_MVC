<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-color:orange;
}
button{
height:60px;
width:100px
}
#inp{
height:80px;
width:800px;
background-color:silver;
font-size:30px
}
#inp2{
height:70px;
font-size:10px
}

</style>
</head>
<body>

<img alt="" style="height:100px; width:100px; margin-left:46% "  src="https://www.idreameducation.org/assets/images/StateBoard/Karnataka-logo.png">

 <form action="registration" style="text-align:center;">
 <h1>MARKS OF 12 PUC STUDENTS ARE SET HERE</h1>
  <input id="inp" type="number" name="student_reg_num" required="required" placeholder="Enter student registration number"><br>
 <input id="inp" type="text" name="student_name" required="required" placeholder="Enter student name"><br>
 <input id="inp" type="email" name="email" required="required" placeholder="Enter student email"><br>
 <input id="inp" type="text" name="faher_name" required="required" placeholder="Enter father name"><br>
 <input id="inp" type="text" name="mother_name" required="required" placeholder="Enter mother name"><br>
 <br>
 <h1>Enter The Marks of Student</h1>
 <br>
 <table id="inp" style="text-align: center; border:1px solid black; margin-left: 19%">
 <tr>

 <th>Enter Kannada Marks</th>
 <th>Enter English Marks</th>
 <th>Enter Mathematics Marks</th>
 <th>Enter Biology Marks</th> 
 <th>Enter Chemistry Marks</th>
 <th>Enter Physics Marks</th>
 </tr>
 
 <tr>
 <td> <input id="inp2" type="number" name="kannada" placeholder="enter theory marks"></td>
 <td> <input id="inp2" type="number" name="English" placeholder="enter theory marks"></td>
 <td> <input id="inp2" type="number" name="Mathematics" placeholder="enter theory marks"></td>
 <td> <input id="inp2" type="number" name="Biology" placeholder="enter theory marks"></td>
 <td> <input id="inp2" type="number" name="Chemistry" placeholder="enter theory marks"></td>
 <td> <input id="inp2" type="number" name="Physics" placeholder="enter theory marks"></td>
 </tr>

 <tr>
 <td> <input id="inp2" type="number" name="kannada_internal" placeholder="enter theory marks"></td>
 <td> <input id="inp2" type="number" name="English_internal" placeholder="enter theory marks"></td>
 <td> <input id="inp2" type="number" name="Mathematics_internal" placeholder="enter theory marks"></td>
 <td> <input id="inp2" type="number" name="Biology_internal" placeholder="enter theory marks"></td>
 <td> <input id="inp2" type="number" name="Chemistry_internal" placeholder="enter theory marks"></td>
 <td> <input id="inp2" type="number" name="Physics_internal" placeholder="enter theory marks"></td>
 </tr>
 </table>
 <br>
 <button type="reset">reset</button>
 <button type="submit">submit</button>
 </form>
</body>
</html>