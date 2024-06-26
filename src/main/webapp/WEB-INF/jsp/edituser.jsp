<!DOCTYPE html>
<html>
<head>
    <title>Bookstore</title>
</head>
<body>
<c:url var="logoutUrl" value="/logout"/>
<form action="${logoutUrl}" method="post">
    <input type="submit" value="Log out"/>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
<h2>Edit User #${user.username}</h2>
<form:form method="POST" modelAttribute="form">
    <form:label path="password">Password</form:label><br/>
    <form:input type="text" path="password"/><br/><br/>
    <form:label path="confirm_password">Confirm Password</form:label><br/>
    <form:input type="text" path="confirm_password" /><br/><br/>
    <form:label path="email">email</form:label><br/>
    <form:input type="text" path="email"/><br/><br/>
    <form:label path="delivery">delivery</form:label><br/>
    <form:input type="text" path="delivery"/><br/><br/>
    <form:label path="roles">Roles</form:label><br/>
    <form:checkbox path="roles" value="ROLE_USER"/>ROLE_USER
    <form:checkbox path="roles" value="ROLE_ADMIN"/>ROLE_ADMIN
    <br/><br/>
    <input type="submit" value="Edit User"/>
</form:form>
<a href="<c:url value="/user" />">Return to user list</a>
</body>
</html>