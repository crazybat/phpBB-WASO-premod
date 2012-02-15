			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			
			<div class="highlights">
				<h4>{L_PRIVATE_MESSAGES_TITLE}</h4>
				<div id="boxstatus">
					<!-- BEGIN switch_box_size_notice -->
					{BOX_SIZE_STATUS}<br/>
					<img src="templates/crazybat/images/spacer.gif" width="{INBOX_LIMIT_IMG_WIDTH}" height="8" alt="{INBOX_LIMIT_PERCENT}" title="{INBOX_LIMIT_PERCENT}" />
					<!-- END switch_box_size_notice -->
				</div>
				<div>
					<ul>
						<li>{INBOX}</li>
						<li>{SENTBOX}</li>
						<li>{OUTBOX}</li>
						<li>{SAVEBOX}</li>
					</ul>
				</div>
			</div>
			<hr/>
			
			<div class="highlights">
				<form method="post" id="privmsg_list" action="{S_PRIVMSGS_ACTION}">
				<div>
					<p><a href="javascript:select_switch(true);" title="{L_MARK_ALL}">{L_MARK_ALL}</a> || <a href="javascript:select_switch(false);" title="{L_UNMARK_ALL}">{L_UNMARK_ALL}</a></p>
					<div class="clear">
						<ul class="postlist">
							{POST_PM_IMG}
						</ul>
					</div>	
					<table class="grid" summary="{L_PM_CAPTION}">
						<caption>{L_PM_CAPTION}</caption>
						<thead>
							<tr>
								<th id="h1">{L_SUBJECT}</th>
								<th id="h2">{L_FROM_OR_TO}</th>
								<th id="h3">{L_DATE}</th>
								<th id="h4">{L_MARK}</th>
							</tr>
						</thead>
						<tbody>
							<!-- BEGIN listrow -->
							<tr class="{listrow.ROW_CLASS}">
								<td headers="h1">
									{listrow.PRIVMSG_FOLDER_IMG} <a href="{listrow.U_READ}" title="{listrow.SUBJECT}">{listrow.SUBJECT}</a>
								</td>
								<td headers="h2"><a href="{listrow.U_FROM_USER_PROFILE}" title="{listrow.FROM}">{listrow.FROM}</a></td>
								<td headers="h3">{listrow.DATE}</td>
								<td headers="h4"><input type="checkbox" id="chkMarkAsRead{listrow.S_MARK_ID}" name="mark[]2" value="{listrow.S_MARK_ID}" title="{L_MARK}" /> <label for="chkMarkAsRead{listrow.S_MARK_ID}" class="inlinelabel">{L_MARK}</label></td>
							</tr>
							<!-- END listrow -->
						</tbody>
					</table>
					<!-- BEGIN switch_no_messages -->
					<p>{L_NO_MESSAGES}</p>
					<!-- END switch_no_messages -->
					{S_HIDDEN_FIELDS} 
					<input type="submit" name="save" value="{L_SAVE_MARKED}" title="{L_SAVE_MARKED}" class="button" />
					<input type="submit" name="delete" value="{L_DELETE_MARKED}" title="{L_DELETE_MARKED}" class="button" />
					<input type="submit" name="deleteall" value="{L_DELETE_ALL}" title="{L_DELETE_ALL}" class="button" />
							
					<label for="ddlDisplayMessages">{L_DISPLAY_MESSAGES}</label>
					<select id="ddlDisplayMessages" name="msgdays" title="{L_DISPLAY_MESSAGES}">{S_SELECT_MSG_DAYS}</select>
					<input type="submit" value="{L_GO}" name="submit_msgdays" class="button" title="{L_GO}" />
				</div>	
				</form>
			</div>
			<hr/>
			<p>{PAGE_NUMBER}</p>
			<p>{PAGINATION}</p>
			<div>{JUMPBOX}</div>