
<g:javascript library="scriptaculous" />
<a onclick="$('add_item').toggle()" href="javascript:void(null)">Añadir artículo/servicio</a>
<div id="add_item" style="display:none">
<g:form name="add_item" url="[controller: 'item', action: 'save']" method="post">
<input type="hidden" name="bill.id" value="${bill.id}" />
    <div class="dialog">
        <table>
            <tbody>
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="description"><g:message code="item.description" default="descripcion" />:</label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean:item,field:'description','errors')}">                                
                        <input type="text" id="description" name="description" value="${fieldValue(bean:item,field:'description')}" />
                    </td>
            	</tr>
            	<tr class="prop">
                    <td valign="top" class="name">
                        <label for="price"><g:message code="item.price" default="precio" />:</label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean:item,field:'price','errors')}">                                
                        <input type="text" id="price" name="price" value="${fieldValue(bean:item,field:'price')}" />
                    </td>
            	</tr>
            	<tr><td><input class="save" type="submit" value="${message(code:'save', 'default':'guardar')}" /></td></tr>
            </tbody>
        </table>
    </div>
</g:form>
</div>
<br/>

<table width="100%">
	<thead>
        <tr>
        	<th>Descripción</th><th>Precio</th><th></th>
        </tr>
    </thead>
    <tbody>
    	<g:each in="${bill.items}">
        <tr>
        	<td><span id="description${it.id}">${it.description}</span></td><td><span id="price${it.id}">${it.price}</span></td><td><g:link controller="item" action="delete" id="${it.id}" params="[bill:bill.id]">Eliminar</g:link></td>
        </tr>
        </g:each>
    </tbody>
</table>
