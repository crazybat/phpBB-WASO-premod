			<script type="text/javascript">
			<!--
			function emoticon(text) {
				text = ' ' + text + ' ';
				if (opener.document.forms['post'].message.createTextRange && opener.document.forms['post'].message.caretPos) {
					var caretPos = opener.document.forms['post'].message.caretPos;
					caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? text + ' ' : text;
					opener.document.forms['post'].message.focus();
				} else {
				opener.document.forms['post'].message.value  += text;
				opener.document.forms['post'].message.focus();
				}
			}
			//-->
			</script>
			
			<div class="highlights">
				<h4>{L_EMOTICONS}</h4>
				<!-- BEGIN smilies_row -->
				<!-- BEGIN smilies_col -->
				<a href="javascript:void(0);" onclick="javascript:emoticon('{smilies_row.smilies_col.SMILEY_CODE}')" title="{smilies_row.smilies_col.SMILEY_DESC}">
				<img src="{smilies_row.smilies_col.SMILEY_IMG}" alt="{smilies_row.smilies_col.SMILEY_DESC}" title="{smilies_row.smilies_col.SMILEY_DESC}" /></a>
				<!-- END smilies_col -->
				<!-- END smilies_row -->
				<!-- BEGIN switch_smilies_extra -->
				<a href="{U_MORE_SMILIES}" onclick="open_window('{U_MORE_SMILIES}', 250, 300);return false" title="{L_MORE_SMILIES}">{L_MORE_SMILIES}</a>
				<!-- END switch_smilies_extra -->	
				<p><a href="javascript:window.close();" title="{L_CLOSE_WINDOW}">{L_CLOSE_WINDOW}</a></p>
			</div>