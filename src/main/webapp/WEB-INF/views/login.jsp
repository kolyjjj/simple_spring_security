<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Home</title>
    </head>
    <body>
        <h1>Please Log in</h1>

        <!-- Need to set the correct url, url '/login' not work -->
        <form action="/security/login" method="post">
            <c:if test="${param.error != null}">
                <div>
                    Failed to login.
                </div>
            </c:if>
            <c:if test="${param.logout != null}">
                <div>
                    You have been logged out.
                </div>
            </c:if>
            <label for="username">Username</label>
            <input type="text" id="username" name="username" />
            <label for="password">Password</label>
            <input type="password" id="password" name="password" />
            <div>
                <input id="submit" name="submit" type="submit" value="Login"/>
            </div>
        </form>
    </body>
</html>
