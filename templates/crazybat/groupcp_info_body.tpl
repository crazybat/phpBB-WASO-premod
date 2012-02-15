			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			
			<form action="{S_GROUPCP_ACTION}" method="post">
			<div class="highlights">
				<h4>{L_GROUP_INFORMATION}</h4>
				<h5>{L_GROUP_NAME}</h5>
				<p><em>{GROUP_NAME}</em></p>
				
				<h5>{L_GROUP_DESC}</h5>
				<p>{GROUP_DESC}</p>
				
				<h5>{L_GROUP_MEMBERSHIP}</h5>
				<p>{GROUP_DETAILS}</p>
				
				<!-- BEGIN switch_subscribe_group_input -->
				<input type="submit" name="joingroup" value="{L_JOIN_GROUP}" title="{L_JOIN_GROUP}" class="button" />
				<!-- END switch_subscribe_group_input -->
				<!-- BEGIN switch_unsubscribe_group_input -->
				<input type="submit" name="unsub" value="{L_UNSUBSCRIBE_GROUP}" title="{L_UNSUBSCRIBE_GROUP}" class="button" />
				<!-- END switch_unsubscribe_group_input -->
				
				<!-- BEGIN switch_mod_option -->
				<h5>{L_GROUP_TYPE}</h5>
				<input type="radio" name="group_type" id="radGroupOpen" value="{S_GROUP_OPEN_TYPE}" {S_GROUP_OPEN_CHECKED} /> <label for="radGroupOpen" class="inlinelabel">{L_GROUP_OPEN}</label>
				<input type="radio" name="group_type" id="radGroupClosed" value="{S_GROUP_CLOSED_TYPE}" {S_GROUP_CLOSED_CHECKED} />	<label for="radGroupClosed" class="inlinelabel">{L_GROUP_CLOSED}</label> 
				<input type="radio" name="group_type" id="radGroupHidden" value="{S_GROUP_HIDDEN_TYPE}" {S_GROUP_HIDDEN_CHECKED} />	<label for="radGroupHidden" class="inlinelabel">{L_GROUP_HIDDEN}</label> 
				<input type="submit" name="groupstatus" value="{L_UPDATE}" class="button" />
				<!-- END switch_mod_option -->
				
			</div>
			<hr/>
			{S_HIDDEN_FIELDS}
			</form>
			
			<form action="{S_GROUPCP_ACTION}" method="post" id="post">
			<div class="highlights">
				<h4>{L_GROUP_PARTICIPANTS_TITLE}</h4>
				<h5>{L_GROUP_MODERATOR}</h5>
				<table class="grid" summary="{GROUP_NAME}">
					<caption>{L_GROUP_INFO_CAPTION} {GROUP_NAME}</caption>
					<thead>
						<tr>
							<th id="hmod1">{L_PM}</th>
							<th id="hmod2">{L_USERNAME}</th>
							<th id="hmod3">{L_POSTS}</th>
							<th id="hmod4">{L_FROM}</th>
							<th id="hmod5">{L_EMAIL}</th>
							<th id="hmod6">{L_WEBSITE}</th>
							<th id="hmod7">{L_SELECT}</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td headers="hmod1">
								{MOD_PM_IMG}
							</td>
							<td headers="hmod2">
								<a href="{U_MOD_VIEWPROFILE}" title="{MOD_USERNAME}">{MOD_USERNAME}</a>
							</td>
							<td headers="hmod3">
								{MOD_POSTS}
							</td>
							<td headers="hmod4">
								{MOD_FROM}
							</td>
							<td headers="hmod5">
								{MOD_EMAIL_IMG}
							</td>
							<td headers="hmod6">
								{MOD_WWW_IMG}
							</td>
							<td headers="hmod7">&nbsp;
								
							</td>
						</tr>
					</tbody>
				</table>
			
				<h5>{L_GROUP_MEMBERS}</h5>
				<table class="grid" summary="{GROUP_NAME}">
					<caption>{L_GROUP_HIDDEN_CAPTION} {GROUP_NAME}</caption>
					<!-- BEGIN member_row -->
					<thead>
						<tr>
							<th id="h1">{L_PM}</th>
							<th id="h2">{L_USERNAME}</th>
							<th id="h3">{L_POSTS}</th>
							<th id="h4">{L_FROM}</th>
							<th id="h5">{L_EMAIL}</th>
							<th id="h6">{L_WEBSITE}</th>
							<th id="h7">{L_SELECT}</th>
						</tr>
					</thead>
					<tbody>
						<tr class="{member_row.ROW_CLASS}">
							<td headers="h1">
								{member_row.PM_IMG}
							</td>
							<td headers="h2">
								<a href="{member_row.U_VIEWPROFILE}" title="{member_row.USERNAME}">{member_row.USERNAME}</a>
							</td>
							<td headers="h3">
								{member_row.POSTS}
							</td>
							<td headers="h4">
								{member_row.FROM} 
							</td>
							<td headers="h5">
								{member_row.EMAIL_IMG}
							</td>
							<td headers="h6">
								{member_row.WWW_IMG}
							</td>
							<td headers="h7">
								<!-- BEGIN switch_mod_option -->
								<input type="checkbox" name="members[]" id="chkSelect" value="{member_row.USER_ID}" /> <label for="chkSelect" class="inlinelabel">Select</label>
								<!-- END switch_mod_option -->
							</td>
						</tr>
						<!-- END member_row -->
						<!-- BEGIN switch_no_members -->
						<tr> 
							<td headers="h1">{L_NO_MEMBERS}</td>
						</tr>
						<!-- END switch_no_members -->
						<!-- BEGIN switch_hidden_group -->
						<tr> 
							<td headers="h1">{L_HIDDEN_MEMBERS}</td>
						</tr>
						<!-- END switch_hidden_group -->
					</tbody>
				</table>
				<!-- BEGIN switch_mod_option -->
				<input type="submit" name="remove" value="{L_REMOVE_SELECTED}" class="button" />
				<!-- END switch_mod_option -->	
				<div>
					<div class="pagenumber">
						<p><strong>{PAGE_NUMBER}</strong><br/>
						<strong>{PAGINATION}</strong></p>
					</div>
					<div class="clear"></div>
				</div>		
			</div>
			<hr/>
			<!-- BEGIN switch_mod_option -->
			<div class="highlights">
				<h4>{L_MODERATOR_OPTIONS_TITLE}</h4>
				<h5>{L_FIND_USERS_TITLE}</h5>
				<input type="text" class="boxes" name="username" maxlength="50" size="20" />
				<input type="submit" name="add" value="{L_ADD_MEMBER}" class="button" />
				<input type="submit" name="usersubmit" value="{L_FIND_USERNAME}" class="button" onclick="window.open('{U_SEARCH_USER}', '_phpbbsearch', 'HEIGHT=250,resizable=yes,WIDTH=400');return false;" />				
			</div>
			<hr/>
			<!-- END switch_mod_option -->
			{PENDING_USER_BOX}	
			{S_HIDDEN_FIELDS}
			</form>
			
			<div>{JUMPBOX}</div>