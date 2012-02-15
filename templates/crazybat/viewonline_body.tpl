			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			
			<div class="highlights">
				<h4>{L_WHOSONLINE}</h4>
				<table class="grid" summary="{L_ONLINE_CAPTION}">
					<caption>{L_ONLINE_CAPTION}</caption>
					<thead>
						<tr>
							<th id="h1">{L_USERNAME}</th>
							<th id="h2">{L_LAST_UPDATE}</th>
							<th id="h3">{L_FORUM_LOCATION}</th>
						</tr>
					</thead>
					<tbody>
						<!-- BEGIN reg_user_row -->
						<tr class="{reg_user_row.ROW_CLASS}">
							<td headers="h1">
								<a href="{reg_user_row.U_USER_PROFILE}" title="View profile for {reg_user_row.USERNAME}">{reg_user_row.USERNAME}</a>
							</td>
							<td headers="h2">{reg_user_row.LASTUPDATE}</td>
							<td headers="h3">
								<a href="{reg_user_row.U_FORUM_LOCATION}" title="{reg_user_row.FORUM_LOCATION}">{reg_user_row.FORUM_LOCATION}</a>
							</td>
						</tr>
						<!-- END reg_user_row -->
						<!-- BEGIN guest_user_row -->
						<tr class="{guest_user_row.ROW_CLASS}">
							<td headers="h1">{guest_user_row.USERNAME}</td>
							<td headers="h2">{guest_user_row.LASTUPDATE}</td>
							<td headers="h3">
								<a href="{guest_user_row.U_FORUM_LOCATION}" title="{guest_user_row.FORUM_LOCATION}">{guest_user_row.FORUM_LOCATION}</a>
							</td>
						</tr>
						<!-- END guest_user_row -->
					</tbody>
				</table>
			</div>
			<hr/>
			<p>{TOTAL_REGISTERED_USERS_ONLINE}</p>
			<p>{TOTAL_GUEST_USERS_ONLINE}</p>
			<div>{JUMPBOX}</div>