<!DOCTYPE html>
<html>
<head>
    <title>BookService Login</title>
</head>
<body>
<a href="<c:url value="/book" />">Return to books</a>
<c:if test="${param.error != null}">
    <p>Login failed.</p>
</c:if>
<c:if test="${param.logout != null}">
    <p>You have logged out.</p>
</c:if>
<h2>BookService Login</h2>
<form action="login" method="POST">
    <label for="username">Username:</label><br/>
    <input type="text" id="username" name="username"/><br/><br/>
    <label for="password">Password:</label><br/>
    <input type="password" id="password" name="password"/><br/><br/>
    <input type="checkbox" id="remember-me" name="remember-me"/>
    <label for="remember-me">Remember me</label><br/><br/>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="submit" value="Log In"/>
    <br/><br/>
    <a href="<c:url value="/user/register" />">Create a User</a><br/><br/>
</form>
</body>
</html>
