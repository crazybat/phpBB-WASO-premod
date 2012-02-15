			<script type="text/javascript">
			<!--
			function checkForm(formObj) {
			
				formErrors = false;    
			
				if (formObj.getElementById('post').message.value.length < 2) {
					formErrors = "{L_EMPTY_MESSAGE_EMAIL}";
				}
				else if ( formObj.getElementById('post').subject.value.length < 2)
				{
					formErrors = "{L_EMPTY_SUBJECT_EMAIL}";
				}
			
				if (formErrors) {
					alert(formErrors);
					return false;
				}
			}
			//-->
			</script>
			{ERROR_BOX}
			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			<form action="{S_POST_ACTION}" method="post" id="post" onsubmit="return checkForm(document.getElementById('post'))">
			
			<div class="highlights">
				<h4>{L_SEND_EMAIL_MSG}</h4>
				<p>{L_RECIPIENT}</p>
				<p>{USERNAME}</p>
				<label for="txtSubject">{L_SUBJECT}</label>
				<input type="text" id="txtSubject" name="subject" size="45" maxlength="100" tabindex="2" class="boxes" value="{SUBJECT}" title="{L_SUBJECT}" /><br/>
				<label for="txtMessageBody">{L_MESSAGE_BODY}</label>
				<textarea id="txtMessageBody" name="message" rows="25" cols="40" wrap="virtual" tabindex="3" class="boxes" title="{L_MESSAGE_BODY}">{MESSAGE}</textarea>
				<p>{L_MESSAGE_BODY_DESC}</p>
				<p>{L_OPTIONS}</p>
				<input type="checkbox" id="chkccmail" name="cc_email"  value="1" checked="checked" title="{L_CC_EMAIL}" /> <label for="chkccmail" class="inlinelabel">{L_CC_EMAIL}</label><br/>
				{S_HIDDEN_FIELDS}
				<input type="submit" tabindex="6" name="submit" class="mainoption" value="{L_SEND_EMAIL}" title="{L_SEND_EMAIL}" />
			</div>
			</form>
			<hr/>
			<div>{JUMPBOX}</div>