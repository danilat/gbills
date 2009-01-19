
<%@ page import="com.danilat.gbills.Client" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="client.edit" default="Edit Client" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="client.list" default="Client List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="client.new" default="New Client" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="client.edit" default="Edit Client" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${clientInstance}">
            <div class="errors">
                <g:renderErrors bean="${clientInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
            	<input type="hidden" name="id" value="${clientInstance.id}" />
            	<g:render template="form"/>
            	<div class="buttons">
				    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code:'save', 'default':'guardar')}" /></span>
				</div>
            </g:form>
        </div>
    </body>
</html>
