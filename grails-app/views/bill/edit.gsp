
<%@ page import="com.danilat.gbills.Bill" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="bill.edit" default="Edit Bill" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="bill.list" default="Bill List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="bill.new" default="New Bill" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="bill.edit" default="Edit Bill" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${billInstance}">
            <div class="errors">
                <g:renderErrors bean="${billInstance}" as="list" />
            </div>
            </g:hasErrors>
            <div id="items_grid">
        	<g:render template="/item/list" model="['bill':billInstance]"/>
        	</div>
        	<br/>
            <g:form method="post" action="update">
                <input type="hidden" name="id" value="${billInstance?.id}" />
                <g:render template="form"/>
            </g:form>
        </div>
    </body>
</html>
