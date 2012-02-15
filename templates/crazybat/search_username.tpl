			<script type="text/javascript">
			<!--
			function refresh_username(selected_username)
			{
				opener.document.forms['post'].username.value = selected_username;
				opener.focus();
				window.close();
			}
			//-->
			</script>
			
			<form method="post" id="search" action="{S_SEARCH_ACTION}">
			<div class="highlights">
				<h4>{L_SEARCH_USERNAME}</h4>
				<label for="txtUserName">Username</label>
				<input type="text" id="txtUserName" name="search_username" value="{USERNAME}" class="boxes" title="Username" />
				<input type="submit" name="search" value="{L_SEARCH}" class="button" title="{L_SEARCH}" /><br />
				<p>{L_SEARCH_EXPLAIN}</p>
				<!-- BEGIN switch_select_name -->
				<label for="ddlUserName">{L_UPDATE_USERNAME}</label>
				<select id="ddlUserName" name="username_list" title="{L_UPDATE_USERNAME}">{S_USERNAME_OPTIONS}</select> 
				<input type="submit" class="button" onclick="refresh_username(this.form.username_list.options[this.form.username_list.selectedIndex].value);return false;" name="use" value="{L_SELECT}" title="{L_SELECT}" /><br/>
				<!-- END switch_select_name -->
				<p><a href="javascript:window.close();" title="{L_CLOSE_WINDOW}" title="{L_CLOSE_WINDOW}">{L_CLOSE_WINDOW}</a></p>
			</div>
			</form>