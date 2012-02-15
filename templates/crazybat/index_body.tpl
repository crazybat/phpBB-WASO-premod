				<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
				
				<div class="highlights">
					<!-- BEGIN catrow -->
					<h4><a href="{catrow.U_VIEWCAT}" title="{catrow.CAT_DESC}">{catrow.CAT_DESC}</a></h4>
					<dl>
						<!-- BEGIN forumrow -->
						<dt><a href="{catrow.forumrow.U_VIEWFORUM}" title="{catrow.forumrow.FORUM_NAME}">{catrow.forumrow.FORUM_NAME}</a></dt>
						<dd>
							{catrow.forumrow.FORUM_FOLDER_IMG}
							{catrow.forumrow.FORUM_DESC}<br/>
							<span class="smallnote">
								Number of Topics: <strong>{catrow.forumrow.TOPICS}</strong><br/>
								Number of Posts: <strong>{catrow.forumrow.POSTS}</strong>
							</span><br/>
							Last Post: <strong>{catrow.forumrow.LAST_POST}</strong></dd>
						<!-- END forumrow -->
					</dl>				
					<hr class="thindivide" />
					
					<!-- END catrow -->
					<div class="foruminformationsearch">
						<ul>
							<!-- BEGIN switch_user_logged_in -->
							<li>{LAST_VISIT_DATE}</li>		
							<li><a href="{U_SEARCH_NEW}" title="{L_SEARCH_NEW}">{L_SEARCH_NEW}</a></li>
							<li><a href="{U_SEARCH_SELF}" title="{L_SEARCH_SELF}">{L_SEARCH_SELF}</a></li>
							<li><a href="{U_MARK_READ}" title="{L_MARK_FORUMS_READ}">{L_MARK_FORUMS_READ}</a></li>
							<!-- END switch_user_logged_in -->
							<li><a href="{U_SEARCH_UNANSWERED}" title="{L_SEARCH_UNANSWERED}">{L_SEARCH_UNANSWERED}</a></li>
						</ul>
					</div>
				</div>
				<hr/>
				
				<div class="highlights">
					<h4><a href="{U_VIEWONLINE}" title="{L_WHO_IS_ONLINE}">{L_WHO_IS_ONLINE}</a></h4>
					<p>{TOTAL_POSTS}<br/>
					{TOTAL_USERS}<br/>
					{NEWEST_USER}</p>
					<p>{TOTAL_USERS_ONLINE}<br/>
					{RECORD_USERS}<br/>
					{LOGGED_IN_USER_LIST}</p>
				</div>
				<hr/>
				
				<!-- BEGIN switch_user_logged_out -->
				<div class="highlights">
					<h4>{L_LOGIN}</h4>
					<form method="post" action="{S_LOGIN_ACTION}">
					<div>
						<label for="txtUserName">{L_USERNAME}</label>
						<input class="boxes" type="text" id="txtUserName" name="username" size="10" title="{L_USERNAME}" /><br/>
						<label for="txtPassword">{L_PASSWORD}</label>
						<input class="boxes" type="password" id="txtPassword" name="password" size="10" maxlength="32" title="{L_PASSWORD}" /><br/>
						<input type="submit" class="button" id="login" name="login" value="{L_LOGIN}" title="{L_LOGIN}" /><br/>
						<!-- BEGIN switch_allow_autologin -->
						<input class="text" type="checkbox" id="chkAutoLogin" name="autologin" title="{L_AUTO_LOGIN}" /> <label for="chkAutoLogin" class="inlinelabel">{L_AUTO_LOGIN}</label>
						<!-- END switch_allow_autologin -->
					</div>
					</form>
				</div>
				<hr/>
				<!-- END switch_user_logged_out -->
				
				<div id="largeiconlegend" title="{L_LARGE_ICON_LEGEND_TITLE}">
					<ul>
						<li>{L_NEW_POSTS}<br/>
						<span class="iconnewposts"></span></li>
						<li>{L_NO_NEW_POSTS}<br/>
						<span class="iconnonewposts"></span></li>
						<li>{L_FORUM_LOCKED}<br/>
						<span class="iconlocked"></span></li>
					</ul>
				</div>
				<hr/>