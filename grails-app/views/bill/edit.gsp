
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
            <g:form method="post" >
                <input type="hidden" name="id" value="${billInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="client"><g:message code="bill.client" default="Client" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'client','errors')}">
                                    <g:select optionKey="id" from="${com.danilat.gbills.Client.list()}" name="client.id" value="${billInstance?.client?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="date"><g:message code="bill.date" default="Date" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'date','errors')}">
                                    <g:datePicker name="date" value="${billInstance?.date}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="items"><g:message code="bill.items" default="Items" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'items','errors')}">
                                    
<ul>
<g:each var="i" in="${billInstance?.items?}">
    <li><g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="item" params="['bill.id':billInstance?.id]" action="create">Add Item</g:link>

                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="observations"><g:message code="bill.observations" default="Observations" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'observations','errors')}">
                                    <input type="text" id="observations" name="observations" value="${fieldValue(bean:billInstance,field:'observations')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="retention"><g:message code="bill.retention" default="Retention" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'retention','errors')}">
                                    <input type="text" id="retention" name="retention" value="${fieldValue(bean:billInstance,field:'retention')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="bill.state" default="State" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'state','errors')}">
                                    <input type="text" id="state" name="state" value="${fieldValue(bean:billInstance,field:'state')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="taxable"><g:message code="bill.taxable" default="Taxable" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'taxable','errors')}">
                                    <input type="text" id="taxable" name="taxable" value="${fieldValue(bean:billInstance,field:'taxable')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="total"><g:message code="bill.total" default="Total" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'total','errors')}">
                                    <input type="text" id="total" name="total" value="${fieldValue(bean:billInstance,field:'total')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="vat"><g:message code="bill.vat" default="Vat" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'vat','errors')}">
                                    <input type="text" id="vat" name="vat" value="${fieldValue(bean:billInstance,field:'vat')}" />
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="Update" value="${message(code:'update', 'default':'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('${message(code:'delete.confirm', 'default':'Are you sure?')}');" action="Delete" value="${message(code:'delete', 'default':'Delete')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
