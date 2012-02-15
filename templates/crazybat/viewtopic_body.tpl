			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a> || <a href="{U_VIEW_FORUM}" title="{FORUM_NAME}">{FORUM_NAME}</a></h3>
			
			<div class="highlights">
				<h4><a title="{TOPIC_TITLE}" href="{U_VIEW_TOPIC}">{TOPIC_TITLE}</a></h4>
				<p><a href="{U_VIEW_OLDER_TOPIC}" title="{L_VIEW_PREVIOUS_TOPIC}">{L_VIEW_PREVIOUS_TOPIC}</a> || <a href="{U_VIEW_NEWER_TOPIC}" title="{L_VIEW_NEXT_TOPIC}">{L_VIEW_NEXT_TOPIC}</a></p>
				<div class="clear">
					<ul class="postlist">
						<li>{POST_IMG}</li>
						<li>{REPLY_IMG}</li>
					</ul>
				</div>	
				<div class="polldisplay">
					{POLL_DISPLAY}	
				</div>
				
				<a id="backtotop"></a>
				<!-- BEGIN postrow -->
				<div class="{postrow.ROW_CLASS}">
					<div class="messageheader">
						<div class="forumpostinfo">
							{postrow.POSTER_JOINED}<br/>
							{postrow.POSTER_POSTS}<br/>
							{postrow.POSTER_FROM}<br/>
							{L_POSTED}: {postrow.POST_DATE}	
						</div>
						<div class="memberinfo">
							{postrow.POSTER_AVATAR}	
							<a id="userpostid{postrow.U_POST_ID}"></a><strong>{postrow.POSTER_NAME}</strong><br/>
							<em>{postrow.POSTER_RANK}</em><br/>
							{postrow.RANK_IMAGE}	
							<div class="membercommands">
								<ul>
									{postrow.PROFILE_IMG}
									{postrow.PM_IMG}
									{postrow.EMAIL_IMG}
									{postrow.WWW_IMG}
									{postrow.AIM_IMG}
									{postrow.YIM_IMG}
									{postrow.MSN_IMG}
									{postrow.ICQ_IMG}
								</ul>			
							</div>
						</div>										
					</div>
					<div class="messagebody">
						<hr class="thindivide"/>
						{postrow.MESSAGE}
						{postrow.SIGNATURE}
						<em>{postrow.EDITED_MESSAGE}</em>
						<hr class="thindivide"/>
						<div class="messagecommands">
							<ul>
								{postrow.QUOTE_IMG}
								{postrow.EDIT_IMG}
								{postrow.DELETE_IMG}
								{postrow.IP_IMG}
							</ul>						  
						</div>
						<a title="Back to Top" class="sublink" href="#backtotop">{L_BACK_TO_TOP}</a>
					</div>
				</div>				
				<!-- END postrow -->
				 
				<form method="post" action="{S_POST_DAYS_ACTION}">
					<div>
						<label for="ddlPostDays" class="inlinelabel">{L_DISPLAY_POSTS}</label> {S_SELECT_POST_DAYS} <label for="ddlPostOrder" class="inlinelabel">In order of</label> {S_SELECT_POST_ORDER}
						<input type="submit" value="{L_GO}" class="button" name="submit" title="{L_GO}" />
					</div>
				</form>
				<ul class="postlist">
					<li>{POST_IMG}</li>
					<li>{REPLY_IMG}</li>
				</ul>
				<div class="clear"></div>
			</div>
			<hr/>
			<p>{PAGINATION}</p>
			<div>{JUMPBOX}</div>
			<p>{S_WATCH_TOPIC}</p>
			<div id="moderatorcommands">
				{S_TOPIC_ADMIN}
			</div>
			<div class="clear"></div>
			<p>{S_AUTH_LIST}</p>