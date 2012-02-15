			<div class="highlights">
			<h5>{L_PENDING_MEMBERS}</h5>
			<table class="grid" summary="{GROUP_NAME}">
				<caption>{L_GROUP_PENDING_CAPTION} {GROUP_NAME}</caption>
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
					<!-- BEGIN pending_members_row -->
					<tr class="{pending_members_row.ROW_CLASS}">
						<td headers="hmod1">
							{pending_members_row.PM_IMG} 
						</td>
						<td headers="hmod2">
							<a href="{pending_members_row.U_VIEWPROFILE}" title="{pending_members_row.USERNAME}">{pending_members_row.USERNAME}</a>
						</td>
						<td headers="hmod3">
							{pending_members_row.POSTS}
						</td>
						<td headers="hmod4">
							{pending_members_row.FROM}
						</td>
						<td headers="hmod5">
							{pending_members_row.EMAIL_IMG}
						</td>
						<td headers="hmod6">
							{pending_members_row.WWW_IMG}
						</td>
						<td headers="hmod7">
							<input type="checkbox" name="pending_members[]" id="chkSelectPendingMember" value="{pending_members_row.USER_ID}" checked="checked" /> <label for="chkSelectPendingMember" class="inlinelabel">Select</label>			
						</td>
					</tr>
					<!-- END pending_members_row -->
				</tbody>
			</table>
			<input type="submit" name="approve" value="{L_APPROVE_SELECTED}" class="button" />
			<input type="submit" name="deny" value="{L_DENY_SELECTED}" class="button" />
			</div>