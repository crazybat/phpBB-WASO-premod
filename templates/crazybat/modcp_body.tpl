			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a> || <a href="{U_VIEW_FORUM}" title="{FORUM_NAME}">{FORUM_NAME}</a></h3>
			
			<div class="highlights">
				<h4>{L_MOD_CP}</h4>
				<form method="post" action="{S_MODCP_ACTION}">
				<p>{L_MOD_CP_EXPLAIN}</p>
				
				<table class="grid" summary="{L_MOD_CAPTION}">
					<caption>{L_MOD_CAPTION}</caption>
					<thead>
						<tr>
							<th id="h1">{L_TOPICS}</th>
							<th id="h2">{L_REPLIES}</th>
							<th id="h3">{L_LASTPOST}</th>
							<th id="h4">{L_SELECT}</th>
						</tr>
					</thead>
					<tbody>
						<!-- BEGIN topicrow -->
						<tr class="row1">
							<td headers="h1">{topicrow.TOPIC_FOLDER_IMG}{topicrow.TOPIC_TYPE}<a href="{topicrow.U_VIEW_TOPIC}" title="{topicrow.TOPIC_TITLE}">{topicrow.TOPIC_TITLE}</a></td>
							<td headers="h2">{topicrow.REPLIES}</td>
							<td headers="h3">{topicrow.LAST_POST_TIME}</td>
							<td headers="h4"><input type="checkbox" id="chktopicid{topicrow.TOPIC_ID}" name="topic_id_list[]" value="{topicrow.TOPIC_ID}" title="Select this item" /> <label for="chktopicid{topicrow.TOPIC_ID}" class="inlinelabel">Select</label></td>
						</tr>
						<!-- END topicrow -->
					</tbody>
				</table>
				<div>
					{S_HIDDEN_FIELDS}
					<input type="submit" name="delete" class="button" value="{L_DELETE}" title="{L_DELETE}" /> 
					<input type="submit" name="move" class="button" value="{L_MOVE}" title="{L_MOVE}" /> 
					<input type="submit" name="lock" class="button" value="{L_LOCK}" title="{L_LOCK}" /> 
					<input type="submit" name="unlock" class="button" value="{L_UNLOCK}" title="{L_UNLOCK}" />
				</div>
				</form>
			</div>
			<hr/>
			<p>{PAGE_NUMBER}</p>
			<p>{PAGINATION}</p>
			<div>{JUMPBOX}</div>