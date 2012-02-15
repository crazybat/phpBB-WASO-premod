			{ERROR_BOX}
			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			<form action="{S_PROFILE_ACTION}" {S_FORM_ENCTYPE} method="post">
			
			<div class="highlights">
				<h4>{L_REGISTRATION_INFO}</h4>
				<p>{L_ITEMS_REQUIRED}</p>
				<!-- BEGIN switch_namechange_disallowed -->
				<label for="txtSwitchUserName">* {L_USERNAME}</label>
				<input type="hidden" id="txtSwitchUserName" name="username" value="{USERNAME}" title="{L_USERNAME}" /> <strong>{USERNAME}</strong><br/>
				<!-- END switch_namechange_disallowed -->
				
				<!-- BEGIN switch_namechange_allowed -->
				<label for="txtUserName">* {L_USERNAME}</label>
				<input type="text" class="boxes" id="txtUserName" name="username" size="25" maxlength="25" value="{USERNAME}" title="{L_USERNAME}" /><br/>
				<!-- END switch_namechange_allowed -->
				
				<label for="txtEmailAddress">* {L_EMAIL_ADDRESS}</label>
				<input type="text" class="boxes" id="txtEmailAddress" name="email" size="25" maxlength="255" value="{EMAIL}" title="{L_EMAIL_ADDRESS}" /><br/>
				
				<!-- BEGIN switch_edit_profile -->
				<label for="txtCurrentPassword">* {L_CURRENT_PASSWORD}</label>
				<input type="password" class="boxes" id="txtCurrentPassword" name="cur_password" size="25" maxlength="32" value="{CUR_PASSWORD}" title="{L_CURRENT_PASSWORD}" /><br/>
				{L_CONFIRM_PASSWORD_EXPLAIN}<br/>
				<!-- END switch_edit_profile -->
				
				<label for="txtNewPassword">* {L_NEW_PASSWORD}</label>
				<input type="password" class="boxes" id="txtNewPassword" name="new_password" size="25" maxlength="32" value="{NEW_PASSWORD}" title="{L_NEW_PASSWORD}" /><br/>
				{L_PASSWORD_IF_CHANGED}<br/>
				
				<label for="txtConfirmPassword">* {L_CONFIRM_PASSWORD}</label>
				<input type="password" class="boxes" id="txtConfirmPassword" name="password_confirm" size="25" maxlength="32" value="{PASSWORD_CONFIRM}" title="{L_CONFIRM_PASSWORD}" /><br/>
				{L_PASSWORD_CONFIRM_IF_CHANGED}<br/>
				
				<!-- Visual Confirmation -->
				<!-- BEGIN switch_confirm -->
				{L_CONFIRM_CODE_IMPAIRED}<br/>
				{CONFIRM_IMG}<br/>
				<label for="txtConfirmCode">* {L_CONFIRM_CODE}</label>
				<input type="text" class="boxes" id="txtConfirmCode" name="confirm_code" size="6" maxlength="6" value="" title="{L_CONFIRM_CODE}" />
				<p>{L_CONFIRM_CODE_EXPLAIN}</p>
				<!-- END switch_confirm -->
			</div>
			<hr/>
			
			<div class="highlights">
				<h4>{L_PROFILE_INFO}</h4>
				<p>{L_PROFILE_INFO_NOTICE}</p>
				<label for="txtICQ">{L_ICQ_NUMBER}</label>
				<input type="text" id="txtICQ" name="icq" class="boxes" size="10" maxlength="15" value="{ICQ}" title="{L_ICQ_NUMBER}" /><br/>
				
				<label for="txtAIM">{L_AIM}</label>
				<input type="text" class="boxes" id="txtAIM" name="aim" size="20" maxlength="255" value="{AIM}" title="{L_AIM}" /><br/>
				
				<label for="txtMessenger">{L_MESSENGER}</label>
				<input type="text" class="boxes" id="txtMessenger" name="msn" size="20" maxlength="255" value="{MSN}" title="{L_MESSENGER}" /><br/>
				
				<label for="txtYahoo">{L_YAHOO}</label>
				<input type="text" class="boxes" id="txtYahoo" name="yim" size="20" maxlength="255" value="{YIM}" title="{L_YAHOO}" /><br/>
				
				<label for="txtWebsite">{L_WEBSITE}</label>
				<input type="text" class="boxes" id="txtWebsite" name="website" size="25" maxlength="255" value="{WEBSITE}" title="{L_WEBSITE}" /><br/>
				
				<label for="txtLocation">{L_LOCATION}</label>
				<input type="text" class="boxes" id="txtLocation" name="location" size="25" maxlength="100" value="{LOCATION}" title="{L_LOCATION}" /><br/>
				
				<label for="txtOccupation">{L_OCCUPATION}</label>
				<input type="text" class="boxes" id="txtOccupation" name="occupation" size="25" maxlength="100" value="{OCCUPATION}" title="{L_OCCUPATION}" /><br/>
				
				<label for="txtInterest">{L_INTERESTS}</label>
				<input type="text" class="boxes" id="txtInterest" name="interests" size="35" maxlength="150" value="{INTERESTS}" title="{L_INTERESTS}" /><br/>
				
				<label for="txtSignature">{L_SIGNATURE}</label>
				<textarea id="txtSignature" name="signature" rows="6" cols="30" class="boxes" title="{L_SIGNATURE}">{SIGNATURE}</textarea>
				<p>{L_SIGNATURE_EXPLAIN}</p>
				<ul>
					<li>{HTML_STATUS}</li>
					<li>{BBCODE_STATUS}</li>
					<li>{SMILIES_STATUS}</li>
				</ul>
			</div>
			<hr/>
			
			<div class="highlights">
				<h4>{L_PREFERENCES}</h4>
				<h5>{L_PUBLIC_VIEW_EMAIL}</h5>
				<input type="radio" id="radViewMailYes" name="viewemail" title="{L_YES}" value="1" {VIEW_EMAIL_YES} />
				<label for="radViewMailYes" class="inlinelabel">{L_YES}</label>
				<input type="radio" id="radViewMailNo" name="viewemail" title="{L_NO}" value="0" {VIEW_EMAIL_NO} />
				<label for="radViewMailNo" class="inlinelabel">{L_NO}</label>
				
				<h5>{L_HIDE_USER}</h5>
				<input type="radio" id="radHideUserYes" name="hideonline" title="{L_YES}" value="1" {HIDE_USER_YES} />
				<label for="radHideUserYes" class="inlinelabel">{L_YES}</label>
				<input type="radio" id="radHideUserNo" name="hideonline" title="{L_NO}" value="0" {HIDE_USER_NO} />
				<label for="radHideUserNo" class="inlinelabel">{L_NO}</label>
				
				<h5>{L_NOTIFY_ON_REPLY}</h5>
				<input type="radio" id="radNotifyReplyYes" name="notifyreply" title="{L_YES}" value="1" {NOTIFY_REPLY_YES} />
				<label for="radNotifyReplyYes" class="inlinelabel">{L_YES}</label>
				<input type="radio" id="radNotifyReplyNo" name="notifyreply" title="{L_NO}" value="0" {NOTIFY_REPLY_NO} />
				<label for="radNotifyReplyNo" class="inlinelabel">{L_NO}</label>
				<p>{L_NOTIFY_ON_REPLY_EXPLAIN}</p>
				
				<h5>{L_NOTIFY_ON_PRIVMSG}</h5>
				<input type="radio" id="radNotifyPMYes" name="notifypm" title="{L_YES}" value="1" {NOTIFY_PM_YES} />
				<label for="radNotifyPMYes" class="inlinelabel">{L_YES}</label>
				<input type="radio" id="radNotifyPMNo" name="notifypm" title="{L_NO}" value="0" {NOTIFY_PM_NO} />
				<label for="radNotifyPMNo" class="inlinelabel">{L_NO}</label>
				
				<h5>{L_POPUP_ON_PRIVMSG}</h5>
				<input type="radio" id="radPopupPMYes" name="popup_pm" title="{L_YES}" value="1" {POPUP_PM_YES} />
				<label for="radPopupPMYes" class="inlinelabel">{L_YES}</label> 
				<input type="radio" id="radPopupPMNo" name="popup_pm" title="{L_NO}" value="0" {POPUP_PM_NO} />
				<label for="radPopupPMNo" class="inlinelabel">{L_NO}</label>
				<p>{L_POPUP_ON_PRIVMSG_EXPLAIN}</p>
				
				<h5>{L_ALWAYS_ADD_SIGNATURE}</h5>
				<input type="radio" id="radAddSigYes" name="attachsig" title="{L_YES}" value="1" {ALWAYS_ADD_SIGNATURE_YES} />
				<label for="radAddSigYes" class="inlinelabel">{L_YES}</label>
				<input type="radio" id="radAddSigNo" name="attachsig" title="{L_NO}" value="0" {ALWAYS_ADD_SIGNATURE_NO} />
				<label for="radAddSigNo" class="inlinelabel">{L_NO}</label>
				
				<h5>{L_ALWAYS_ALLOW_BBCODE}</h5>
				<input type="radio" id="radAllowBBCodeYes" name="allowbbcode" title="{L_YES}" value="1" {ALWAYS_ALLOW_BBCODE_YES} />
				<label for="radAllowBBCodeYes" class="inlinelabel">{L_YES}</label>
				<input type="radio" id="radAllowBBCodeNo" name="allowbbcode" title="{L_NO}" value="0" {ALWAYS_ALLOW_BBCODE_NO} />
				<label for="radAllowBBCodeNo" class="inlinelabel">{L_NO}</label>
				
				<h5>{L_ALWAYS_ALLOW_HTML}</h5>
				<input type="radio" id="radAllowHTMLYes" name="allowhtml" title="{L_YES}" value="1" {ALWAYS_ALLOW_HTML_YES} />
				<label for="radAllowHTMLYes" class="inlinelabel">{L_YES}</label> 
				<input type="radio" id="radAllowHTMLNo" name="allowhtml" title="{L_NO}" value="0" {ALWAYS_ALLOW_HTML_NO} />
				<label for="radAllowHTMLNo" class="inlinelabel">{L_NO}</label>
				
				<h5>{L_ALWAYS_ALLOW_SMILIES}</h5>
				<input type="radio" id="radAllowSMilesYes" name="allowsmilies" title="{L_YES}" value="1" {ALWAYS_ALLOW_SMILIES_YES} />
				<label for="radAllowSMilesYes" class="inlinelabel">{L_YES}</label>
				<input type="radio" id="radAllowSMilesNo" name="allowsmilies" title="{L_NO}" value="0" {ALWAYS_ALLOW_SMILIES_NO} />
				<label for="radAllowSMilesNo" class="inlinelabel">{L_NO}</label><br/>
				
				<label for="ddlBoardLanguage">{L_BOARD_LANGUAGE}</label>
				{LANGUAGE_SELECT}<br/>
				
				<label for="ddlBoardStyle">{L_BOARD_STYLE}</label>
				{STYLE_SELECT}<br/>
				
				<label for="ddlTimeZone">{L_TIMEZONE}</label>
				{TIMEZONE_SELECT}<br/>
				
				<label for="txtDateTimeFormat">{L_DATE_FORMAT}</label>
				<input type="text" id="txtDateTimeFormat" name="dateformat" value="{DATE_FORMAT}" maxlength="14" class="boxes" title="{L_DATE_FORMAT}" />
				<p>{L_DATE_FORMAT_EXPLAIN}</p>
			</div>
			<hr/>
			
			<!-- BEGIN switch_avatar_block -->
			<div class="highlights">
				<h4>{L_AVATAR_PANEL}</h4>
				<p>{L_AVATAR_EXPLAIN}</p>
				<p>{L_CURRENT_IMAGE}<br/>
				{AVATAR}</p>
				<input type="checkbox" id="chkDeleteAvatar" name="avatardel" title="{L_DELETE_AVATAR}" /> <label for="chkDeleteAvatar" class="inlinelabel">{L_DELETE_AVATAR}</label><br/>
				<!-- BEGIN switch_avatar_local_upload -->
				<label for="txtUploadAvatarFile">{L_UPLOAD_AVATAR_FILE}</label>
				<input type="hidden" name="MAX_FILE_SIZE" value="{AVATAR_SIZE}" />
				<input type="file" id="txtUploadAvatarFile" name="avatar" class="boxes" title="{L_UPLOAD_AVATAR_FILE}" />
				<!-- END switch_avatar_local_upload -->
				
				<!-- BEGIN switch_avatar_remote_upload -->
				<label for="txtUploadAvatarUrl">{L_UPLOAD_AVATAR_URL}</label>
				<input type="text" id="txtUploadAvatarUrl" name="avatarurl" size="40" class="boxes" title="{L_UPLOAD_AVATAR_URL}" />
				<p>{L_UPLOAD_AVATAR_URL_EXPLAIN}</p>
				<!-- END switch_avatar_remote_upload -->
				
				<!-- BEGIN switch_avatar_remote_link -->
				<label for="txtLinkRemoteAvatar">{L_LINK_REMOTE_AVATAR}</label>
				<input type="text" id="txtLinkRemoteAvatar" name="avatarremoteurl" size="40" class="boxes" title="{L_LINK_REMOTE_AVATAR}" />
				<p>{L_LINK_REMOTE_AVATAR_EXPLAIN}</p>
				<!-- END switch_avatar_remote_link -->
				
				<!-- BEGIN switch_avatar_local_gallery -->
				<label for="txtAvatarGallery">{L_AVATAR_GALLERY}</label>
				<input type="submit" id="txtLinkRemoteAvatar" name="avatargallery" value="{L_SHOW_GALLERY}" class="button" title="{L_AVATAR_GALLERY}" />
				<!-- END switch_avatar_local_gallery -->
			</div>
			<hr/>
			<!-- END switch_avatar_block -->
			<div>
				{S_HIDDEN_FIELDS}
				<input type="submit" name="submit" value="{L_SUBMIT}" class="button" title="{L_SUBMIT}" />
				<input type="reset" id="btnReset" value="{L_RESET}" name="reset" class="button" title="{L_RESET}" />
			</div>
			</form>
