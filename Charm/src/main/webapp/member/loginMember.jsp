<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet" href="../resources/css/headers.css" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="description" content="BootStrap Demo"/>

    <title>귀템 스토어</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<link href="./resource/css/headers.css" rel="stylesheet">
		    
	<jsp:include page="../menu.jsp" />
</head>
<body style="background-color:rgb(224, 224, 224)">
	
   <div class="text-center">
  <h4 class="mx-md-auto mb-0" style="color:rgb(125,125,255);">로그인</h4>
  </div>
    
  <jsp:include page="../menu2.jsp" />
  <hr>		
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="processLoginMember.jsp" method="post">

				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label> <input
						type="text" class="form-control" placeholder="ID" name="id"
						required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> <input
						type="password" class="form-control" placeholder="Password"
						name="password" required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">Login</button>

			</form>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>