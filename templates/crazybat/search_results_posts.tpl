			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			
			<div class="highlights">
				<h4>{L_SEARCH_MATCHES}</h4>
				<div>
					<div class="pagenumber">
						<p>{PAGINATION}</p>
					</div>
					<div class="clear"></div>
				</div>
				
				<!-- BEGIN searchresults -->
				<div class="row1">
					<div class="messageheader">
						<div class="forumpostinfo">
							{L_POSTED}: {searchresults.POST_DATE}<br/>
							{L_TOPIC}: <a href="{searchresults.U_TOPIC}" title="{searchresults.TOPIC_TITLE}">{searchresults.TOPIC_TITLE}</a> ||
							{L_FORUM}: <a href="{searchresults.U_FORUM}" title="{searchresults.FORUM_NAME}">{searchresults.FORUM_NAME}</a>		
						</div>
						<div class="memberinfo">
							{searchresults.POSTER_NAME}<br/>
							{L_REPLIES}: <strong>{searchresults.TOPIC_REPLIES}</strong><br />
							{L_VIEWS}: <strong>{searchresults.TOPIC_VIEWS}</strong><br/>
						</div>										
					</div>
					<div class="messagebody">
						<hr class="thindivide"/>
							{searchresults.MESSAGE}
						<hr class="thindivide"/>		 
					</div>
				</div>				
				<!-- END searchresults -->
				
				<div class="pagenumber">
					<p>{PAGINATION}</p>
				</div>
			</div>
			<hr/>
			<p>{PAGE_NUMBER}</p>
			<div>{JUMPBOX}</div>