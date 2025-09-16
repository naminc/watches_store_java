<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/views/includes/taglib.jsp" %>

<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <ul class="breadcrumb-list">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item active">login</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="main-content-wrap section-ptb lagin-and-register-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-12 m-auto">
                <div class="login-register-wrapper">
                    <div class="login-register-header text-center mb-4">
                        <h3>Login</h3>
                        <p>Don't have an account? <a style="color: #c89979" href="${pageContext.request.contextPath}/register">Register here</a></p>
                    </div>
                    <div class="login-form-container">
                        <div class="login-register-form">
                            <form action="${pageContext.request.contextPath}/login" method="post">
                                <div class="login-input-box">
                                    <input type="text" name="username" placeholder="Username" required>
                                    <input type="password" name="password" placeholder="Password" required>
                                </div>
                                <div class="button-box">
                                    <div class="login-toggle-btn">
                                        <input type="checkbox">
                                        <label>Remember me</label>
                                        <a href="#" style="color: #c89979">Forgot Password?</a>
                                    </div>
                                    <div class="button-box text-center">
                                        <button class="login-btn btn" type="submit"><span><i class="fa fa-sign-in"></i> Login</span></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>