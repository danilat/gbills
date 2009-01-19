
<%@ page import="com.danilat.gbills.Bill" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="bill.create" default="Create Bill" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="bill.list" default="Bill List" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="bill.create" default="Create Bill" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${billInstance}">
            <div class="errors">
                <g:renderErrors bean="${billInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="client"><g:message code="bill.client" default="Client" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'client','errors')}">                                
                                    <g:select optionKey="id" optionValue="name" from="${com.danilat.gbills.Client.list()}" name="client.id" value="${billInstance?.client?.id}" ></g:select>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="${message(code:'save', 'default':'guardar')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
