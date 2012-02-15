			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a> || <a href="{U_VIEW_FORUM}" title="{FORUM_NAME}">{FORUM_NAME}</a></h3>
			
			<div class="highlights">
				<h4>{L_SPLIT_TOPIC}</h4>
				<form method="post" action="{S_SPLIT_ACTION}">
				<p>{L_SPLIT_TOPIC_EXPLAIN}</p>
				<label for="txtNewTopicTitle">{L_SPLIT_SUBJECT}</label>
				<input class="boxes" type="text" size="35" maxlength="60" id="txtNewTopicTitle" name="subject" title="{L_SPLIT_SUBJECT}" /><br/>
				<label for="ddlForumSelect">{L_SPLIT_FORUM}</label>
				{S_FORUM_SELECT}<br/>
				
				<input class="button" type="submit" id="btnSplitPostsR1" name="split_type_all" value="{L_SPLIT_POSTS}" title="{L_SPLIT_POSTS}" />
				<input class="button" type="submit" id="btnSplitPostsAfterR1" name="split_type_beyond" value="{L_SPLIT_AFTER}" title="{L_SPLIT_AFTER}" />
				
				<!-- BEGIN postrow -->
				<div class="row1">
					<div class="messageheader">
						<div class="forumpostinfo">
							{L_POSTED}: {postrow.POST_DATE}<br/>
							{L_POST_SUBJECT}: {postrow.POST_SUBJECT}
						</div>
						<div class="memberinfo">
							<a id="{postrow.U_POST_ID}" title="{postrow.U_POST_ID}"></a>{L_AUTHOR}: <strong>{postrow.POSTER_NAME}</strong>
						</div>										
					</div>
					<div class="messagebody">
						<hr class="thindivide"/>
							{postrow.MESSAGE}
							<div class="messagecommands">
								{postrow.S_SPLIT_CHECKBOX}
							</div>
						<hr class="thindivide"/>		 
					</div>
				</div>			
				<!-- END postrow -->	
				
				<input class="button" type="submit" id="btnSplitPostsR2" name="split_type_all" value="{L_SPLIT_POSTS}" title="{L_SPLIT_POSTS}" />
				<input class="button" type="submit" id="btnSplitPostsAfterR2" name="split_type_beyond" value="{L_SPLIT_AFTER}" title="{L_SPLIT_AFTER}" />
				{S_HIDDEN_FIELDS}
				</form>
			</div>
			<hr/>
