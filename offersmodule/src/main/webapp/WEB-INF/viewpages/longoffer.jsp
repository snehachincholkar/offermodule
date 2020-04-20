<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
.imageurl {
	position: absolute;
	top: 10px;
	left: 2px;
	bottom: pc;
	z-index: 1;
}
.logourl {
	position: absolute;
	top: 1px;
	left: 80px;
	z-index: 2;
}

#leftbox {
	float: left;
	position: fixed;
	background-color: white;
	width: 250px;
	height: 700px;
	border: 20px;
	padding: 5px;
	margin: 20px;
	top: 70px;
	z-index: 1;
}

#rightbox {
	float: right;
	background-color: white;
	width: 1000px;
	height: 800px;
	border: 20px;
	padding: 40px;
	margin: 70px;
	top: 500px;
	z-index: 1;
}

#box {
	float: fixed;
	background-color: blue;
	width: 200px;
	height: 300px;
	border: 10px;
	padding: 30px;
	margin: 1px;
	top: 0px;
	bottom: 40;'

}

/* #bottomdiv {
  float:inherit; 
  background-color:grey;
  width: 300px;
  height:230px;
  border: 20px;
  padding: 50px;
  margin: 20px;
} */
.button {
	background-color: white;
	border: medium;
	color: white;
	padding: 15px 170px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 8px 8px;
	cursor: pointer;
}

.button {
	background-color: #008CBA;
}

div.b {
	position: fixed;
	top: 0;
	border: 3px;
	width: 1400px;
	z-index: 2;
}
</style>
<meta name="viewport" content="width=device-width" , initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	<div class="b">
	<form:form modelAttribute="fetch" enctype="multipart/form-data" >
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" src="${fetch.logourl}">
    <img src="${fetch.logourl}" alt="logo" style="width:40px;">
  </a>
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div  class="topnav-right">
      <a class="navbar-brand" href="http://localhost:8081">Home</a>
    </div>
    <div  class="topnav-right">
     <a class="navbar-brand" href="http://localhost:8081/start">UploadOffer</a>
    </div>
    <div  class="topnav-right">
     <a class="navbar-brand" href="http://localhost:8081/display">Back</a>
    </div>
  </div>
</nav></nav></form:form>
	</div>
	<div id="leftbox">
		<form:form modelAttribute="fetch" action="refresh" id="formid"
			enctype="multipart/form-data">
             <tr>
		<%-- 	<th><img width="80" height="50" src="${fetch.logourl}" style="width:auto;" alt="Logo"
				class=logourl> --%>
<th><img width="200" height="200" src="${fetch.imageurl}" style="width:auto;" alt="image"
				class=imageurl></th></tr>
				</table>
		</form:form>
	</div>

	<div id="rightbox">
		<form:form modelAttribute="fetch">
			<h1 style="font-size:vw;">${fetch.offerName}</h1>
			<br>
			<h4 align="left" id="abc"></h4>
    <h6 style="font-size:1vw;" > ${fetch.shortOffer}</h6><br>
			<h4 align="left" id="long"></h4>
     <h6 style="font-size:1vw;"> ${fetch.longOffer}</h6>
      <h4 align="left" id="cont"></h4>
     <h6 style="font-size:1vw;"> ${fetch.content}</h6>
			<h4 align="left" id="upto"></h4>
			<h6 style="font-size:1vw;">${fetch.endDate}</h6>
			
			<script>
        document.getElementById("abc").innerHTML="Special offer:"
        </script>

			<script>
        document.getElementById("long").innerHTML="Heightlights:"
        </script>

			<script>
        document.getElementById("cont").innerHTML="Description :"
        </script>

			<script>
        document.getElementById("upto").innerHTML="Active Upto:"
        </script>

		</form:form>
	</div><br><br><br>
	<%-- <div id="box">
		<form:form modelAttribute="fetch" action="refresh" id="formid"
			enctype="multipart/form-data">
             <tr>
			<th><img width="80" height="50" src="${fetch.logourl}" style="width:auto;" alt="Logo"
				class=logourl>
<th><img width="200" height="200" src="${fetch.imageurl}" style="width:auto;" alt="image"
				class=imageurl></th></tr>
				</table>
		</form:form>
	</div> --%>
</body>

</html>