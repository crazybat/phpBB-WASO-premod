			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			
			<div class="highlights">
				<h4>{MESSAGE_TITLE}</h4>
				<form action="{S_MODCP_ACTION}" method="post">
				<label for="ddlForumSelect" class="inlinelabel">{L_MOVE_TO_FORUM}</label> {S_FORUM_SELECT}
				<div>
					<input type="checkbox" name="move_leave_shadow" id="chkmoveleaveshadow" checked="checked" /><label for="chkmoveleaveshadow" class="inlinelabel">{L_LEAVESHADOW}</label>
					<p>{MESSAGE_TEXT}</p>
					{S_HIDDEN_FIELDS} 
					<input class="button" type="submit" id="btnConfirm" name="confirm" value="{L_YES}" />
					<input class="button" type="submit" id="btnCancel" name="cancel" value="{L_NO}" />
				</div>
				</form>	
			</div>
			<hr/>