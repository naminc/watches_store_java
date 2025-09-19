<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/views/includes/taglib.jsp" %>

<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <ul class="breadcrumb-list">
                    <li class="breadcrumb-item"><a href="<c:url value='/home'/>">Home</a></li>
                    <li class="breadcrumb-item active">register</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="main-content-wrap section-ptb login-and-register-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-12 m-auto">
                <div class="login-register-wrapper">
                    <div class="login-register-header text-center mb-4">
                        <h3>Register</h3>
                        <p>Already have an account? <a style="color: #c89979" href="<c:url value='/login'/>">Login here</a></p>
                    </div>
                    <div class="login-form-container">
                        <div class="login-register-form">
                            <form action="<c:url value='/register'/>" method="post">
                                <div class="login-input-box">
                                    <input type="email" name="email" placeholder="Email" value="${not empty oldEmail ? oldEmail : ''}" required>
                                    <input type="text" name="username" placeholder="Username" value="${not empty oldUsername ? oldUsername : ''}" required>
                                    <input type="password" name="password" placeholder="Password" required>
                                    <input type="password" name="confirmPassword" placeholder="Confirm Password" required>
                                </div>
                                <c:remove var="oldEmail" scope="session"/>
                                <c:remove var="oldUsername" scope="session"/>
                                <div class="button-box">
                                    <div class="login-toggle-btn">
                                        <input type="checkbox" required>
                                        <label>
                                            I agree to the&nbsp;<a href="#" style="color: #c89979">terms & conditions</a>
                                        </label>
                                    </div>
                                    <div class="button-box text-center">
                                        <button class="login-btn btn" type="submit"><span><i class="fa fa-user-plus"></i> Register</span></button>
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