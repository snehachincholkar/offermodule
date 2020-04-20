<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment.min.js"></script>
<link rel="stylesheet"
	href="https://rawgit.com/Eonasdan/bootstrap-datetimepicker/master/build/css/bootstrap-datetimepicker.min.css">
<script
	src="https://rawgit.com/Eonasdan/bootstrap-datetimepicker/master/build/js/bootstrap-datetimepicker.min.js"></script>
<script>
		function isNumber(evt)
		{
		    evt = (evt) ? evt : window.event;
		    var charCode = (evt.which) ? evt.which : evt.keyCode;
		   if (charCode > 31 && (charCode < 48 || charCode > 57)) //number 48 t0 57 (0-9 number)
			   {
		        return false;
		    }
		   return true;
		}
</script>

<script>
    function IsEmpty() {

  if(document.forms['myform'].offerName.value === "") {
    		  document.getElementById("erroroffername").innerHTML=("Please enter offername");
    	    return false;
    	  }
    	  
    	  else{
    		  document.getElementById("erroroffername").innerHTML=(" ");  
    		  return true;
    	  }
    
    }
    </script>
<script>
    	  function IsEmpty1() {
    if (document.forms['myform'].content.value === "") {
		  document.getElementById("errorcontent").innerHTML=("Please enter offer content");
	    return false;
	  }
	  else{
		  
	  
		  document.getElementById("errorcontent").innerHTML=(" ");  
	  
	  return true;
	  }
    }
    	  
    	  function IsEmpty2() {
    		    if (document.forms['myform'].startDate.value === "") {
    				  document.getElementById("errorstartdate").innerHTML=("Please select offer start date");
    			    return false;
    			  }
    		    
    			  else{
    				  
    			  }
    				  document.getElementById("errorstartdate").innerHTML=(" ");  
    			  
    			  return true;
    		    }
    	  
    	  
    	  function IsEmpty3() {
  		    if (document.forms['myform'].endDate.value === "") {
  				  document.getElementById("errorenddate").innerHTML=("Please select  offer end date");
  			    return false;
  			  }
  			  else{
  				  
  			  }
  				  document.getElementById("errorenddate").innerHTML=(" ");  
  			  
  			  return true;
  		    }
    	  
    	  
    	  function IsEmpty4() {
    		    if (document.forms['myform'].shortOffer.value === "") {
    				  document.getElementById("errorshortOffer").innerHTML=("Please enter shortoffer details ");
    			    return false;
    			  }
    			  else{
    				  
    			  }
    				  document.getElementById("errorshortOffer").innerHTML=(" ");  
    			  
    			  return true;
    		    }
    	  
    	  
    	  function IsEmpty5() {
  		    if (document.forms['myform'].longOffer.value === "") {
  				  document.getElementById("errorlongOffer").innerHTML=("Please enter longoffer details ");
  			    return false;
  			  }
  			  else{
  				  
  			  }
  				  document.getElementById("errorlongOffer").innerHTML=(" ");  
  			  
  			  return true;
  		    }
    	  
    	  function IsEmpty6() {
    		    if (document.forms['myform'].imageurl.value === "") {
    				  document.getElementById("errorimage").innerHTML=("Please select product image ");
    			    return false;
    			  }
    			  else{
    			  }
    				  document.getElementById("errorimage").innerHTML=(" ");  
    			  
    			  return true;
    		    }
    	  
    	  function IsEmpty7() {
  		    if (document.forms['myform'].logourl.value === "") {
  				  document.getElementById("errorlogo").innerHTML=("Please select logo ");
  			    return false;
  			  }
  			  else{
  				  
  			  }
  				  document.getElementById("errorlogo").innerHTML=(" ");  
  			  
  			  return true;
  		    }
    	  
   </script>

<script>
		function onlyAlphabets(e, t) {
		    try {
		        if (window.event) {
		            var charCode = window.event.keyCode;
		        }
		        else if (e) {
		            var charCode = e.which;
		        }
		        else { return true; }
		        if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))//(A-Z  ,a-z)
		            return true;
		        else
		            return false;
		    }
		    catch (err) {
		        alert(err.Description);
		    }
		} 
		</script>

<script>
    function check_space(offernm){
        var regex = /^[^\s]+(\s+[^\s]+)*$/;
        if(regex.test(offernm.offerName.value)){
      
       return true;
        }
        else{
          alert("This is not a valid entry");
          return false;
      }
      }
    </script>

<script>

function show(input) {
        debugger;
        var validExtensions = ['jpg','png','jpeg','jfif']; //array of valid extensions
        var fileName = input.files[0].name;
        var fileNameExt = fileName.substr(fileName.lastIndexOf('.') + 1);
        if ($.inArray(fileNameExt, validExtensions) == -1) {
            input.type = ''
            input.type = 'file'
            $('#imageid').attr('src',"");
           /*  alert("Only these file types are accepted : "+validExtensions.join(', ')); defaultDate: '01/01/01'*/
            document.getElementById("image-error").innerHTML=("Only these file types are accepted : "+validExtensions.join(', '));
        }
        else  document.getElementById("image-error").innerHTML=(" ");
        {
        if (input.files && input.files[0]) {
            var filerdr = new FileReader();
            filerdr.onload = function (e) {
                $('#imageid').attr('src', e.target.result);
            }
            filerdr.readAsDataURL(input.files[0]);
        }
        }
    }
</script>

<script>
function Isemptyselect()
{
	 if (document.forms['myform'].usertype.value === " ") {
		  document.getElementById("errorselect").innerHTML=("Please select usertype");
	    return false;
	  }
   
	  else{
		  document.getElementById("errorselect").innerHTML=(" ");
	        return true;
	  }
        
		}
		</script>

<script type="text/javascript">
           
        </script>
<script>
function show1(input) {
        debugger;
        var validExtensions = ['jpg','png','jpeg','jfif']; //array of valid extensions
        var fileName = input.files[0].name;
        var fileNameExt = fileName.substr(fileName.lastIndexOf('.') + 1);
        if ($.inArray(fileNameExt, validExtensions) == -1) {
            input.type = ''
            input.type = 'file'
            $('#logid').attr('src',"");
           /*  alert("Only these file types are accepted : "+validExtensions.join(', ')); */
            document.getElementById("log-error").innerHTML=("Only these file types are accepted : "+validExtensions.join(', '));
        }
        else  document.getElementById("log-error").innerHTML=(" ");
        {
        if (input.files && input.files[0]) {
            var filerdr = new FileReader();
            filerdr.onload = function (e) {
            
            	$('#logid').attr('src', e.target.result);
            }
            filerdr.readAsDataURL(input.files[0]);
        }
        }
    }
</script>
<script>
// Add the following code if you want the name of the file appear on select
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});


</script>
<script>
$(document).on('click', '#close-preview', function(){ 
    $('.image-preview').popover('hide');
    // Hover befor close the preview
    $('.image-preview').hover(
        function () {
           $('.image-preview').popover('show');
        }, 
         function () {
           $('.image-preview').popover('hide');
        }
    );    
});

$(function() {
    // Create the close button
    var closebtn = $('<button/>', {
        type:"button",
        text: 'x',
        id: 'close-preview',
        style: 'font-size: initial;',
    });
    closebtn.attr("class","close pull-right");
    // Set the popover default content
    $('.image-preview').popover({
        trigger:'manual',
        html:true,
        title: "<strong>Preview</strong>"+$(closebtn)[0].outerHTML,
        content: "There's no image",
        placement:'bottom'
    });
    // Clear event
    $('.image-preview-clear').click(function(){
        $('.image-preview').attr("data-content","").popover('hide');
        $('.image-preview-filename').val("");
        $('.image-preview-clear').hide();
        $('.image-preview-input input:file').val("");
        $(".image-preview-input-title").text("Browse"); 
    }); 
    // Create the preview image
    $(".image-preview-input input:file").change(function (){     
        var img = $('<img/>', {
            id: 'dynamic',
            width:250,
            height:200
        });      
        var file = this.files[0];
        var reader = new FileReader();
        // Set preview image into the popover data-content
        reader.onload = function (e) {
            $(".image-preview-input-title").text("Change");
            $(".image-preview-clear").show();
            $(".image-preview-filename").val(file.name);            
            img.attr('src', e.target.result);
            $(".image-preview").attr("data-content",$(img)[0].outerHTML).popover("show");
        }        
        reader.readAsDataURL(file);
    });  
});

</script>

<script>
$(document).on('click', '#close-preview1', function(){ 
    $('.image-preview1').popover('hide');
    // Hover befor close the preview
    $('.image-preview1').hover(
        function () {
           $('.image-preview1').popover('show');
        }, 
         function () {
           $('.image-preview1').popover('hide');
        }
    );    
});

$(function() {
    // Create the close button
    var closebtn = $('<button/>', {
        type:"button",
        text: 'x',
        id: 'close-preview1',
        style: 'font-size: initial;',
    });
    closebtn.attr("class","close pull-right");
    // Set the popover default content
    $('.image-preview1').popover({
        trigger:'manual',
        html:true,
        title: "<strong>Preview</strong>"+$(closebtn)[0].outerHTML,
        content: "There's no image",
        placement:'bottom'
    });
    // Clear event
    $('.image-preview-clear1').click(function(){
        $('.image-preview1').attr("data-content","").popover('hide');
        $('.image-preview-filename1').val("");
        $('.image-preview-clear1').hide();
        $('.image-preview-input1 input:file').val("");
        $(".image-preview-input-title1").text("Browse"); 
    }); 
    // Create the preview image
    $(".image-preview-input1 input:file").change(function (){     
        var img = $('<img/>', {
            id: 'dynamic',
            width:250,
            height:200
        });      
        var file = this.files[0];
        var reader = new FileReader();
        // Set preview image into the popover data-content
        reader.onload = function (e) {
            $(".image-preview-input-title1").text("Change");
            $(".image-preview-clear1").show();
            $(".image-preview-filename1").val(file.name);            
            img.attr('src', e.target.result);
            $(".image-preview1").attr("data-content",$(img)[0].outerHTML).popover("show");
        }        
        reader.readAsDataURL(file);
    });  
});

</script>

<script>
  $(function () {
        
        $('#startdateid,#enddateid').datetimepicker({
            useCurrent: false,
            minDate: moment()
        });
        $('#startdateid').datetimepicker().on('dp.change', function (e) {
            var incrementDay = moment(new Date(e.date));
            incrementDay.add(1, 'days');
            $('#enddateid').data('DateTimePicker').minDate(incrementDay);
            $(this).data("DateTimePicker").hide();
        });

        $('#enddateid').datetimepicker().on('dp.change', function (e) {
            var decrementDay = moment(new Date(e.date));
            decrementDay.subtract(1, 'days');
            $('#startdateid').data('DateTimePicker').maxDate(decrementDay);
             $(this).data("DateTimePicker").hide();
        });

    });
	        </script>
<script>
	        
	        function validateThisFrom(thisForm) {
        if (thisForm.usertype.value == "") {
        	document.getElementById("errorselect").innerHTML=("Please make a selection ");
            thisForm.usertype.focus();
            return false;
        }
        </script>
<style>
div.b {
	position: fixed;
	top: 0;
	border: 0px;
	width: 1400px;
	height: 30px;
	z-index: 2;
}

body {
	padding-top: 50px;
}

#formid {
	max-width: 800px;
	margin: 0 auto;
	left: 500px;
}

#formid .form-control {
	position: relative;
	height: 50px;
	font-size: 16px;
	border-radius: 0;
}

div.c {
	position: absolute;
	top: 50px;
	width: 1300px;
	height: 600px;
	border: 3px;
	z-index: 1;
}

div.titles {
	font-style: bold;
}

.container {
	margin-top: 20px;
}

.image-preview-input {
	position: relative;
	overflow: hidden;
	margin: 0px;
	color: #333;
	background-color: #fff;
	border-color: #ccc;
}

.image-preview-input input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	padding: 0;
	font-size: 20px;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity = 0);
}

.image-preview-input-title {
	margin-left: 2px;
	height: 10px;
	width: 10px;
}

.image-preview-input1 {
	position: relative;
	overflow: hidden;
	margin: 0px;
	color: #333;
	background-color: #fff;
	border-color: #ccc;
}

.image-preview-input1 input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	padding: 0;
	font-size: 20px;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity = 0);
}

.image-preview-input-title1 {
	margin-left: 2px;
}
</style>

</head>
<body>


	<div class="b">
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<a class="navbar-brand" href="#"> <img
				src="https://images.app.goo.gl/rqjHGT8y3BZ1AdXu8" alt="logo"
				style="width: 30px;">
			</a>
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="topnav-right">
						<a class="navbar-brand" href="http://localhost:8081">Home</a>
					</div>
				</div>
			</nav>
		</nav>
	</div>
	<div>
		<h3 style="color: red">${msg}</h3>
	</div>
	<div class="c">
		<div class="container">
			<form:form action="upload" modelAttribute="offer" name="myform"
				id="formid" enctype="multipart/form-data" method="post">
				<div class="titles">
					<h2 align="left">Upload Your Offer Details</h2>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<label>Upload logo:</label>
						<!-- image-preview-filename input [CUT FROM HERE]-->
						<div class="input-group image-preview">
							<input type="text" class="form-control image-preview-filename"
								disabled="disabled" />
							<!-- don't give a name === doesn't send on POST/GET -->
							<span class="input-group-btn"> <!-- image-preview-clear button -->
								<form:button type="button"
									class="btn btn-default image-preview-clear"
									style="display:none;">
									<span class="glyphicon glyphicon-remove"></span> Clear
                    </form:button> <!-- image-preview-input -->
								<div class="btn btn-default image-preview-input">
									<span class="glyphicon glyphicon-folder-open"></span> <span
										class="image-preview-input-title">Browse</span> <input
										type="file" accept="image/png, image/jpeg, image/gif"
										name="logourl" id="logid" style="width: auto;"
										autocomplete="off" onchange="show1(this) || IsEmpty7()" /> <span
										id="log-error" style="color: Red;"></span> <span
										id="errorlogo" style="color: Red;"></span>
									<!-- rename it -->
								</div>
							</span>
						</div>
						<!-- /input-group image-preview [TO HERE]-->
					</div>
					<div class="col-sm-6">
						<label>Upload product image:</label>
						<!-- image-preview-filename input [CUT FROM HERE]-->
						<div class="input-group image-preview1">
							<input type="text" class="form-control image-preview-filename1"
								disabled="disabled" />
							<!-- don't give a name === doesn't send on POST/GET -->
							<span class="input-group-btn"> <!-- image-preview-clear button -->
								<form:button type="button"
									class="btn btn-default image-preview-clear1"
									style="display:none;">
									<span class="glyphicon glyphicon-remove"></span> Clear
                    </form:button> <!-- image-preview-input -->
								<div class="btn btn-default image-preview-input1">
									<span class="glyphicon glyphicon-folder-open"></span> <span
										class="image-preview-input-title1">Browse</span> <input
										type="file" accept="image/png, image/jpeg, image/gif"
										name="imageurl" id="imageid" autocomplete="off"
										onchange="show(this) || IsEmpty6() " style="width: auto;" />
									<!-- rename it -->
									<span id="image-error" style="color: Red;"></span> <span
										id="errorimage" style="color: Red;"></span>
								</div>
							</span>
						</div>
						<!-- /input-group image-preview [TO HERE]-->
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-6">
						<label for="offerName">Offer Name:</label>
						<form:input type="text" name="offerName" path="offerName"
							onchange="IsEmpty()" placeholder="Please Enter OfferName"
							class="form-control" id="offernameid" autocomplete="off"
							minlength="4" />
						<span id="erroroffername" style="color: Red;"></span>
					</div>
					<div class="col-sm-6">
						<label for="exampleFormControlTextarea1">Content:</label>
						<form:textarea class="form-control" name="content"
							onchange="IsEmpty1()" path="content"
							placeholder="Please Enter Content" id="contentid"
							autocomplete="off" minlength="10" />
						<span id="errorcontent" style="color: Red;"></span>
					</div>
				</div>
				<br>

				<div class="row">
					<div class="col-sm-6">
						<label for="startdate" class="control-label">StartDate</label>
						<div class="input-group date" id="startdateid">
							<form:input type="text" path="startDate" id="startdateid"
								onchange="IsEmpty2()" onkeydown="return false" name="startDate"
								class="form-control" placeholder="Please Enter StartDate"
								autocomplete="off" />
							<span class="input-group-addon"> <span id="errorstartdate"
								style="color: Red;"></span> <span id="errorstartdate"
								style="color: Red;"></span> <span
								class="glyphicon-calendar glyphicon"></span>
							</span>
						</div>

					</div>

					<div class="col-sm-6">
						<label for="enddate">EndDate</label>
						<div class="input-group date" id="enddateid">
							<form:input type="text" path="endDate" id="enddateid"
								disabled="disabled" onchange="IsEmpty3()"
								onkeydown="return false" onkeyup="return null" name="endDate"
								class="form-control" placeholder="Please Enter LastDate"
								autocomplete="off" />
							<span class="input-group-addon"> <span id="errorenddate"
								style="color: Red;"></span> <span
								class="glyphicon-calendar glyphicon"></span>
							</span>
						</div>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-6">
						<label for="usertype" class="col-10">Usertype:</label>
						<form:select class="form-control" name="usertype" path="usertype"
							required="required" id="usertypeid" readonly="true"
							onchange="Isemptyselect()" placeholder="select usertype">
							<span id="errorselect" style="color: Red;"></span>
							<form:option value="">Select Usertype</form:option>
							<form:option value="1">1</form:option>
							<form:option value="2">2</form:option>
							<form:option value="3">3</form:option>
						</form:select>
					</div>

					<div class="col-sm-6">
						<label for="longOffer">Short Offer:</label>
						<form:input type="text" class="form-control" name="shortOffer"
							placeholder="Please Enter shortoffer information"
							path="shortOffer" id="shortofferid" onchange="IsEmpty4()"
							autocomplete="off" minlength="15" />
						<span id="errorshortOffer" style="color: Red;"></span>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-6">
						<label for="longOffer">Long Offer:</label>
						<form:input type="text" class="form-control" name="longOffer"
							placeholder="Please Enter Longoffer information" path="longOffer"
							id="longofferid" onchange="IsEmpty5()" autocomplete="off"
							minlength="12" />
						<span id="errorlongOffer" style="color: Red;"></span>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-6">
						<form:button type="submit"
							onclick="return (IsEmpty7() && IsEmpty6() && IsEmpty() && IsEmpty1() && IsEmpty2() && IsEmpty3()  &&  IsEmpty4() && IsEmpty5() && validateThisFrom (this));"
							class="btn btn-info">Submit</form:button>
						<form:form modelAttribute="offer" action="">
							<form:button type="button" class="btn btn-info"
								onclick="location.href='/display'">Check Offers
			</form:button>
						</form:form>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>