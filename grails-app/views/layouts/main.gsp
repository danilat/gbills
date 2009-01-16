<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />				
    </head>
    <body>
		<h1>gBills</h1>
		Hola <g:loggedInUserInfo field="username"/>!!
		<div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Inicio</a></span>
            <g:ifAllGranted role="ROLE_ADMIN">
            	<span class="menuButton"><g:link controller="user">Usuarios</g:link></span>
            </g:ifAllGranted>
            <g:ifAllGranted role="ROLE_REGISTERED"><span class="menuButton">
	            <span class="menuButton"><g:link controller="client">Clientes</g:link></span>
	            <span class="menuButton"><g:link controller="bill">Facturas</g:link></span>
            </g:ifAllGranted>
            <span class="menuButton"><g:link controller="logout">Salir</g:link></span>
        </div>       	
        <g:layoutBody />		
    </body>	
</html>