
<%@ page import="com.danilat.gbills.Client" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="client.create" default="Create Client" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="client.list" default="Client List" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="client.create" default="Create Client" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${clientInstance}">
            <div class="errors">
                <g:renderErrors bean="${clientInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
            	<g:render template="form"/>
            	<div class="buttons">
				    <span class="button"><g:actionSubmit class="save" action="save" value="${message(code:'save', 'default':'guardar')}" /></span>
				</div>
            </g:form>
        </div>
    </body>
</html>
