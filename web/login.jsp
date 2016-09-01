<%@page import="com.acem.rent.dao.UserDAO "%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.acem.rents.User"%>
<%@page import="com.acem.rent.dao.SellDAO" %>
<%@page import="com.acem.rent.DB.DAO.impl.UserDAOImpl" %>

<%
    if(request.getMethod().equalsIgnoreCase("POST")){
        UserDAO userDAO=new UserDAOImpl();
        User user=new User();
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        user.setUsername(username);
        user.setPassword(password);
        try{
        user=userDAO.login(username, password);
        //.println(user.getEmail());
        if(user!=null){
            session.setAttribute("user", user);
            response.sendRedirect("index2.jsp");
        }
        
        }catch(Exception e){
            out.println(e.getMessage());
        }
        
        
    }
%>


<html lang="en">


    <meta charset="utf-8">
    <title>Login </title>

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="css/animate.css">
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="css/style.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>


    <body>

        <div class="container">
            <div class="login-box animated fadeInUp">

                <form action="login.jsp" method="post">
                    <div class="box-header">
                        <h2>login form</h2>
                    </div>
                    <label for="username">Username</label>
                    <br/>
                    <input type="text" id="username" name="username">
                    <br/>
                    <label for="password">Password</label>
                    <br/>
                    <input type="password" id="password" name="password">
                    <br/>
                    <button type="submit">Sign In</button>
                    <br/>
                    <a href="#"><p class="small">Forgot your password?</p></a>
                </form>`
            </div>
        </div>
    </body>

    <script>
        $(document).ready(function () {
            $('#logo').addClass('animated fadeInDown');
            $("input:text:visible:first").focus();
        });
        $('#username').focus(function () {
            $('label[for="username"]').addClass('selected');
        });
        $('#username').blur(function () {
            $('label[for="username"]').removeClass('selected');
        });
        $('#password').focus(function () {
            $('label[for="password"]').addClass('selected');
        });
        $('#password').blur(function () {
            $('label[for="password"]').removeClass('selected');
        });
    </script>

</html>