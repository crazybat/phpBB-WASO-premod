			<div class="highlights">
				<!-- BEGIN switch_inline_mode -->
				<h4>{L_TOPIC_REVIEW}</h4>
				<div class="overflowy">
				<!-- END switch_inline_mode -->
				<!-- BEGIN postrow -->
					<div class="{postrow.ROW_CLASS}">
						<div class="messageheader">
							<div class="forumpostinfo">
								{L_POSTED}: {postrow.POST_DATE}<br/>
								{L_POST_SUBJECT}: {postrow.POST_SUBJECT}
							</div>
							<div class="memberinfo">
								<a id="userpostid{postrow.U_POST_ID}"></a><strong>{postrow.POSTER_NAME}</strong><br/>
							</div>										
						</div>
						<div class="messagebody">
							<hr class="thindivide"/>
							{postrow.MESSAGE}
							<hr class="thindivide"/>		 
						</div>
					</div>
				<!-- END postrow -->
				<!-- BEGIN switch_inline_mode -->
				</div>
				<!-- END switch_inline_mode -->
			</div>