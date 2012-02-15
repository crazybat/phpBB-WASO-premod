			<form method="post" action="{S_POLL_ACTION}">
			<div class="pollbox">
				<h5>{POLL_QUESTION}</h5>
				<!-- BEGIN poll_option -->
				<div class="pollchoicecontainer">
					<input type="radio" id="radVoteId{poll_option.POLL_OPTION_ID}" name="vote_id" value="{poll_option.POLL_OPTION_ID}" title="{poll_option.POLL_OPTION_CAPTION}" />
					<label for="radVoteId{poll_option.POLL_OPTION_ID}" class="inlinelabel">{poll_option.POLL_OPTION_CAPTION}</label>
				</div>
				<!-- END poll_option -->
				<input type="submit" name="submit" value="{L_SUBMIT_VOTE}" class="button" title="{L_SUBMIT_VOTE}" />
				
				<p><a href="{U_VIEW_RESULTS}" title="{L_VIEW_RESULTS}">{L_VIEW_RESULTS}</a></p>
			</div>
			{S_HIDDEN_FIELDS}
			</form>
			<hr/>