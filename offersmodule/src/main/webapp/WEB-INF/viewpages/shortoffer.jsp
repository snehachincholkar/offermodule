<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script
  src="https://code.jquery.com/jquery-3.5.0.js"></script>
<title>Insert title here</title>

<script>
function reply_click()
{
	 var a=event.srcElement.id;
	 document.getElementById("offerid").value=a;
	 document.offerfetch.submit();
}
</script>
   <script>
    $(document).ready(function(){
    	
    $('.thumb a').mouseover(function(e)
    {
    	
    	e.preventDefault();
    	$('.imgBox img').attr("src",$(this).attr("href"))
    });
    		
    });
    </script>

</head>
<style>

@media screen and (max-width: 800px) {
 .imageurl, .logourl, .button
 width:100%;
}

  .imageurl
    {
      position:inherit;
      background-color: blue;
      size:landscape;
       width:140px;
       height:200px;
       top: 40px;
       z-index: 2;
    }

div.b {
  position: fixed;
  top: 0;
  border: 3px;
  width:1400px;
  z-index: 2;
  
} 
div.c {

  position:relative;
  width:200px;
  heigth:280px;
  border: 1px;
  z-index: 1;
} 
.thumb{
 position:relative;
  margin:20px;
  padding:20px 20px;
  float:left;
  width:240px;
  height:330px;
  background-color:#EBEDEF ;
  }
  
    .img1 {
    position:inherit; 
    margin:0px;
    padding:5px 5px;
    top:3px;
    width:200px;
    height:270px;
    text-align:center;
    background-color: #EBEDEF ;
     } 
     
.tablecontainer {
position:inherit;
background-color:;
top:30px;
transform:(-50%,-50%);
 left:20px
 margin:40px;
    float: left;
}
   
    </style>
<body>

  <div class="b">
  <form:form modelAttribute="offer" enctype="multipart/form-data" >
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <%-- <a class="navbar-brand" href="#">
    <img src="${offer.logourl}" alt="logo" style="width:60px;">
  </a> --%>
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
</form:form>
</div><br><br><br>

<h1 style="color: blue">${msg}</h1>
<div class="c">
<form:form  modelAttribute="offer" action="success" name="offerfetch"  id="formchkloop" method="post" align="left" enctype="multipart/form-data">
	<c:forEach var="offer" items="${fetchdata}" varStatus="loop" >
  <%-- <img class="logourl" width="60vw" height="60vw" src="${offer.logourl}" style="width:auto;" alt="Logo"> --%>
  <table class="tablecontainer">
        <th class="thumb">
        <div class="img1">
      <a href ="${offer.imageurl}"  target="imgBox" ><img class="imageurl" src="${offer.imageurl}"  alt="image"></a>
      <h2 style="font-size:1.5vw;">${offer.offerName}</h2>
       <h3  align="center"><form:button class="btn btn-info" onClick="reply_click()" id="${offer.offerid}">details>></form:button></h3><br>
     </div>	
     
     <!--     <h6 style="color:white"> __________________________<h6> -->
	   <form:input type="hidden" value="${offer.offerid}"  id="offerid" name="fetchid" path="offerid"/></h6>
	   </th>
	  <%-- <c:if test="${loop.index} gt 4">
	  <br/><br/>
	<c:out value="${offer}"></c:out>
	   </c:if> --%>
       </c:forEach> 
       </table></br>
       </form:form>
       </div>
       </body>
       </html>
       