			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			
			<div class="highlights">
				<h4>{L_IP_INFO}</h4>
				<h5>{L_THIS_POST_IP}: {IP} <strong>( {POSTS} )</strong></h5>
				<ul>
					<li><a href="{U_LOOKUP_IP}" title="{L_LOOKUP_IP}">{L_LOOKUP_IP}</a></li>
				</ul>
			</div>
			<hr/>
			
			<div class="highlights">
				<h4>{L_OTHER_USERS}</h4>
				<!-- BEGIN userrow -->
				<h5><a href="{userrow.U_PROFILE}" title="{userrow.USERNAME}">{userrow.USERNAME}</a> <strong>( {userrow.POSTS} )</strong></h5>
				<ul>
					<li><a href="{userrow.U_SEARCHPOSTS}" title="{userrow.L_SEARCH_POSTS}" class="smallbutton-search">{SEARCH_IMG}</a></li>
				</ul>				
				<!-- END userrow -->
			</div>
			<hr/>
			
			<div class="highlights">
				<h4>{L_OTHER_IPS}</h4>
				<!-- BEGIN iprow -->
				<h5>{iprow.IP} <strong>( {iprow.POSTS} )</strong></h5>
				<ul>
					<li><a href="{iprow.U_LOOKUP_IP}" title="{L_LOOKUP_IP}">{L_LOOKUP_IP}</a></li>
				</ul>
				<!-- END iprow -->	
			</div>
			<hr/>
