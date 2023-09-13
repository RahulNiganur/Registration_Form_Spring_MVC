<%@page import="proj_dto.Keb_Dto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
p{
height:70px;
background-color:red;
color:white;
padding:10px;
padding-top:25px;
margin-left:30px;
margin-right:30px;
}
h1{
background-color:orange;
text-align:center;
}
h3{
height:70px;
background-color:red;
color:white;
padding:10px;
padding-top:25px;
margin-left:30px;
margin-right:30px;
}

#marks{
text-align:center;;
}

</style>
</head>
<body>
<div id="main">
<h1>DEPARTMENT OF PRE-UNIVERSITY EDUCATION, KARNATAKA <br><span>PUC Examination Result-2018</span></h1>
<%Keb_Dto dto=(Keb_Dto)request.getAttribute("fail_obj");%>
<p>
Name: <%=dto.getStudent_name()%>
<br><br>
Rg No: <%=dto.getStudent_reg_num()%>
</p>
<br>
<table border="" style="width:96%; height:260px; margin-left:30px; margin-right: 30px; border-collapse:collapse;">
<tr>
<th style="background-color: blue; color:white; text-align:left;" colspan="4">Part A</th>
</tr>
<tr>
<th>Subject</th>
<th>Theory Marks</th>
<th>Internal Marks</th>
<th>Total Marks</th>
</tr>
<tr>
<td>Kannada</td>
<td id="marks"><%=dto.getKannada()%></td>
<td id="marks"><%=dto.getKannada_internal()%></td>
<td id="marks"><%=dto.getKannada()+dto.getKannada_internal()%><%if(dto.getKannada()>=35)%> <span style="color:whitE;">--</span>P<%if(dto.getKannada()<35)%><span style="color:whitE;">--</span>F</td>
</tr>
<tr>
<td>English</td>
<td id="marks"><%=dto.getEnglish()%></td>
<td id="marks"><%=dto.getEnglish_internal()%></td>
<td id="marks"><%=dto.getEnglish()+dto.getEnglish_internal()%><%if(dto.getEnglish()>=35)%> <span style="color:whitE;">--</span>P<%if(dto.getEnglish()<35)%><span style="color:whitE;">--</span>F</td>
</tr>
<tr>
<td>Part A-TOTAL</td>
<td colspan="3" style="text-align:center;"><%=dto.getKannada()+dto.getKannada()+dto.getEnglish()+dto.getEnglish_internal()%></td>
</tr>
</table>
<br>
<table border="" style="width:96%; height:285px; margin-left:30px; margin-right: 30px; border-collapse:collapse;">
<tr><th style="background-color: blue; color:white; text-align:left;" colspan="4">Part B </th></tr>

<tr>
<th>Subject</th>
<th>Theory Marks</th>
<th>Internal Marks</th>
<th>Total Marks</th>
</tr>

<tr>
<td>Biology</td>
<td id="marks"><%=dto.getBiology()%></td>
<td id="marks"><%=dto.getBiology_internal()%></td>
<td id="marks"><%=dto.getBiology()+dto.getBiology_internal()%><%if(dto.getBiology()>=35)%> <span style="color:whitE;">--</span>P<%if(dto.getBiology()<35)%><span style="color:whitE;">--</span>F</td>
</tr>
<tr>
<td>Mathematics</td>
<td id="marks"><%=dto.getMathematics()%></td>
<td id="marks"><%=dto.getMathematics_internal()%></td>
<td id="marks"><%=dto.getMathematics()+dto.getMathematics_internal()%><%if(dto.getMathematics()>=35)%> <span style="color:whitE;">--</span>P<%if(dto.getMathematics()<35)%><span style="color:whitE;">--</span>F</td>
</tr>
<tr>
<td>Chemistry</td>
<td id="marks"><%=dto.getChemistry()%></td>
<td id="marks"><%=dto.getChemistry_internal()%></td>
<td id="marks"><%=dto.getChemistry()+dto.getChemistry_internal()%><%if(dto.getChemistry()>=35)%> <span style="color:whitE;">--</span>P<%if(dto.getChemistry()<35)%><span style="color:whitE;">--</span>F</td>
</tr>
<tr>
<td>Physics</td>
<td id="marks"><%=dto.getPhysics()%></td>
<td id="marks"><%=dto.getPhysics_internal()%></td>
<td id="marks"><%=dto.getPhysics()+dto.getPhysics_internal()%><%if(dto.getPhysics()>=35)%> <span style="color:whitE;">--</span>P<%if(dto.getPhysics()<35)%><span style="color:whitE;">--</span>F</td>
</tr>
<tr>
<td>Part B-TOTAL</td>
<td colspan="3" style="margin-right:40px; align-items:center; text-align:center;"><%=dto.getBiology()+dto.getBiology_internal()+dto.getMathematics()+dto.getMathematics_internal()+dto.getChemistry()+dto.getChemistry_internal()+dto.getPhysics()+dto.getPhysics_internal()%></td>
</tr>
</table>

<h3>GRAND TOTAL MARKS :<span style="color:red;">------------------</span><span style="margin-right:5px;"><%=dto.getKannada()+dto.getKannada()+dto.getEnglish()+dto.getEnglish_internal()+dto.getBiology()+dto.getBiology_internal()+dto.getMathematics()+dto.getMathematics_internal()+dto.getChemistry()+dto.getChemistry_internal()+dto.getPhysics()+dto.getPhysics_internal()%></span> <br>
  PERCENTAGE:<span style="color: red;">-----------------------------</span><%long l4=dto.getKannada()+dto.getKannada()+dto.getEnglish()+dto.getEnglish_internal()+dto.getBiology()+dto.getBiology_internal()+dto.getMathematics()+dto.getMathematics_internal()+dto.getChemistry()+dto.getChemistry_internal()+dto.getPhysics()+dto.getPhysics_internal();%><%=l4/6%>%<span style="margin-right:5px;"><br>FINAL RESULT: <span style="color: red;">---------------------------</span><span style="margin-right:5px;"><%long l=dto.getKannada()+dto.getKannada()+dto.getEnglish()+dto.getEnglish_internal()+dto.getBiology()+dto.getBiology_internal()+dto.getMathematics()+dto.getMathematics_internal()+dto.getChemistry()+dto.getChemistry_internal()+dto.getPhysics()+dto.getPhysics_internal();
    if(l>=360){%> <span style="color: white;">Fail</span> <%}%><%long l2=dto.getKannada()+dto.getKannada()+dto.getEnglish()+dto.getEnglish_internal()+dto.getBiology()+dto.getBiology_internal()+dto.getMathematics()+dto.getMathematics_internal()+dto.getChemistry()+dto.getChemistry_internal()+dto.getPhysics()+dto.getPhysics_internal();
    if(l2<=360){%><span style="color: white;">Fail</span><%}%><%long l3=dto.getKannada()+dto.getKannada()+dto.getEnglish()+dto.getEnglish_internal()+dto.getBiology()+dto.getBiology_internal()+dto.getMathematics()+dto.getMathematics_internal()+dto.getChemistry()+dto.getChemistry_internal()+dto.getPhysics()+dto.getPhysics_internal();
    if(l3<=300){%><span style="color: white;">Fail</span><%}%></span></h3>
</div>
</body>
</html>