<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
</head>
<body>

	<h2 align="center">Preview</h2>
	<div class="container">
		<form:form action="preview" modelAttribute="offer" method="post"
			enctype="multipart/form-data">

			<div class="form-group row row col-xs-5 col-lg-5">
				<h5><label>Offer logo:</label> <img width="100" height="100"
					src="${logourldeatails}" style="width:auto;"></h5> <input type="hidden"
					value="${logourldeatails}" id="logid" name="logourlpath">
			</div>
			<div class="form-group row row col-xs-5 col-lg-5">
				<h5><label>Offer image:</label> <img width="100" height="100"
					src="${imageurldeatails}" style="width:auto;"></h5> <input type="hidden"
					value="${imageurldeatails}" id="imageid" name="imageurlpath">
			</div>
			<div class="form-group row col-xs-5 col-lg-5">
				<h5><label for="offerName" style="font-size:1vw;">Offer Name:</label></h5>

				<form:input type="text" name="offerName" path="offerName"
					readonly="true" />
			</div>
			<div class="form-group row  col-xs-5 col-lg-5">
				<h5><label for="exampleFormControlTextarea1" style="font-size:1vw;">Content:</label></h5>
				<form:textarea class="form-control" name="content" path="content"
					id="e" autocomplete="off" required="true" readonly="true" />
			</div>
			<div class="form-group row col-xs-5 col-lg-5">
			<h5>	<label for="endDate" class="col-10" style="font-size:1vw;">Start Date:</label></h5>
				<div class='input-group date' id='datetimepickerstartdate'>
					<form:input type="datetime" path="startDate" class="form-control"
						id="datetimepickerstartdate" readonly="true" />
					<span class="input-group-addon"> <span
						class="glyphicon glyphicon-calendar"></span>
					</span>
				</div>
			</div>
			<div class="form-group row  col-xs-5 col-lg-5">
				<h5><label for="endDate" class="col-10" style="font-size:1vw;">End Date:</label></h5>
				<div class='input-group date' id='datetimepickerenddate'>
					<form:input type="datetime" path="endDate" class="form-control"
						id="datetimepickerenddate" readonly="true" />
					<span class="input-group-addon"> <span
						class="glyphicon glyphicon-calendar"></span>
					</span>
				</div>
			</div>
			<div class="form-group row  col-xs-5 col-lg-5">
			<h5>	<label for="usertype" class="col-10" style="font-size:1vw;">Usertype:</label></h5>
				<form:select class="form-control" name="usertype" path="usertype"
					id="usertypeid" readonly="true">
					<form:option value="1">1</form:option>
					<form:option value="2">2</form:option>
					<form:option value="3">3</form:option>
				</form:select>
			</div>
			<br>

			<div class="form-group row  col-xs-5 col-lg-5">
			<h5>	<label for="longOffer" style="font-size:1vw;">Short Offer:</label></h5>

				<form:input type="text" class="form-control" name="shortOffer"
					path="shortOffer" id="j" required="true" readonly="true" />
			</div>
			<br>

			<div class="form-group row col-xs-5 col-lg-5">
				<h5><label for="longOffer" style="font-size:1vw;">Long Offer:</label></h5>

				<form:input type="text" class="form-control" name="longOffer"
					path="longOffer" id="j" required="true" readonly="true" />
			</div>
			<br>
			<div class="form-group row col-xs-5 col-lg-10">
				<form:button type="submit" class="btn btn-info">Upload Confirm</form:button>

			</div>
		</form:form>
	</div>


</body>
</html>