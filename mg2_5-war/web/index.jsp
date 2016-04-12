<%@page import="entities.Users"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Mitsuku Gaming</title>

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

        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Mitsuku Gaming</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="#">About</a>
                        </li>
                        <li>
                            <a href="#">Services</a>
                        </li>
                        <li>
                            <a href="supportform.jsp">Contact</a>
                        </li>
                        <li>
                            <%
                                Users loggedUser = (Users) session.getAttribute("loggedUser");
                                if (loggedUser != null) {
                                    %>
                                    <input type="text" name="username" value="Welcome <%= loggedUser.getName() %>">
                                    <form method="post" action="FrontController">
                                        <input type="hidden" name="command" value="ShowProfileCommand">
                                        <input type="hidden" name="id" value="<%= loggedUser.getUserId() %>">
                                        <input type="hidden" name="name" value="<%= loggedUser.getName() %>">
                                        <input type="hidden" name="email" value="<%= loggedUser.getEmail() %>">
                                        <input type="hidden" name="password" value="<%= loggedUser.getPassword() %>">
                                        <input type="submit" value="Modify profile">
                                    </form>
                                    <form method="post" action="FrontController">
                                        <input type="hidden" name="command" value="ShowCartCommand">
                                        <input type="submit" value="Show cart" class="btn-link">
                                    </form>
                                    <%
                                } else {
                                    %> 
                                    <form method="post" action="FrontController">
                                        <input type="text" name="email" placeholder="Email">
                                        <input type="password" name="password" placeholder="Password">
                                        <input type="hidden" name="command" value="LoginCommand">
                                        <input type="submit" value="Login">
                                    </form>
                                    <%
                                        /*
                                                boolean wrongEmail = (boolean) session.getAttribute("wrongEmail");
                                        if (wrongEmail) {
                                            out.println("That email doesn't exists in our system.<br>");
                                        }
                                        boolean wrongPassword = (boolean) session.getAttribute("wrongPassword");
                                        if (wrongPassword) {
                                            out.println("You have entered a wrong password.<br>");
                                        }
                                        */
                                    %>
                                    <a href="resetPassword.jsp">Forgot password?</a>
                                    <form action="FrontController">
                                        <input type="hidden" name="command" value="ShowCartCommand">
                                        <input type="submit" value="Show cart" class="btn-link">
                                    </form>
                            <%
                                }
                            %>
                        </li>
                        <li>
                            <form action="FrontController">
                                <input type="hidden" name="command" value="ChangeCurrencyCommand">
                                <%
                                    String currency = (String) session.getAttribute("currency");
                                    if (currency.equals("Euro")) {
                                        out.println("<input type=\"submit\" name=\"currency\" value=\"Euro\">");
                                    } else {
                                        if (currency.equals("Dollar")) {
                                            out.println("<input type=\"submit\" name=\"currency\" value=\"Dollar\">");
                                        }
                                    }
                                %>
                            </form>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>
        <br>
        <br>
        <!-- Page Content -->
        <div class="container">

            <div class="row">

                <div class="col-md-3">
                    <p class="lead">Shop Name</p>
                    <div class="list-group">
                        <a href="userformjsp.jsp" class="list-group-item">Register</a>
                        <a href="adminPanel.html" class="list-group-item">Admin Panel</a>
                        <a href="mailbox.jsp" class="list-group-item">Suggestions MailBox</a>
                        <a href="#" class="list-group-item">Category</a>
                        <%
                            if (loggedUser != null) {
                                out.println("<div class=\"list-group-item\">");
                                out.println("<form action=\"FrontController\">");
                                out.println("<input type=\"hidden\" name=\"command\" value=\"ShowMyWishListCommand\">");
                                out.println("<input type=\"submit\" value=\"My Wishlist\" class=\"btn-link2\">");
                                //out.println("<input type=\"submit\" value=\"showMyWishList\" value=\"ShowCartCommand\"");
                                //<input type="hidden" name="command" value="ShowCartCommand">
                                //<input type="submit" value="Show cart" class="btn-link">
                                out.println("</form>");
                                out.println("</div>");
                                out.println("<div class=\"list-group-item\">");
                                out.println("<form action=\"FrontController\">");
                                out.println("<input type=\"hidden\" name=\"command\" value=\"ShowMyPurchaseHistoryCommand\">");
                                out.println("<input type=\"submit\" value=\"My Purchase History\" class=\"btn-link2\">");
                                out.println("</form>");
                                out.println("</div>");
                                
                                out.println("<div class=\"list-group-item\">");
                                out.println("<form action=\"FrontController\">");
                                out.println("<input type=\"hidden\" name=\"command\" value=\"ShowMyFollowingListCommand\">");
                                out.println("<input type=\"submit\" value=\"My following list\" class=\"btn-link2\">");
                                out.println("</form>");
                                out.println("</div>");
                            }
                        %>
                        <div class="list-group-item">
                            <form action="FrontController">
                                <input type="text" name="search" placeholder="Search a game">
                                <input type="hidden" name="command" value="SearchCommand">
                                <input type="submit" value="Search">
                            </form>
                            <form action="FrontController">
                                <input type="hidden" name="command" value="ShowPopularProductsCommand">
                                <input type="submit" value="Show Popular Products">
                            </form>
                        </div>

                        <!--
                        <form action="FrontController">
                        <input type="hidden" name="command" value="showMyWishListCommand">
                        <input type="submit" value="My Wishlist" class="list-group-item">
                        </form>
                        -->
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="row carousel-holder">
                        <div class="col-md-12">
                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="img/ds3.jpg" data-slide-to="0" class="active"></li>
                                    <li data-target="#img/theDivision.jpg" data-slide-to="1"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <img class="slide-image" src="img/ds3.jpg" alt="">
                                    </div>
                                    <div class="item">
                                        <img class="slide-image" src="img/theDivision.jpg" alt="">
                                    </div>
                                    <div class="item">
                                        <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                    </div>
                                </div>
                                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <c:forEach var="element" items="${productList}">
                            <div class="col-sm-4 col-lg-4 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/${element.logo}" alt="">
                                    <div class="caption">
                                        <h4>
                                            <form method="post" action="FrontController">
                                                <input type="hidden" name="id" value="${element.productId}">
                                                <input type="hidden" name="category" value="${element.category}">
                                                <input type="hidden" name="price" value="${element.price}">
                                                <input type="submit" value="${element.name}" class="btn-link">
                                                <input type="hidden" name="command" value="ShowProductDetailsCommand">
                                            </form>
                                        </h4>
                                        <h4 class="pull-right">${element.price} 
                                            <%
                                                if (currency.equals("Euro")) {
                                            %>
                                            &euro;
                                            <%
                                            } else {
                                                if (currency.equals("Dollar")) {
                                            %>
                                            $
                                            <%
                                                    }
                                                }
                                            %>
                                        </h4>
                                        <p>${element.description}</p>
                                    </div>
                                    <div class="ratings">
                                        <p class="pull-right">15 reviews</p>
                                        <p>
                                            <span class="glyphicon glyphicon-star"></span>
                                            <span class="glyphicon glyphicon-star"></span>
                                            <span class="glyphicon glyphicon-star"></span>
                                            <span class="glyphicon glyphicon-star"></span>
                                            <span class="glyphicon glyphicon-star"></span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <!-- 
                        <div class="col-sm-4 col-lg-4 col-md-4">
                            <div class="thumbnail">
                                <img src="http://placehold.it/320x150" alt="">
                                <div class="caption">
                                    <h4 class="pull-right">$24.99</h4>
                                    <h4><a href="#">First Product</a>
                                    </h4>
                                    <p>See more snippets like this online store item at <a target="_blank" href="http://www.bootsnipp.com">Bootsnipp - http://bootsnipp.com</a>.</p>
                                </div>
                                <div class="ratings">
                                    <p class="pull-right">15 reviews</p>
                                    <p>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4 col-lg-4 col-md-4">
                            <div class="thumbnail">
                                <img src="http://placehold.it/320x150" alt="">
                                <div class="caption">
                                    <h4 class="pull-right">$64.99</h4>
                                    <h4><a href="#">Second Product</a>
                                    </h4>
                                    <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                                <div class="ratings">
                                    <p class="pull-right">12 reviews</p>
                                    <p>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4 col-lg-4 col-md-4">
                            <div class="thumbnail">
                                <img src="http://placehold.it/320x150" alt="">
                                <div class="caption">
                                    <h4 class="pull-right">$74.99</h4>
                                    <h4><a href="#">Third Product</a>
                                    </h4>
                                    <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                                <div class="ratings">
                                    <p class="pull-right">31 reviews</p>
                                    <p>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4 col-lg-4 col-md-4">
                            <div class="thumbnail">
                                <img src="http://placehold.it/320x150" alt="">
                                <div class="caption">
                                    <h4 class="pull-right">$84.99</h4>
                                    <h4><a href="#">Fourth Product</a>
                                    </h4>
                                    <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                                <div class="ratings">
                                    <p class="pull-right">6 reviews</p>
                                    <p>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4 col-lg-4 col-md-4">
                            <div class="thumbnail">
                                <img src="http://placehold.it/320x150" alt="">
                                <div class="caption">
                                    <h4 class="pull-right">$94.99</h4>
                                    <h4><a href="#">Fifth Product</a>
                                    </h4>
                                    <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                                <div class="ratings">
                                    <p class="pull-right">18 reviews</p>
                                    <p>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4 col-lg-4 col-md-4">
                            <div class="thumbnail">
                                <img src="http://placehold.it/320x150" alt="">
                                <div class="caption">
                                    <h4 class="pull-right">$42.0</h4>
                                    <h4><a href="#">MY PRODUCT</a>
                                    </h4>
                                    <p>See more snippets like this online store item at <a target="_blank" href="http://www.bootsnipp.com">Bootsnipp - http://bootsnipp.com</a>.</p>
                                </div>
                                <div class="ratings">
                                    <p class="pull-right">15 reviews</p>
                                    <p>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        -->

                        <!-- <div class="col-sm-4 col-lg-4 col-md-4">
                            <h4><a href="#">Like this template?</a>
                            </h4>
                            <p>If you like this template, then check out <a target="_blank" href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">this tutorial</a> on how to build a working review system for your online store!</p>
                            <a class="btn btn-primary" target="_blank" href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">View Tutorial</a>
                        </div> -->

                    </div>

                </div>

            </div>

        </div>
        <!-- /.container -->

        <div class="container">

            <hr>

            <!-- Footer -->
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; Mitsuku Gaming 2016</p>
                    </div>
                </div>
            </footer>

        </div>
        <!-- /.container -->

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>
