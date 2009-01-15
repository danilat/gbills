
<%@ page import="com.danilat.gbills.Client" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Client</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Client List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Client</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${client}">
            <div class="errors">
                <g:renderErrors bean="${client}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="address">Address:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:client,field:'address','errors')}">
                                    <input type="text" id="address" name="address" value="${fieldValue(bean:client,field:'address')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="city">City:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:client,field:'city','errors')}">
                                    <input type="text" id="city" name="city" value="${fieldValue(bean:client,field:'city')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contactPerson">Contact Person:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:client,field:'contactPerson','errors')}">
                                    <input type="text" id="contactPerson" name="contactPerson" value="${fieldValue(bean:client,field:'contactPerson')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email">Email:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:client,field:'email','errors')}">
                                    <input type="text" id="email" name="email" value="${fieldValue(bean:client,field:'email')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name">Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:client,field:'name','errors')}">
                                    <input type="text" id="name" name="name" value="${fieldValue(bean:client,field:'name')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nif">Nif:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:client,field:'nif','errors')}">
                                    <input type="text" id="nif" name="nif" value="${fieldValue(bean:client,field:'nif')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="phone">Phone:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:client,field:'phone','errors')}">
                                    <input type="text" id="phone" name="phone" value="${fieldValue(bean:client,field:'phone')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="province">Province:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:client,field:'province','errors')}">
                                    <input type="text" id="province" name="province" value="${fieldValue(bean:client,field:'province')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="web">Web:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:client,field:'web','errors')}">
                                    <input type="text" id="web" name="web" value="${fieldValue(bean:client,field:'web')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="zip">Zip:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:client,field:'zip','errors')}">
                                    <input type="text" id="zip" name="zip" value="${fieldValue(bean:client,field:'zip')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
