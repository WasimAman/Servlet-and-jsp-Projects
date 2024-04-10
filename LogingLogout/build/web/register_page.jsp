<%--<%@page import = "com.loginLogout.entities.Message" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Register Page</title>

        <!--css-->
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            crossorigin="anonymous"
            />
        <link href="css/mystyle.css" rel="stylesheet" type="text/css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
            />
    </head>
    <body>
        <%@include file="normal_navbar.jsp" %>

        <main style="padding-top: 80px">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header text-center primary-background text-white">
                            <span class="fa fa-3x fa-user-circle"></span>
                            <br />
                            Register here
                        </div>
                        <%
                            String success = (String)session.getAttribute("success_msg");       
                            if(success!=null){
                        %>
                        <div class="alert alert-success" role="alert">
                            <%= success%><span>... please login</span> <a href="login_page.jsp">click here</a>
                        </div>
                        <%
                            session.removeAttribute("success_msg");
                            }
                        %>
                        <div class="card-body">
                            <form id="reg-form" action="Register" method="POST">
                                <div class="form-group">
                                    <label for="user_ name" style="color: #121010"
                                           >User Name</label
                                    >
                                    <input
                                        name="user-name"
                                        type="text"
                                        class="form-control"
                                        id="user_name"
                                        aria-describedby="emailHelp"
                                        placeholder="Enter name"
                                        />
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1" style="color: #121010"
                                           >Email address</label
                                    >
                                    <input
                                        name="user-email"
                                        type="email"
                                        class="form-control"
                                        id="exampleInputEmail1"
                                        aria-describedby="emailHelp"
                                        placeholder="Enter email"
                                        />
                                    <small id="emailHelp" class="form-text text-muted"
                                           >We'll never share your email with anyone else.</small
                                    >
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputPassword1" style="color: #121010"
                                           >Password</label
                                    >
                                    <input
                                        name="user-password"
                                        type="password"
                                        class="form-control"
                                        id="exampleInputPassword1"
                                        placeholder="Password"
                                        />
                                </div>

                                <div class="form-group">
                                    <label for="gender" style="color: #121010"
                                           >Select Gender</label
                                    >
                                    <br />
                                    <input
                                        type="radio"
                                        id="gender"
                                        name="user-gender"
                                        value="male"
                                        /><span style="color: #121010">Male</span>
                                    <input
                                        type="radio"
                                        id="gender"
                                        name="user-gender"
                                        value="famale"
                                        /><span style="color: #121010">Female</span>
                                </div>

                                <div class="form-group">
                                    <textarea
                                        name="user-about"
                                        class="form-control"
                                        id=""
                                        rows="5"
                                        placeholder="Enter something about yourself"
                                        ></textarea>
                                </div>

                                <div class="form-check">
                                    <input
                                        name="check-box"
                                        type="checkbox"
                                        class="form-check-input"
                                        id="exampleCheck1"
                                        />
                                    <label
                                        class="form-check-label"
                                        for="exampleCheck1"
                                        style="color: #121010"
                                        >agree terms and conditions</label
                                    >
                                </div>
                                <!--                                <br/>-->
                                <%
                                    String msg = (String)session.getAttribute("check_msg");
                                    
                                    if(msg!=null){
                                %>
                                <div class="alert alert-danger" role="alert">
                                    <%= msg %>
                                </div>
                                <%
                                    session.removeAttribute("check_msg");
                                    }
                                %>
                                <br />

                                <div
                                    class="container text-center"
                                    id="loader"
                                    style="display: none"
                                    >
                                    <span class="fa fa-refresh fa-spin fa-4x"></span>
                                    <h4>Please wait..</h4>
                                </div>

                                <button id="sumbimt-btn" type="submit" class="btn btn-primary">
                                    Submit
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"
        ></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    </body>
</html>
