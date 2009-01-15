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
		<div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Inicio</a></span>
            <span class="menuButton"><g:link controller="cliente">Clientes</g:link></span>
        </div>       	
        <g:layoutBody />		
    </body>	
</html>