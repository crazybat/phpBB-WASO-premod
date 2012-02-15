			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a> || <a href="{U_VIEW_FORUM}" title="{FORUM_NAME}">{FORUM_NAME}</a></h3>
			
			<form method="post" action="{S_POST_DAYS_ACTION}">
			<div class="highlights">
				<h4>{FORUM_NAME}</h4>
				<p><a href="{U_MARK_READ}" title="{L_MARK_TOPICS_READ}">{L_MARK_TOPICS_READ}</a></p>
				<div>
					<div class="pagenumber">
						{PAGINATION}
					</div>
					<ul class="postlist">
						<li>{POST_IMG}</li>
					</ul>
					<div class="clear"></div>
				</div>	
				<table class="grid" summary="{FORUM_NAME}">
					<caption>{L_FORUM_NAME_CAPTION} {FORUM_NAME}</caption>
					<thead>
						<tr>
							<th id="h1">{L_TOPICS}</th>
							<th id="h2">{L_REPLIES}</th>
							<th id="h3">{L_AUTHOR}</th>
							<th id="h4">{L_VIEWS}</th>
							<th id="h5">{L_LASTPOST}</th>
						</tr>
					</thead>
					<tbody>
						<!-- BEGIN topicrow -->
						<tr class="row1">
							<td headers="h1">
								{topicrow.TOPIC_FOLDER_IMG}{topicrow.TOPIC_TYPE}<a href="{topicrow.U_VIEW_TOPIC}" title="{topicrow.TOPIC_TITLE}">{topicrow.TOPIC_TITLE}</a> {topicrow.NEWEST_POST_IMG}
							</td>
							<td headers="h2">{topicrow.REPLIES}</td>
							<td headers="h3">{topicrow.TOPIC_AUTHOR}</td>
							<td headers="h4">{topicrow.VIEWS}</td>
							<td headers="h5">
								{topicrow.LAST_POST_TIME}
								{topicrow.LAST_POST_AUTHOR}
								{topicrow.LAST_POST_IMG}
							</td>
						</tr>
						<!-- END topicrow -->
						<!-- BEGIN switch_no_topics -->
						<tr> 
							<td headers="h1">{L_NO_TOPICS}</td>
						</tr>
				<!-- END switch_no_topics -->
					</tbody>
				</table>
				<div class="pagenumber">
					<p>{PAGINATION}</p>
				</div>
				
				<label for="ddlSelectTopicDays">{L_DISPLAY_TOPICS}</label>
				{S_SELECT_TOPIC_DAYS} 
				<input type="submit" class="button" value="{L_GO}" name="submit" title="{L_GO}" />
					
				<p>{L_MODERATOR}: {MODERATORS}</p>
				<p>{LOGGED_IN_USER_LIST}</p>
			</div>
			</form>
			<div id="iconlegend" title="{L_ICON_LEGEND_TITLE}">
				<ul>
					<li class="newposts">{FOLDER_NEW_IMG}</li>
					<li class="hot">{FOLDER_HOT_IMG}</li>
					<li class="hotnewposts">{FOLDER_HOT_NEW_IMG}</li>
					<li class="nonewposts">{FOLDER_IMG}</li>
					<li class="lockednew">{FOLDER_LOCKED_NEW_IMG}</li>
					<li class="locked">{FOLDER_LOCKED_IMG}</li> 
					<li class="announcement">{FOLDER_ANNOUNCE_IMG}</li> 
					<li class="sticky">{FOLDER_STICKY_IMG}</li>
				</ul>
			</div>
			<hr/>
			<div>{JUMPBOX}</div>
			<p>{S_AUTH_LIST}</p>
