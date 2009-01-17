
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
                <input type="hidden" name="id" value="${clientInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="address"><g:message code="client.address" default="Address" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'address','errors')}">
                                    <input type="text" id="address" name="address" value="${fieldValue(bean:clientInstance,field:'address')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bills"><g:message code="client.bills" default="Bills" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'bills','errors')}">
                                    
<ul>
<g:each var="b" in="${clientInstance?.bills?}">
    <li><g:link controller="bill" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="bill" params="['client.id':clientInstance?.id]" action="create">Add Bill</g:link>

                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="budgets"><g:message code="client.budgets" default="Budgets" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'budgets','errors')}">
                                    
<ul>
<g:each var="b" in="${clientInstance?.budgets?}">
    <li><g:link controller="budget" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="budget" params="['client.id':clientInstance?.id]" action="create">Add Budget</g:link>

                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="city"><g:message code="client.city" default="City" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'city','errors')}">
                                    <input type="text" id="city" name="city" value="${fieldValue(bean:clientInstance,field:'city')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contactPerson"><g:message code="client.contactPerson" default="Contact Person" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'contactPerson','errors')}">
                                    <input type="text" id="contactPerson" name="contactPerson" value="${fieldValue(bean:clientInstance,field:'contactPerson')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="client.email" default="Email" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'email','errors')}">
                                    <input type="text" id="email" name="email" value="${fieldValue(bean:clientInstance,field:'email')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="client.name" default="Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'name','errors')}">
                                    <input type="text" id="name" name="name" value="${fieldValue(bean:clientInstance,field:'name')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nif"><g:message code="client.nif" default="Nif" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'nif','errors')}">
                                    <input type="text" id="nif" name="nif" value="${fieldValue(bean:clientInstance,field:'nif')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="observations"><g:message code="client.observations" default="Observations" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'observations','errors')}">
                                    <input type="text" id="observations" name="observations" value="${fieldValue(bean:clientInstance,field:'observations')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="phone"><g:message code="client.phone" default="Phone" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'phone','errors')}">
                                    <input type="text" id="phone" name="phone" value="${fieldValue(bean:clientInstance,field:'phone')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="province"><g:message code="client.province" default="Province" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'province','errors')}">
                                    <input type="text" id="province" name="province" value="${fieldValue(bean:clientInstance,field:'province')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="web"><g:message code="client.web" default="Web" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'web','errors')}">
                                    <input type="text" id="web" name="web" value="${fieldValue(bean:clientInstance,field:'web')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="zip"><g:message code="client.zip" default="Zip" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'zip','errors')}">
                                    <input type="text" id="zip" name="zip" value="${fieldValue(bean:clientInstance,field:'zip')}"/>
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
