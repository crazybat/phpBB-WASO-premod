			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			
			<form action="{S_PROFILE_ACTION}" method="post">
			<div class="highlights">
				<h4>{L_SEND_PASSWORD}</h4>
				<fieldset>
					<label for="txtUserName">* {L_USERNAME}</label>
					<input type="text" class="boxes" id="txtUserName" name="username" size="25" maxlength="40" value="{USERNAME}" /><br/>
					
					<label for="txtEmail">* {L_EMAIL_ADDRESS}</label>
					<input type="text" class="boxes" id="txtEmail" name="email" size="25" maxlength="255" value="{EMAIL}" /><br/>
					
					{S_HIDDEN_FIELDS} 
					<input type="submit" name="submit" value="{L_SUBMIT}" class="button" />
					<input type="reset" value="{L_RESET}" id="btnReset" name="reset" class="button" />
				</fieldset>				
			</div>
			</form>
			<hr/>