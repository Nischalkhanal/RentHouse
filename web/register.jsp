<%@page import="com.acem.rent.dao.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.acem.rents.User"%>
<%@page import="com.acem.rent.dao.SellDAO" %>
<%@page import="com.acem.rent.DB.DAO.impl.UserDAOImpl" %>
<%
    if(request.getMethod().equalsIgnoreCase("POST")){
        UserDAO userDAO=new UserDAOImpl();
        User user=new User();
        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        user.setEmail(request.getParameter("email"));
        try{
        if(userDAO.insert(user) >0){
            response.sendRedirect("index.html");
        }
        
        }catch(Exception e){
            out.println(e.getMessage());
        }
        
        
    }
%>
<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
	<link rel="stylesheet" href="css/registerstyle.css">
	<link href='//fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700,300,200' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

	<!-- For-Mobile-Apps-and-Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Impressive Multiple Form  Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //For-Mobile-Apps-and-Meta-Tags -->

</head>
<body>
<h1>Register Form</h1>
	<div class="container">
	
		<div class="left w3l">
		
			<div class="register agileits">
				<form action="" method="post">
					<input type="text"  class="name" name="username" placeholder="Username" required="">
					<input type="text" class="password" name="password" placeholder="Password" required="">
					<input type="text" class="email" name="email" placeholder="Email" required="">
                                        <input type="submit" value="Sign Up">
				</form>
			</div>
			</div>
		<div class="clear"></div>
		
	</div>
	<div class="footer agile">
			<p> <a>Rent House</a></p>
		</div>
</body>
</html>