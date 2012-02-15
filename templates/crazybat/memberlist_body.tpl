			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			
			<form method="post" action="{S_MODE_ACTION}">
			<div>
				<label for="ddlsortmethod">{L_SELECT_SORT_METHOD}</label>
				{S_MODE_SELECT}
				<label for="ddlorder">{L_ORDER}</label> 
				{S_ORDER_SELECT}
				<input type="submit" name="submit" value="{L_SUBMIT}" class="button" title="{L_SUBMIT}" />
			</div>
			</form>
			<div class="highlights">
				<h4>{L_MEMBERLIST_TITLE}</h4>
				<table class="grid" summary="{L_MEMBERLIST_CAPTION}">
					<caption>{L_MEMBERLIST_CAPTION}</caption>
					<thead>
						<tr>
							<th id="h1">{L_MEMBER_NUMBER}</th>
							<th id="h2">{L_PM}</th>
							<th id="h3">{L_USERNAME}</th>
							<th id="h4">{L_EMAIL}</th>
							<th id="h5">{L_FROM}</th>
							<th id="h6">{L_JOINED}</th>
							<th id="h7">{L_POSTS}</th>
							<th id="h8">{L_WEBSITE}</th>
						</tr>
					</thead>
					<tbody>
						<!-- BEGIN memberrow -->
						<tr class="row1">
							<td headers="h1">{memberrow.ROW_NUMBER}</td>
							<td headers="h2">{memberrow.PM_IMG}</td>
							<td headers="h3">{memberrow.USERNAME}</td>
							<td headers="h4">{memberrow.EMAIL_IMG}</td>
							<td headers="h5">{memberrow.FROM}</td>
							<td headers="h6">{memberrow.JOINED}</td>
							<td headers="h7">{memberrow.POSTS}</td>
							<td headers="h8">{memberrow.WWW_IMG}</td>
						</tr>
						<!-- END memberrow -->
					</tbody>
				</table>
			</div>
			<hr/>
			<p>{PAGE_NUMBER}</p>
			<p>{PAGINATION}</p>
			<div>{JUMPBOX}</div>