			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			
			<div class="highlights">
				<!-- BEGIN switch_groups_joined -->
				<h4>{L_GROUP_MEMBERSHIP_DETAILS}</h4>
				<!-- BEGIN switch_groups_member -->
				<h5>{L_YOU_BELONG_GROUPS}</h5>
				<form method="get" action="{S_USERGROUP_ACTION}">
				<div>
					{GROUP_MEMBER_SELECT}
					<input type="submit" value="{L_VIEW_INFORMATION}" class="button" />
					{S_HIDDEN_FIELDS}
				</div>	
				</form>
				<!-- END switch_groups_member -->
				<!-- BEGIN switch_groups_pending -->
				<h5>{L_PENDING_GROUPS}</h5>
				<form method="get" action="{S_USERGROUP_ACTION}">
				<div>
					{GROUP_PENDING_SELECT}
					<input type="submit" value="{L_VIEW_INFORMATION}" class="button" />
					{S_HIDDEN_FIELDS}
				</div>
				</form>
				<!-- END switch_groups_pending -->
				<!-- END switch_groups_joined -->
				<!-- BEGIN switch_groups_remaining -->
				<h4>{L_JOIN_A_GROUP}</h4>
				<h5>{L_SELECT_A_GROUP}</h5>
				<form method="get" action="{S_USERGROUP_ACTION}">
				<div>
					{GROUP_LIST_SELECT}
					<input type="submit" value="{L_VIEW_INFORMATION}" class="button" />
					{S_HIDDEN_FIELDS}
				</div>
				</form>
			  <!-- END switch_groups_remaining -->
			</div>
			
			<hr/>
			<div>{JUMPBOX}</div>
