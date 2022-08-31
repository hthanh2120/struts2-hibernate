<!DOCTYPE html PUBLIC 
    "-//W3C//DTD XHTML 1.1 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib prefix="s" uri="/struts-tags" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <style type="text/css">
            table, tr, th, td {
                border-collapse:collapse;
                border: 1px solid;
                width:600px;
                border-spacing:10px;
                table-layout: auto;
                margin-left: auto;
                margin-right: auto;
                text-align:center;
                font-color: black;
            }
            div.container {
                font-size: 20px;
                font-color: red;
                font-style:bold;
                text-align:center;
            }
        </style>
    </head>
    <body>
        <s:actionmessage />
        <s:actionerror />
        <table>
            <tr>
                <th>ID</th>
                <th>Client</th>
                <th>Amount</th>
                <th>Actions</th>
            </tr>
            <s:iterator value="lst">
            <tr>
                <td>${id}</td>
                <td><s:property value="clientName"/></td>
                <td>${amount}</td>
                <td>
                        <a href="order/${id}/edit">Edit</a> |
                        <a href="order/${id}/del">Delete</a>
                </td>
             </tr>
            </s:iterator>
        </table>
        <div class="container">
            <a href="order/new">Create a new order</a>
        </div>
    </body>
</html>
