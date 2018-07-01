<%-- 
    Document   : response
    Created on : Mar 5, 2017, 2:18:13 PM
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
        <jsp:useBean id="mybean" scope="page" class="org.mypackage.hello.TransactionHandler" />
        <jsp:setProperty name="mybean" property="payees" />
        <jsp:setProperty name="mybean" property="primaryCategory" />
        <jsp:setProperty name="mybean" property="secondaryCategory" />
        <jsp:setProperty name="mybean" property="memo" />
        <jsp:setProperty name="mybean" property="number" />
        <jsp:setProperty name="mybean" property="date" />
        <jsp:setProperty name="mybean" property="amount" />
        <table>
            <tr>
                <td>Payee: <jsp:getProperty name="mybean" property="payees" /></td>                
                <td>Number: <jsp:getProperty name="mybean" property="number" /></td>                
                <td>Date: <jsp:getProperty name="mybean" property="date" /></td>                
                <td>Amount: <jsp:getProperty name="mybean" property="amount" /></td>
            </tr>
            <tr>
                <td>Primary Category: <jsp:getProperty name="mybean" property="primaryCategory" /></td>                
                <td>Sub Category: <jsp:getProperty name="mybean" property="secondaryCategory" /></td>                
            </tr>
            <tr>
                <td>Memo: <jsp:getProperty name="mybean" property="memo" /></td>
            </tr>           
        </table>

    </body>
</html>
