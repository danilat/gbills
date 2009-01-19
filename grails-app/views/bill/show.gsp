
<%@ page import="com.danilat.gbills.Bill" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="bill.show" default="Show Bill" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="bill.list" default="Bill List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="bill.new" default="New Bill" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="bill.show" default="Show Bill" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bill.id" default="Id" />:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:billInstance, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bill.client" default="Client" />:</td>
                            
                            <td valign="top" class="value"><g:link controller="client" action="show" id="${billInstance?.client?.id}">${billInstance.client.name.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bill.date" default="Date" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:billInstance, field:'date')}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bill.state" default="State" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:billInstance, field:'state')}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bill.taxable" default="Taxable" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:billInstance, field:'taxable')}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bill.retention" default="Retention" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:billInstance, field:'retention')}%</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bill.retention.price" default="Retention price" />:</td>
                            <g:set var="retentionPrice" value="${billInstance.retention*billInstance.taxable/100}"/>
                            <td valign="top" class="value">${retentionPrice}€</td>
                        </tr>
                    	<tr class="prop">
                            <td valign="top" class="name"><g:message code="bill.vat" default="Vat" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:billInstance, field:'vat')}%</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bill.vat.price" default="vat price" />:</td>
                            <g:set var="vatPrice" value="${billInstance.vat*billInstance.taxable/100}"/>
                            <td valign="top" class="value">${vatPrice}€</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bill.total" default="Total" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:billInstance, field:'total')}€</td>
                        </tr>
                    	<tr class="prop">
                            <td valign="top" class="name"><g:message code="bill.observations" default="Observations" />:</td>
                            <td valign="top" class="value">${fieldValue(bean:billInstance, field:'observations')}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bill.items" default="Items" />:</td>
                            
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="i" in="${billInstance.items}">
                                    <li>${i.description.encodeAsHTML()} ${i.price}€</li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${billInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="Edit" value="${message(code:'edit', 'default':'Edit')}" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
