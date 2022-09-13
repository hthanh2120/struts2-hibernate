<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib prefix="s" uri="/struts-tags" %>

    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

    <head>
        <style>
            .container a:visited {
                color: blue;
            }

            .container a:hover {
                color: #4CAF50;
            }
        </style>
        <title>Order
            <s:property value="id" />
        </title>
    </head>

    <body>
        <s:form method="post" action="update">
            <table>
                <s:hidden name="orderBill.id"/>
                <s:textfield name="orderBill.clientName" label="Client" />
                <s:textfield name="orderBill.amount" label="Amount" />
                <tr>
                    <td colspan="2">
                        <s:submit />
                    </td>
            </table>
        </s:form>
        <a href="<%=request.getContextPath()%>/orders">Back to Orders</a>
    </body>

    </html>