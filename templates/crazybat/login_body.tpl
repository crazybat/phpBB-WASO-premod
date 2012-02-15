			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			
			<div class="highlights">
				<h4>{L_ENTER_PASSWORD}</h4>
				<form action="{S_LOGIN_ACTION}" method="post">
				<div>
					<fieldset>
						<label for="txtUserName">{L_USERNAME}</label>
						<input class="boxes" type="text" id="txtUserName" name="username" size="25" maxlength="40" value="{USERNAME}" title="{USERNAME}" /><br/>
						<label for="txtPassword">{L_PASSWORD}</label>
						<input class="boxes" type="password" id="txtPassword" name="password" size="25" maxlength="32" title="{L_PASSWORD}" /><br/>
						<!-- BEGIN switch_allow_autologin -->
						<input class="text" type="checkbox" id="chkAutoLogin" name="autologin" title="{L_AUTO_LOGIN}" /> <label for="chkAutoLogin" class="inlinelabel">{L_AUTO_LOGIN}</label><br/>
						<!-- END switch_allow_autologin -->
						{S_HIDDEN_FIELDS}
						<input type="submit" name="login" class="button" value="{L_LOGIN}" title="{L_LOGIN}" />
					</fieldset>
					
				</div>
				</form>
				<p><a href="{U_SEND_PASSWORD}" title="{L_SEND_PASSWORD}">{L_SEND_PASSWORD}</a></p>
			</div>