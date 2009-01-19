<%@ page import="com.danilat.gbills.Bill" %>
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
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="date"><g:message code="bill.date" default="Date" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'date','errors')}">                                
                                    <g:datePicker name="date" value="${billInstance?.date}" precision="day"></g:datePicker>
                                </td>
                            </tr> 
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="bill.state" default="State" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'state','errors')}">                                
                                    <g:select name="state" from="${Bill.STATES}" value="${fieldValue(bean:billInstance,field:'state')}"/>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="taxable"><g:message code="bill.taxable" default="Taxable" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'taxable','errors')}">                                
                                    <span id="taxable">${billInstance.taxable}</span>
                                </td>
                            </tr> 
                        	<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="retention"><g:message code="bill.retention" default="Retention" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'retention','errors')}">                                
                                    <g:select name="retention" from="${[7,15]}" value="${fieldValue(bean:billInstance,field:'retention')}"/>%
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <g:message code="bill.retention.price" default="Retention price" />:
                                </td>
                                <td valign="top">                                
                                    <g:set var="retentionPrice" value="${billInstance.retention*billInstance.taxable/100}"/>
                                    ${retentionPrice}
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="vat"><g:message code="bill.vat" default="Vat" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'vat','errors')}">                                
                                    <g:select name="vat" from="${[16,7,4]}" value="${fieldValue(bean:billInstance,field:'taxable')}"/>%
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <g:message code="bill.vat.price" default="vat price" />:
                                </td>
                                <td valign="top">                                
                                    <g:set var="vatPrice" value="${billInstance.vat*billInstance.taxable/100}"/>
                                    ${vatPrice}
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="total"><g:message code="bill.total" default="Total" />:</label>
                                </td>
                                <td valign="top">                                
                                    ${billInstance.total}
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="observations"><g:message code="bill.observations" default="Observations" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:billInstance,field:'observations','errors')}">                                
                                    <textarea type="text" id="observations" name="observations">${fieldValue(bean:billInstance,field:'observations')}</textarea>
                                </td>
                            </tr> 
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="${message(code:'save', 'default':'guardar')}" /></span>
                </div>
