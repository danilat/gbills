
<%@ page import="com.danilat.gbills.Client" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Client List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Client</g:link></span>
        </div>
        <div class="body">
            <h1>Client List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="address" title="Address" />
                        
                   	        <g:sortableColumn property="city" title="City" />
                        
                   	        <g:sortableColumn property="contactPerson" title="Contact Person" />
                        
                   	        <g:sortableColumn property="email" title="Email" />
                        
                   	        <g:sortableColumn property="name" title="Name" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${clientList}" status="i" var="client">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${client.id}">${fieldValue(bean:client, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:client, field:'address')}</td>
                        
                            <td>${fieldValue(bean:client, field:'city')}</td>
                        
                            <td>${fieldValue(bean:client, field:'contactPerson')}</td>
                        
                            <td>${fieldValue(bean:client, field:'email')}</td>
                        
                            <td>${fieldValue(bean:client, field:'name')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Client.count()}" />
            </div>
        </div>
    </body>
</html>
