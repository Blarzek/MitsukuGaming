<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wishlist</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <br>
        <div class="container">
            <h1>WishList</h1>
            <div class="container">
                <table class="table-striped table table-hover">
                    <c:forEach var="element" items="${productListWished}">
                        <tr>
                            <td><img src="img/logos/${element.logo}" alt=""></td>
                            <td>${element.name}</td>
                            <td>${element.price}</td>
                            <td>${element.platform}</td>
                            <td>${element.discount}</td>
                            <td>
                                <form action="FrontController" method="post">
                                    <input type="hidden" name="id" value="${element.productId}">
                                    <input type="hidden" name="command" value="AddToCartCommand">
                                    <input type="image" src="img/icons/add-to-cart-icon.png" alt="Submit Form" />
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>
