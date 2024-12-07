<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>

</head>
<body>
	<h3>SignUp Page...</h3>
	<div class="signupWindow">
		<div class="signupHeader">Sign up</div>
		<div class="signupContent">
			<div style="display:block;padding-top:20px">Username*</div>
			<input type="text" id="T1" /> 
			<div style="display:block;padding-top:20px">firstname*</div>
			<input type="text" id="T3" />
			<div style="display:block;padding-top:20px">lastname*</div>
			<input type="text" id="T4" />
			<div style="display:block;padding-top:20px">mobileno*</div>
			<input type="text" id="T5" />
			<div style="display:block;padding-top:20px">emailid*</div>
			<input type="text" id="T6" />
			
			</div>
			<button class="saveButton" onclick="save()" >save</button>
			<div style="display:block;height:80px;line-height:80px">
				<label id="ack"></label>
			</div>
			
		</div>

</body>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
	function save(){
		var data = JSON.stringify({
			username: T1.value,
			firstname: T3.value,
			lastname: T4.value,
			mobileno: T5.value,
			emailid: T6.value,
			
		});
		var url = "http://localhost:8081/user/save";
		callApi("POST", url, data, getResponse);
	}
	
</script>
</html>