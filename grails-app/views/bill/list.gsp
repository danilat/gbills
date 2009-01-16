
<%@ page import="com.danilat.gbills.Bill" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="bill.list" default="Bill List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="bill.new" default="New Bill" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="bill.list" default="Bill List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" titleKey="bill.id" />
                        
                   	        <th><g:message code="bill.client" default="Client" /></th>
                   	    
                   	        <g:sortableColumn property="date" title="Date" titleKey="bill.date" />
                        
                   	        <g:sortableColumn property="retention" title="Retention" titleKey="bill.retention" />
                        
                   	        <g:sortableColumn property="state" title="State" titleKey="bill.state" />
                        
                   	        <g:sortableColumn property="taxable" title="Taxable" titleKey="bill.taxable" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${billList}" status="i" var="bill">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${bill.id}">${fieldValue(bean:bill, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:bill, field:'client')}</td>
                        
                            <td>${fieldValue(bean:bill, field:'date')}</td>
                        
                            <td>${fieldValue(bean:bill, field:'retention')}</td>
                        
                            <td>${fieldValue(bean:bill, field:'state')}</td>
                        
                            <td>${fieldValue(bean:bill, field:'taxable')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Bill.count()}" />
            </div>
        </div>
    </body>
</html>
