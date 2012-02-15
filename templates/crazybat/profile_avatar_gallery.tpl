			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			<form action="{S_PROFILE_ACTION}" method="post">
			
			<div class="highlights">
				<h4>{L_AVATAR_GALLERY}</h4>
				{L_CATEGORY}: {S_CATEGORY_SELECT} <input type="submit" class="button" value="{L_GO}" name="avatargallery" />
				<div>
					<!-- BEGIN avatar_row -->
					<!-- BEGIN avatar_column -->
					<img src="{avatar_row.avatar_column.AVATAR_IMAGE}" alt="{avatar_row.avatar_column.AVATAR_NAME}" title="{avatar_row.avatar_column.AVATAR_NAME}" /><br/>
					<!-- END avatar_column -->
					<!-- BEGIN avatar_option_column -->
					<input type="radio" name="avatarselect" id="radAvatarOption" value="{avatar_row.avatar_option_column.S_OPTIONS_AVATAR}" /> <label for="radAvatarOption" class="inlinelabel" title="Select Avatar">Select</label>
					<!-- END avatar_option_column -->
					<!-- END avatar_row -->
				</div>
				{S_HIDDEN_FIELDS} 
				<input type="submit" name="submitavatar" value="{L_SELECT_AVATAR}" class="button" />
				<input type="submit" name="cancelavatar" value="{L_RETURN_PROFILE}" class="button" />
			</div>
			</form>