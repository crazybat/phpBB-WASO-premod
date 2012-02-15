			
					<h5>{L_ADD_A_POLL}</h5>
					<fieldset>
						<p>{L_ADD_POLL_EXPLAIN}</p>
						<label for="txtPollTitle">{L_POLL_QUESTION}</label>
						<input type="text" id="txtPollTitle" name="poll_title" size="50" maxlength="255" class="boxes" value="{POLL_TITLE}" title="{POLL_TITLE}" /><br/>
						
						<!-- BEGIN poll_option_rows -->
						<label for="txtPollOption">{L_POLL_OPTION}</label>
						<input type="text" id="txtPollOption" name="poll_option_text[{poll_option_rows.S_POLL_OPTION_NUM}]" size="50" class="boxes" maxlength="255" value="{poll_option_rows.POLL_OPTION}" title="{L_POLL_OPTION}" /><br/>
						<input type="submit" id="btnEditOption" name="edit_poll_option" value="{L_UPDATE_OPTION}" title="{L_UPDATE_OPTION}" class="button" />
						<input type="submit" id="btnDelOption" name="del_poll_option[{poll_option_rows.S_POLL_OPTION_NUM}]" value="{L_DELETE_OPTION}" title="{L_DELETE_OPTION}" class="button" /><br/>
						<!-- END poll_option_rows -->
						
						<label for="txtPollOptionStart">{L_POLL_OPTION}</label>
						<input type="text" id="txtPollOptionStart" name="add_poll_option_text" size="50" maxlength="255" class="boxes" value="{ADD_POLL_OPTION}" title="{ADD_POLL_OPTION}" /><br/>
						<input type="submit" id="btnAddOption" name="add_poll_option" value="{L_ADD_OPTION}" title="{L_ADD_OPTION}" class="button" /><br/>
						
						<label for="txtPollLength">{L_POLL_LENGTH}{L_POLL_LENGTH_EXPLAIN}</label> <input type="text" id="txtPollLength" name="poll_length" size="3" maxlength="3" class="boxes" value="{POLL_LENGTH}" title="{L_POLL_LENGTH}" /><br/>
						
						<!-- BEGIN switch_poll_delete_toggle -->
						<input type="checkbox" id="btnPollDelete" name="poll_delete" class="button" title="{L_POLL_DELETE}" />
						<label for="btnPollDelete" class="inlinelabel">{L_POLL_DELETE}</label>
						<!-- END switch_poll_delete_toggle -->			
			
