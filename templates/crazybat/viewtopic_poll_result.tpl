			<form method="post" action="{S_POLL_ACTION}">
			<div class="pollboxresults">
				<h5>{POLL_QUESTION}</h5>
				<!-- BEGIN poll_option -->
				<br/>
				<div class="pollresults">
					<strong>{poll_option.POLL_OPTION_CAPTION}</strong><br/>
					<img src="{poll_option.POLL_OPTION_IMG}" width="{poll_option.POLL_OPTION_IMG_WIDTH}" height="12" alt="{poll_option.POLL_OPTION_PERCENT}" title="{poll_option.POLL_OPTION_PERCENT}" /><br/>
					{poll_option.POLL_OPTION_PERCENT} ({poll_option.POLL_OPTION_RESULT})
				</div>	
				<!-- END poll_option -->
				<p>{L_TOTAL_VOTES} : {TOTAL_VOTES}</p>
			</div>
			<hr/>