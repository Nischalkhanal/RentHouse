<%--
    Document   : sell
    Created on : Aug 9, 2016, 1:23:29 PM
    Author     : Karan
--%>
<%@page import="com.acem.rents.Sell"%>
<%@page import="com.acem.rent.DB.DAO.impl.SellDAOImpl"%>
<%@page import="com.acem.rent.dao.SellDAO"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getMethod().equalsIgnoreCase("POST")){
        SellDAO userDAO=new SellDAOImpl();
        Sell sell=new Sell();
        sell.setFirstName(request.getParameter("firstname"));
        sell.setLastName(request.getParameter("lastname"));
        sell.setContact(request.getParameter("contact"));
        sell.setAddress(request.getParameter("address"));
        sell.setSpecs(request.getParameter("specs"));
        sell.setPrice(request.getParameter("price"));
        sell.setStatus(request.getParameter("status")!= null);
        try{
        if(userDAO.insert(sell) >0){
            response.sendRedirect("index2.jsp");
        }
        
        }catch(Exception e){
            out.println(e.getMessage());
        }
        
        
    }
%>
<html>
<head>
	<title>Sell</title>
	<link rel="stylesheet" href="css/sell.css">
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
<h1>Entry Form</h1>
	<div class="container">
	
		<div class="left w3l">
		
			<div class="register agileits">
				<form action="" method="post">
					<input type="text"  class="firstname" name="firstname" placeholder="Firstname" required="">
					<input type="text" class="lastname" name="lastname" placeholder="Lastname" required="">
                                        <input type="text" class="contact" name="contact" placeholder="Contact" required="">
                                        <input type="text" class="address" name="address" placeholder="Address" required="">
					<input type="text" class="specs" name="specs" placeholder="Specs" required="">
                                        <input type="text" class="price" name="price" placeholder="Price" required="">
                                        <input type="text" class="status" name="status" placeholder="Status" required="">
                                        <input type="submit" value="Submit">
				</form>
			</div>
			</div>
		<div class="clear"></div>
		
	</div>
	<div class="footer agile">
			<p> <a>Enter your house or room description</a></p>
		</div>
</body>
</html>