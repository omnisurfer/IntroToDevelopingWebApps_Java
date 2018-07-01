<%-- 
    Document   : index
    Created on : Mar 5, 2017, 2:07:17 PM
    Author     : omnis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <style>
        p.indent{ padding-left: 1.8em }

        table, th, td {
            border: 1px solid black;
        }
    </style>

    <body>
        <h1>Hello World!</h1>
        <form name="Withdrawal Form" action="index.jsp">
            <table>
                <tr>
                    <td>Pay to: <input type="text" name="payees" /></td>
                    <td>Number: <input type="text" name="number" /></td>
                    <td>Date: <input type="text" name="date" /></td>
                    <td>Amount: <input type="float" name="amount" /></td>
                </tr>
                <tr>
                    <td>Primary Category: <input type="text" name="primaryCategory" /></td>
                    <td>Sub Category: <input type="text" name="secondaryCategory" /></td>
                </tr>
                <tr>
                    <td>Memo: <input type="text" name="memo" /><td>
                </tr>
                <tr>
                    <td><input type="submit" value="Enter" /></td>
                </tr>            
            </table>
        </form>    

        <jsp:useBean id="transBean" scope="page" class="org.mypackage.hello.TransactionHandler" />
        <jsp:setProperty name="transBean" property="payees" />
        <jsp:setProperty name="transBean" property="primaryCategory" />
        <jsp:setProperty name="transBean" property="secondaryCategory" />
        <jsp:setProperty name="transBean" property="memo" />
        <jsp:setProperty name="transBean" property="number" />
        <jsp:setProperty name="transBean" property="date" />
        <jsp:setProperty name="transBean" property="amount" />
        <table>
            <tr>
                <td>Payeez: <jsp:getProperty name="transBean" property="payees" /></td>                
                <td>Number: <jsp:getProperty name="transBean" property="number" /></td>                
                <td>Date: <jsp:getProperty name="transBean" property="date" /></td>                
                <td>Amount: <jsp:getProperty name="transBean" property="amount" /></td>
            </tr>
            <tr>
                <td>Primary Category: <jsp:getProperty name="transBean" property="primaryCategory" /></td>                
                <td>Sub Category: <jsp:getProperty name="transBean" property="secondaryCategory" /></td>                
            </tr>
            <tr>
                <td>Memo: <jsp:getProperty name="transBean" property="memo" /></td>
            </tr>           
        </table>
    </body>
</html>
