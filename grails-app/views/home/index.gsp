<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>gBills - Inicio</title>
    </head>
    <body>
        <div class="body">
            <h1>Home</h1>
            <div class="list">
            	<g:ifAllGranted role="ROLE_ADMIN">
            		<g:link controller="user">Ver usuarios</g:link><br/>
            		<g:link controller="user" action="create">Crear usuario</g:link><br/>
            	</g:ifAllGranted>
	            <g:ifAllGranted role="ROLE_REGISTERED">
		            <g:link controller="client">Clientes</g:link><br/>
              		<g:link controller="bill">Facturas</g:link><br/>
	            </g:ifAllGranted>
            </div>
        </div>
    </body>
</html>
