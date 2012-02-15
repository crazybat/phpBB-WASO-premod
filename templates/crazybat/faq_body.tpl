			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			<a id="backtotop"></a>
						
			<div class="highlights">
				<h4>{L_FAQ_TITLE}</h4>
				<!-- BEGIN faq_block_link -->
				<h5>{faq_block_link.BLOCK_TITLE}</h5>
				<ul>
					<!-- BEGIN faq_row_link -->
					<li><a href="{faq_block_link.faq_row_link.U_FAQ_LINK}" title="{faq_block_link.faq_row_link.FAQ_LINK}">{faq_block_link.faq_row_link.FAQ_LINK}</a></li>
					<!-- END faq_row_link -->
				</ul>
				<!-- END faq_block_link -->
			</div>
			<hr/>
			
			<!-- BEGIN faq_block -->
			<div class="highlights">
				<h4>{faq_block.BLOCK_TITLE}</h4>
				<!-- BEGIN faq_row --> 
				<a id="faq{faq_block.faq_row.U_FAQ_ID}"></a>
				<h5>{faq_block.faq_row.FAQ_QUESTION}</h5>
				<p>{faq_block.faq_row.FAQ_ANSWER}</p>
				<a title="Back to Top" href="#backtotop" class="sublink">{L_BACK_TO_TOP}</a>
				<hr class="thindivide" />
				<!-- END faq_row -->
			</div>
			<hr/>
			<!-- END faq_block -->
			
			<div>{JUMPBOX}</div>
