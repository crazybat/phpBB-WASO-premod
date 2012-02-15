			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3> 
			 
			<div class="highlights">
				<h4>{L_SEARCH_MATCHES}</h4>
				<div>
					<div class="pagenumber">
						{PAGINATION}
					</div>
					<div class="clear"></div>
				</div>
				<table class="grid" summary="{L_SEARCH_RESULTS_CAPTION}">
					<caption>{L_SEARCH_RESULTS_CAPTION}</caption>
					<thead>
						<tr>
							<th id="h1">{L_FORUM}</th>
							<th id="h2">{L_TOPICS}</th>
							<th id="h3">{L_AUTHOR}</th>
							<th id="h4">{L_REPLIES}</th>
							<th id="h5">{L_VIEWS}</th>
							<th id="h6">{L_LASTPOST}</th>
						</tr>
					</thead>
					<tbody>
						<!-- BEGIN searchresults -->
						
						<tr class="row1">
							<td headers="h1">
								{searchresults.TOPIC_FOLDER_IMG}<a href="{searchresults.U_VIEW_FORUM}" title="{searchresults.FORUM_NAME}">{searchresults.FORUM_NAME}</a>
							</td>
							<td headers="h2">
								{searchresults.NEWEST_POST_IMG}{searchresults.TOPIC_TYPE}<a href="{searchresults.U_VIEW_TOPIC}" title="{searchresults.TOPIC_TITLE}">{searchresults.TOPIC_TITLE}</a><br/>{searchresults.GOTO_PAGE}
							</td>
							<td headers="h3">{searchresults.TOPIC_AUTHOR}</td>
							<td headers="h4">{searchresults.REPLIES}</td>
							<td headers="h5">{searchresults.VIEWS}</td>
							<td headers="h6">
								{searchresults.LAST_POST_TIME}<br/>
								{searchresults.LAST_POST_AUTHOR} {searchresults.LAST_POST_IMG}
							</td>
						</tr>
						<!-- END searchresults -->
					</tbody>
				</table>
				<div class="pagenumber">
					<p>{PAGINATION}</p>
				</div>
			</div>
			<hr/>
			<p>{PAGE_NUMBER}</p>
			<div>{JUMPBOX}</div>