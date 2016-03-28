<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment method</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/shop-homepage.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <link href="bootstrap/bootstrap.css" rel="stylesheet">
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap/jquery.js"></script>
        <script src="bootstrap/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1>Payment method</h1>
            <form action="FrontController">
                <input type="hidden" name="command">
                <input type="submit" value="Go to Main page" class="btn-link">
            </form><br><br>
            <form action="FrontController">
                <select name="payment" onchange="">
                    <option value="1">Visa</option>
                    <option value="2">MasterCard</option>
                    <option value="3">PayPal</option>
                    <option value="4">Wire transfer</option>
                </select>
                <input name="command" value="BuyCommand" type="hidden"><br>
                <input value="Buy" type="submit"><br>
            </form><%--
            <%@if($payment){
                switch ($_POST['payment']) {
                    case label1:
                        code to be executed if n=label1;
                        break;
                    case label2:
                        code to be executed if n=label2;
                        break;
                    case label3:
                        code to be executed if n=label3;
                        break;
                    ...
                    default:
                        code to be executed if n is different from all labels;
                }
            }%>
            <%--<script>
            function showPayment() {
                var value = $_POST['payment'];
                switch(payment) {
                    case 1:
                        <form >
                        </form>
                        break;
                    case 2:
                        code block
                        break;
                    case 3:
                        code block
                        break;
                    case 4:
                        code block
                        break;
                    default:
                        default code block
                }
            }
            </script>--%>
        </div>
    </body>
</html>