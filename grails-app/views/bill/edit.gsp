
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
            <g:hasErrors bean="${bill}">
            <div class="errors">
                <g:renderErrors bean="${bill}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${bill?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="client"><g:message code="bill.client" default="Client" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:bill,field:'client','errors')}">
