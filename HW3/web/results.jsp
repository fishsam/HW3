<%-- 
    Document   : results
    Created on : Sep 28, 2017, 5:13:18 PM
    Author     : sfishman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
        <link href="style.css" rel="stylesheet" type='text/css'/>
    </head>
    <%
        double Hours = Double.parseDouble (request.getParameter("hours"));
        double Rate = Double.parseDouble (request.getParameter("HourlyRate"));
        double PreTaxDeductions = Double.parseDouble (request.getParameter("pretaxdeductions"));
        double PostTaxDeductions = Double.parseDouble (request.getParameter("posttaxdeductions"));
        %>
        <div class ="info">
    <body>
    <hl>Salary Info</hl>
    <hr>
    <table border ='4px gold' class='center'>
        <tbody>
            <tr>
                <td>Total Hours</td>
                <td>$<%=Hours %></td>
            </tr>
            <tr>
                <td>Hourly Rate</td>
                <td>$<%=Rate %>/hr</td>
            </tr>
            <tr>
                <td>Overtime Rate</td>
                <td>
                    <% if (Hours > 40) {%>
                    <%=Hours - 40 %>
                    <% } else {%>
                    Overtime not reached.
                    <%}%>
                </td>
            </tr>
            <tr>
                <td>Overtime Rate</td>
                <td>$<%=Rate * 1.5 %></td>
            </tr>
            <tr>
                <td>Gross Pay</td>
                <td>
                    <%double grosspay;%>
                    <% if(Hours > 40) {%>
                    $<%=grosspay =(Rate * 40) + ((Hours -40)*(1.5 * Rate))%>
                    <% } else {%>
                    $<%=grosspay=(Hours * Rate)%>
                </td>
            </tr>
            <tr>
                <td>Pre-Tax Deductions </td>
                <td>$<%=PreTaxDeductions %></td>
            </tr>
            <tr>
                <td>Pre-Tax Pay</td>
                <td> <%double pretaxpay;%>
                $<%=pretaxpay=(grosspay - PreTaxDeductions) %></td>
            </tr>
            <tr>
                <td>Tax Amount</td>
                <td>
                    
        <h1>Hello World!</h1>
    </body>
</html>
