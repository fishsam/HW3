<%-- 
    Document   : index
    Created on : Sep 28, 2017, 4:41:51 PM
    Author     : sfishman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <div class ="index">
    <body>
        <h1>Simple Salary Calculator</h1>
        <hr>
        <form name="calcform" action="hwresults.jsp" method="post">
            <table border='4px lightpurple' class='center'>
                <tbody>
                    <tr>
                        <td>Hours Worked</td>
                        <td><input type ="text" name="hours" value="" size="50" required></td>
                    </tr>
                    <tr>
                        <td>Hourly Pay</td>
                        <td><input type ="text" name="HourlyRate" value="" size="50" required></td>
                    </tr>
                    <tr>
                        <td>Pre-Tax Deduction</td>
                        <td><input type ="text" name="pretaxdeduxtions" value="" size="50" required></td>
                    </tr>
                    <tr>
                        <td>Post-Tax Deductions</td>
                        <td><input type ="text" name="posttaxdeductions" value="" size="50" required></td>
                    </tr>
                </tbody>
            </table>
            <div class ='buttons'>
                <input type="reset" value="Clear" id="clear">
                <input type="submit" value="Submit" id="submit">
            </div>
        </form>
    </body>
    </div>
</html>
