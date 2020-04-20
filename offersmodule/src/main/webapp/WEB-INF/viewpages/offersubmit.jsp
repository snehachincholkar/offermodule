<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" />
<meta charset="ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<title>Insert title here</title>
<style>
body {
 
  background-repeat: no-repeat;
}
table, th, td {
  border: 1px solid black;
}
</style>
 <script>
function reply_click()
{
	 var a=event.srcElement.id;
	 document.getElementById("offerid").value=a;
	 document.offerfetch.submit();
}
</script>
<style>
    .imageurl
    {
      position:relative;
      top: 30px;
      left: 10px;
      z-index: 1;
    }
    .logourl
    {
      position:absolute;
      top:inherit;
      left: 120px;
      z-index: 2;
    }
    
    
     #leftbox {
  float:inherit; 
  background-color:red;
  width: 500px;
  height:500px;
  border: 4px;
  padding: 10px;
  margin: 5px;
  }
   #rightbox {
  float:inherit; 
  background-color:white;
  width: 1000px;
  height:800px;
  border: 5px;
  padding: 5px;
  margin: 5px;
}
    .button {
  background-color: white; 
  border: medium;
  color: white;
  padding: 15px 100px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 8px 8px;
  cursor: pointer;
}
div.b {
  position: fixed;
  top: 0;
  border: 3px;
  width:1400px;
  z-index: 2;
  
} 
div.c {
  position: absolute;
  top: 90px;
   width:500px;
  border: 3px;
  z-index: 1;
} 

.button {background-color: #008CBA;} 
    
    </style>
</head>
<body>
 <div class="b">
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
 <!--  <a class="navbar-brand" href="#">
    <img src="https://images.app.goo.gl/rqjHGT8y3BZ1AdXu8" alt="logo" style="width:30px;">
  </a> -->
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div  class="topnav-right">
     <a class="navbar-brand" href="http://localhost:8081">Home</a>
    </div>
    <div  class="topnav-right">
     <a class="navbar-brand" href="http://localhost:8081/start">Back</a>
    </div>
  </div>
</nav>
</nav>
</div>
<div class="c">
	<form:form modelAttribute="offer" action="done" enctype="multipart/form-data" method="post">
	
	<c:forEach var="offer" items="${elist}">
  <img class="img-responsive" width="80" height="100" src="${offer.logourl}"  alt="Logourl">
	<img class="img-responsive" width="100" height="100" src="${offer.imageurl}"  alt="imageurl">
    <h5 style="font-size:1vw;">${offer.offerName}</h5>
     <h5 style="font-size:1vw;"> ${offer.shortOffer}</h5>
    <h3><form:button class="btn btn-info"  onClick="reply_click()" id="${offer.offerid}">details>></form:button></h3>
             __________________________________________________________<br><br>
	   <form:input type="hidden" value="${offer.offerid}"  id="offerid" name="fetchid" path="offerid"/> <br/>
	 
  </c:forEach>
   <form:button type="button" class="btn btn-info"	onclick="location.href='/back'">Back</form:button>
	</form:form>
	</div>
	</body>
</html>