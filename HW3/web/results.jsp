

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
    </head>
    
    <%
        double Hours = Double.parseDouble (request.getParameter("hoursworked"));
        double Rate = Double.parseDouble (request.getParameter("hourlypay"));
        double PreTaxDeductions = Double.parseDouble (request.getParameter("pretaxdeductions"));
        double PostTaxDeductions = Double.parseDouble (request.getParameter("posttaxdeductions"));
        
        %>
        
        
    <body>
        <h1>Salary Info</h1>
    <hr>
    <table border ='4px gold' class='center'>
        <tbody>
            <tr>
                <td>Total Hours </td>
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
                    overtime not reached.
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
                 <%double taxamount;%>
                 <% if(pretaxpay > 500){%>
                 $<%=taxamount=(pretaxpay * 0.22)%>
                 <% } else {%>
                 $<%=taxamount=(pretaxpay * 0.18)%>
                 <% } %>
                </td>
            </tr>
            <tr>
                <td>Post-Tax Deductions </td>
                <td>$<%=PostTaxDeductions %></td>
            </tr>
            <tr>
                <td>Post-Tax Pay</td>
                <td>
                    <%double posttaxpay;%>
                    $<%=posttaxpay=grosspay - taxamount %></td>
            </tr>
            <tr>
                <td>Net Pay</td>
                <td>$<%= posttaxpay - PostTaxDeductions %>
                </td>
            </tr>
        </tbody>
    </table>
    </body>
</html>
