<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>CodePen - Flat HTML5/CSS3 Login Form</title>
<link rel="stylesheet" href="./resources/css/style.css">
<script type="text/javascript">
	window.onload = function() {
		var result = '${result}';
		var msg = '${msg}';

		if (result != '') {
			alert(msg)
			window.location.href = '/11001/loginPage.do';
		}
	};
</script>


</head>
<body>
	<!-- partial:index.partial.html -->

	<div class="login-page">
		<div class="form">
			<form class="register-form" action="/11001/join.do">
				<input type="text" name="memberNm" placeholder="name" /> <input
					type="password" name="passwd" placeholder="password" /> <input
					type="text" name="email" placeholder="email address" />
				<button onClick="submit();">create</button>
				<p class="message">
					Already registered? <a href="#">Sign In</a>
				</p>
			</form>


			<form class="login-form">
				<input type="text" placeholder="username" /> <input type="password"
					placeholder="password" />
				<button>login</button>
				<p class="message">
					Not registered? <a href="#">Create an account</a>
				</p>
			</form>
		</div>
	</div>
	<!-- partial -->
	<script
		src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="./resources/js/script.js"></script>

</body>
</html>