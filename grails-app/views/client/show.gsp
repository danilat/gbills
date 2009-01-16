
<%@ page import="com.danilat.gbills.Client" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Client</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Client List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Client</g:link></span>
        </div>
        <div class="body">
            <h1>Show Client</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:client, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Address:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:client, field:'address')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Bills:</td>
                            
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="b" in="${client.bills}">
                                    <li><g:link controller="bill" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Budgets:</td>
                            
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="b" in="${client.budgets}">
                                    <li><g:link controller="budget" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">City:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:client, field:'city')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Contact Person:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:client, field:'contactPerson')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Email:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:client, field:'email')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Name:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:client, field:'name')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nif:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:client, field:'nif')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Phone:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:client, field:'phone')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Province:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:client, field:'province')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Web:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:client, field:'web')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Zip:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:client, field:'zip')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${client?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
