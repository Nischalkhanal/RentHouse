<HTML>
    <body>




        <%@page import="com.acem.rent.DB.DAO.impl.RentDAOImpl"%>
        <%@page import="com.acem.rent.dao.RentDAO"%>
        <%@page import="com.acem.rents.Rent" %>

        <script src="https://code.jquery.com/jquery.min.js"></script>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        <h2>Rents Databases</h2>  
        <% RentDAO rentDAO = new RentDAOImpl();   %>

        <table  class="table table-bordered table-hover table-striped ">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Contact</th>
                <th>Specs</th>
                <th>Address</th>
                <th>Price</th>
            </tr>  
            <% for (Rent r : rentDAO.getAll()) {%>
            <tr>

                <td><%=r.getFirstName()%></td>
                <td><%=r.getLastName()%>  </td>
                <td><%=r.getContact()%></td>
                <td><%=r.getSpecs()%></td>
                <td><%=r.getAddress()%></td>
                <td><%=r.getPrice()%></td>

            </tr>    
            <% }%> 
        </table>

    </body>
</HTML>
