<resource:richTextEditor/>
<g:hasErrors bean="${commentInstance}">
<div class="errors">
    <g:renderErrors bean="${commentInstance}" as="list" />
</div>
</g:hasErrors>
<g:form action="save" method="post" >
    <div class="dialog">
        <table>
            <tbody>
            
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="author">Author:</label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean:commentInstance,field:'author','errors')}">
                        <input type="text" maxlength="128" id="author" name="author" value="${fieldValue(bean:commentInstance,field:'author')}"/>
                    </td>
                </tr> 
            
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="mail">Mail:</label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean:commentInstance,field:'mail','errors')}">
                        <input type="text" id="mail" name="mail" value="${fieldValue(bean:commentInstance,field:'mail')}"/>
                    </td>
                </tr> 
            
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="content">Content:</label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean:commentInstance,field:'content','errors')}">
                        <g:select optionKey="id" from="${com.synergyj.codice.content.Content.list()}" name="content.id" value="${commentInstance?.content?.id}" ></g:select>
                    </td>
                </tr> 
            
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="notifyResponses">Notify Responses:</label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean:commentInstance,field:'notifyResponses','errors')}">
                        <g:checkBox name="notifyResponses" value="${commentInstance?.notifyResponses}" ></g:checkBox>
                    </td>
                </tr>

				<tr class="prop">
                    <td valign="top" class="name">
                        <label for="body">Body:</label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean:commentInstance,field:'body','errors')}">
						<richui:richTextEditor name="body" value="${commentInstance?.body}" width="300" height="200" />
                    </td>
                </tr>
            
            </tbody>
        </table>
    </div>
    <div class="buttons">
        <span class="button"><input class="save" type="submit" value="Create" /></span>
    </div>
</g:form>