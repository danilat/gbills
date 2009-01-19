<div class="dialog">
    <table>
        <tbody>
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
                    <label for="address"><g:message code="client.address" default="Address" />:</label>
                </td>
                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'address','errors')}">
                    <input type="text" id="address" name="address" value="${fieldValue(bean:clientInstance,field:'address')}"/>
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
                    <label for="province"><g:message code="client.province" default="Province" />:</label>
                </td>
                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'province','errors')}">
                    <input type="text" id="province" name="province" value="${fieldValue(bean:clientInstance,field:'province')}"/>
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
                    <label for="phone"><g:message code="client.phone" default="Phone" />:</label>
                </td>
                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'phone','errors')}">
                    <input type="text" id="phone" name="phone" value="${fieldValue(bean:clientInstance,field:'phone')}"/>
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
                    <label for="contactPerson"><g:message code="client.contactPerson" default="Contact Person" />:</label>
                </td>
                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'contactPerson','errors')}">
                    <input type="text" id="contactPerson" name="contactPerson" value="${fieldValue(bean:clientInstance,field:'contactPerson')}"/>
                </td>
            </tr>
            <tr class="prop">
                <td valign="top" class="name">
                    <label for="observations"><g:message code="client.observations" default="Observations" />:</label>
                </td>
                <td valign="top" class="value ${hasErrors(bean:clientInstance,field:'observations','errors')}">
                    <textarea id="observations" name="observations" value=""/>${fieldValue(bean:clientInstance,field:'observations')}</textarea>
                </td>
            </tr> 
        </tbody>
    </table>
</div>