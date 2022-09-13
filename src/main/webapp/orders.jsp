<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib prefix="s" uri="/struts-tags" %>
    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

    <head>
        <style type="text/css">
            table,
            td,
            th, tr {
                border-top: 1px solid #ccc;
                border-bottom: 1px solid #ccc;
                /*border: 1px solid black;*/
            }

            table {
                border-collapse: collapse;
                width: 100%;
                text-align: center;
            }

            th,
            td {
                padding: 10px;
            }

            th {
                height: 30px;
            }

            tr:nth-child(even) {
                background: #FFF;
            }

            tr:nth-child(odd) {
                background: #CCC;
            }

            /*Pagination*/
            .pagination {
                display: inline-block;
                float: right;
            }

            .pagination a {
                color: black;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
            }

            .pagination a.active {
                background-color: #4CAF50;
                color: white;
                border-radius: 5px;
            }

            .pagination a:hover:not(.active) {
                background-color: #ddd;
                border-radius: 5px;
            }

            .table-footer {
                margin-top: 8px;
            }

            .total-record {
                float: left;
                font-weight: bold;
                font-size: 20px;
            }

            /* Add padding and center-align text to the container */
            .container {
                padding: 16px;
                text-align: left;
            }

            a {
                color: black;
                text-decoration: none;
            }

            a:visited {
                color: black;
            }

            /* Style the horizontal ruler */
            hr {
                border: 1px solid #f1f1f1;
                margin-bottom: 25px;
            }

            /* Clear floats */
            .clearfix::after {
                content: "";
                clear: both;
                display: table;
            }

            /*Pagination*/
            .pagination {
                display: inline-block;
                float: right;
            }

            .pagination a {
                color: black;
                float: left;
                padding: 4px 8px;
                text-decoration: none;
            }

            .pagination a.active {
                background-color: #56c3e7;
                color: white;
                border-radius: 5px;
            }

            .pagination a:hover:not(.active) {
                background-color: #ddd;
                border-radius: 5px;
            }

            .button-add {
                background-color: gainsboro;
                color: white;
                height: 30px;
                margin-bottom: 10px;
                float: left;
                border: none;
                border-radius: 5px;
            }

            .button-search {
                background-color: gainsboro;
                color: black;
                height: 30px;
                margin-bottom: 10px;
                border: none;
                border-radius: 5px;
            }

            .button-search:hover {
                background-color: #56c3e7;
                color: white;
            }

            .button-add:hover {
                background-color: #56c3e7;
                color: white;
            }

            h2 {
                text-align: center;
            }
        </style>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
            function search() {
                var full_name = $("#name").val();
                window.location.href = "search.action?name=" + full_name;
            }
        </script>
    </head>

    <body>
        <s:actionmessage />
        <s:actionerror />
        <h2>List orders</h2>
        <div>
            <label style="font-weight: bold;">Enter name:</label>
            <s:textfield name="name" id="name" cssStyle="margin-left: 10px; height: 20px;" />
            <button class="button-search" onclick="search()">
                Search
            </button>
        </div>
        <br>
        <button class="button-add">
            <a href="order/new">Create a new order</a>
        </button>
        <br>
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
                    <td>
                        <s:property value="clientName" />
                    </td>
                    <td>${amount}</td>
                    <td class="button">
                        <a href="order/${id}/edit">Edit</a> |
                        <a href="order/${id}/del">Delete</a>
                    </td>
                </tr>
            </s:iterator>
        </table>
        <div class="table-footer">
            <div class="pagination">
                <a href="#">&laquo;</a>
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">6</a>
                <a href="#">&raquo;</a>
            </div>
        </div>
    </body>

    </html>