			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			
			<div class="highlights">
				<ul>
					<li>{INBOX}</li>
					<li>{SENTBOX}</li>
					<li>{OUTBOX}</li>
					<li>{SAVEBOX}</li>
				</ul>
			</div>
			<hr/>
			
			<div class="highlights">
				<h4>{BOX_NAME} || {L_MESSAGE}</h4>
				<form method="post" id="privmsg_list" action="{S_PRIVMSGS_ACTION}">
				<div class="row1">
					<div class="messageheader">
						<div class="forumpostinfo">
							{L_FROM}: <strong>{MESSAGE_FROM}</strong><br/>
							{L_TO}: <strong>{MESSAGE_TO}</strong><br/>
							{L_POSTED}: <strong>{POST_DATE}</strong><br/>
							{L_SUBJECT}: <strong>{POST_SUBJECT}</strong>
						</div>
						<div class="memberinfo">
							<div class="membercommands">
								<ul>
									{PROFILE_IMG} 
									{PM_IMG} 
									{EMAIL_IMG}
									{WWW_IMG}
									{AIM_IMG}
									{YIM_IMG}
									{MSN_IMG}
								</ul>
							</div>
						</div>
					</div>
					<div class="messagebody">
						<hr class="thindivide"/>
						{MESSAGE}
						<hr class="thindivide"/>
						<div class="messagecommands">
							<ul class="messagecommands">
								<li>{QUOTE_PM_IMG}</li>
								<li>{EDIT_PM_IMG}</li>
							</ul>
						</div>
					</div>
					<div class="clear"></div>
					<br/>
					{S_HIDDEN_FIELDS} 
					<input type="submit" id="btnSave" name="save" value="{L_SAVE_MSG}" title="{L_SAVE_MSG}" class="button" />
					<input type="submit" id="btnDelete" name="delete" value="{L_DELETE_MSG}" title="{L_DELETE_MSG}" class="button" />
				</div>	
				</form>
				{REPLY_PM_IMG}
			</div>
			<hr/>
			<div>{JUMPBOX}</div>