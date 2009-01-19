
<%@ page import="com.danilat.gbills.Client" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="client.show" default="Show Client" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="list" action="list"><g:message code="client.list" default="Client List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="client.new" default="New Client" /></g:link></span>
            <span class="menuButton"><g:link controller="bill" params="['client.id':clientInstance?.id]" action="create">Nueva factura</g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="client.show" default="Show Client" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="client.id" default="Id" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:clientInstance, field:'id')}</td>
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="client.name" default="Name" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:clientInstance, field:'name')}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="client.nif" default="Nif" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:clientInstance, field:'nif')}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="client.address" default="Address" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:clientInstance, field:'address')}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="client.city" default="City" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:clientInstance, field:'city')}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="client.province" default="Province" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:clientInstance, field:'province')}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="client.zip" default="Zip" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:clientInstance, field:'zip')}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="client.email" default="Email" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:clientInstance, field:'email')}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="client.phone" default="Phone" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:clientInstance, field:'phone')}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="client.web" default="Web" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:clientInstance, field:'web')}</td>
                        </tr>
                    	<tr class="prop">
                            <td valign="top" class="name"><g:message code="client.contactPerson" default="Contact Person" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:clientInstance, field:'contactPerson')}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="client.observations" default="Observations" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:clientInstance, field:'observations')}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="client.bills" default="Bills" />:</td>
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="b" in="${clientInstance.bills}">
                                    <li><g:link controller="bill" action="show" id="${b.id}">${b.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <!--tr class="prop">
                            <td valign="top" class="name"><g:message code="client.budgets" default="Budgets" />:</td>
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="b" in="${clientInstance.budgets}">
                                    <li><g:link controller="budget" action="show" id="${b.id}">${b.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr-->
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form method="get">
                    <input type="hidden" name="id" value="${clientInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="Edit" value="${message(code:'edit', 'default':'Edit')}" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
