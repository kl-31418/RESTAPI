<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="css/styles.css">
</head>
<body>
	<div class="loginWindow">
		<div class="loginHeader">SignIn</div>
		<div class="innerLoginWindow">
			<div style="padding:20px 0px 3px 0px">Username*</div>
			<input type="text" id="T1" />
			<div style="padding:10px 0px 3px 0px">Password*</div>
			<input type="password" id="T2" />
			<div style="padding:10px 0px 10px 0px;text-align:right">
				Forget
				<label style="cursor:pointer;color:blue">Password</label>
			</div>
			<button class="signinBtn" onclick="signin()">SignIn</button>
			<div style="width:100%;height:70px;line-height:70px">
				<label id="ack"></label>
			</div>
			<div style="width:100%;height:20px;line-height:20px;text-align:center">
				Don't have an account?
			</div>
			<label class="signUp">SIGN UP NOW</label>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
	function signin() {
		var data = JSON.stringify({
			username: T1.value,
			password: T2.value
		});
		var url = "http://localhost:8081/user/login";
		callApi("POST", url, data, signinHandler);
	}
	function signinHandler(res){
		//alert(res);
		if(res==401){
			ack.style.color = "red";
			ack.innerHTML = "Invalid Credentails!";
		}
		else{
			ack.innerHTML = "";
			location.replace("/home");
			//location.href = "/home"
		}
	}
}
function signUp(){
	location.href = "/signup";
}
</script>
</html>