<html>
<head>
    <meta name="layout" content="${gspLayout ?: 'main'}"/>
    <title><g:message code='springSecurity.login.title'/></title>

</head>

<body>
<div class="container ">
    %{--<div class="fheader"><g:message code='springSecurity.login.header'/></div>--}%

    <g:if test='${flash.message}'>
        <div class=" col-md-6 col-lg-offset-3 well well-sm text-danger">${flash.message}</div>
    </g:if>
    <div class="col-md-3 col-lg-offset-4 well">
        <form action="${postUrl ?: '/login/authenticate'}" method="post">
        <div class="form form-group">
            <label for="username" class="form-group text-center"><g:message code='springSecurity.login.username.label'/></label>
            <input type="text" name="${usernameParameter ?: 'username'}" class="form-control" placeholder="username">
        </div>
        <div class="form form-group">
            <label for="password" class="form-group text-center "><g:message code='springSecurity.login.password.label'/></label>
            <input type="password"  name="${passwordParameter ?: 'password'}" class="form-control" placeholder="username">
        </div>
        <div class="form form-group">
            <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
            <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
        </div>
        <div class="form form-group">
            <input type="submit" name="password" class="form-control btn btn-success" value="${message(code: 'springSecurity.login.button')}" >
        </div>

        </form>
    </div>
</div>
<script>
    (function() {
        document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
    })();
</script>
</body>
</html>