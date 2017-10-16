<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'employee.label', default: 'User')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>

<div class="row">
    <div class="col-md-12 panel panel-primary ">
        %{--<div class="panel-heading ">--}%
        %{--<h4 class="text-center  ">DGMates</h4>--}%
        %{--</div>--}%
        <div class="panel-body">
            <ul class="nav navbar-nav">
                <li class="nav-item">
                <li><a class="home nav-link" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            </li>
                <li class="nav-item">
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>

            </li>

            </ul>
        </div>
    </div>
</div>

<div id="create-user" class="content scaffold-create" role="main">

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<g:hasErrors bean="${this.user}">
    <ul class="errors" role="alert">
        <g:eachError bean="${this.user}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
    </ul>
</g:hasErrors>

<g:form resource="${this.user}" method="POST">


    <div class="container">
        <div class="well col-md-8">
            <h1 class="text-center text-primary"><g:message code="default.create.label" args="[entityName]" /></h1>
            <div class="row">
                <div class="form-group">

                    <div class="col-md-2 text-primary">
                        <label for="username">UserName</label><span class="text-danger">*</span>
                    </div>

                    <div class="col-md-10">
                        <g:textField name="username" class="form-control" placeholder="suraz"></g:textField>

                    </div>
                    <div class="clearfix"></div>
                </div>

                <div class="form-group">

                    <div class="col-md-2  text-primary">
                        <label for="password">Password</label><span class="text-danger">*</span>
                    </div>

                    <div class="col-md-10">
                        <g:passwordField name="password" class="form-control"  placeholder="password"></g:passwordField>

                    </div>
                    <div class="clearfix"></div>
                </div>


                <div class="form-group">

                    <div class="col-md-2 text-primary">
                    <label for="role">Role</label>
                    </div>


                    <div class="col-md-10">

                    <g:select name="role" class="form-control" from="${roles}" optionValue="authority" optionKey="id"
                    noSelection="['':'-Choose your status-']"/>
                    </div>
                    <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="form-group">

                    <div class="col-md-2 text-primary">
                        <label for="username">crendtial</label><span class="text-danger">*</span>
                    </div>

                    <div class="col-md-10">
                        <div class="row">
                            <div class="col-md-3">
                                Password Expired: <g:checkBox name="passwordExpired" value='true' checked="false" />
                            </div>

                            <div class="col-md-3">
                                Account Locked: <g:checkBox name="passwordExpired" value='true' checked="false" />
                            </div>

                            <div class="col-md-3">
                                Account Expired: <g:checkBox name="passwordExpired" value='true' checked="false" />
                            </div>
                            <div class="col-md-3">
                                Account Status: <g:checkBox name="passwordExpired" value='true' />
                            </div>
                        </div>

                    </div>


                </div>
                <div class="clearfix"></div>
            </div>

            <div class="form-group">
                <div class="col-md-3 col-md-offset-9">
                    <button class="btn btn-success btn-block" type="submit">create</button>

                </div>
            </div>




        </div>
    </div>
    </div>



</g:form>
</div>
</body>
</html>
