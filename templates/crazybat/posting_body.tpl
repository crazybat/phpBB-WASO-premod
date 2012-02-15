			<script type="text/javascript">
			<!--
			// bbCode control by
			// subBlue design
			// www.subBlue.com
			// Changes
			// M. Battilana
			// 6 September 2005
			// Changed called from 'document.post' to 'document.getElementById('post')' in most cases. Still have the name attribute in the form present until the Javascript can be made to work without it.
			
			// Startup variables
			var imageTag = false;
			var theSelection = false;

			// Check for Browser & Platform for PC & IE specific bits
			// More details from: http://www.mozilla.org/docs/web-developer/sniffer/browser_type.html
			var clientPC = navigator.userAgent.toLowerCase(); // Get client info
			var clientVer = parseInt(navigator.appVersion); // Get browser version

			var is_ie = ((clientPC.indexOf("msie") != -1) && (clientPC.indexOf("opera") == -1));
			var is_nav = ((clientPC.indexOf('mozilla')!=-1) && (clientPC.indexOf('spoofer')==-1)
							&& (clientPC.indexOf('compatible') == -1) && (clientPC.indexOf('opera')==-1)
							&& (clientPC.indexOf('webtv')==-1) && (clientPC.indexOf('hotjava')==-1));
			var is_moz = 0;

			var is_win = ((clientPC.indexOf("win")!=-1) || (clientPC.indexOf("16bit") != -1));
			var is_mac = (clientPC.indexOf("mac")!=-1);

			// Helpline messages
			// M. Battilana 16 October 2005
			// Not needed as the descriptions are now within the title attribute of each applicable button
			/*b_help = "Bold text: [b]text[/b]  (alt+b)";
			i_help = "Italic text: [i]text[/i]  (alt+i)";
			u_help = "Underline text: [u]text[/u]  (alt+u)";
			q_help = "Quote text: [quote]text[/quote]  (alt+q)";
			c_help = "Code display: [code]code[/code]  (alt+c)";
			l_help = "List: [list]text[/list] (alt+l)";
			o_help = "Ordered list: [list=]text[/list]  (alt+o)";
			p_help = "Insert image: [img]http://image_url[/img]  (alt+p)";
			w_help = "Insert URL: [url]http://url[/url] or [url=http://url]URL text[/url]  (alt+w)";
			a_help = "Close all open bbCode tags";
			s_help = "Font color: [color=red]text[/color]  Tip: you can also use color=#FF0000";
			f_help = "Font size: [size=x-small]small text[/size]";*/

			// Define the bbCode tags
			bbcode = new Array();
			bbtags = new Array('[b]','[/b]','[i]','[/i]','[u]','[/u]','[quote]','[/quote]','[code]','[/code]','[list]','[/list]','[list=]','[/list]','[img]','[/img]','[url]','[/url]');
			imageTag = false;

			// Shows the help messages in the helpline window
			// M. Battilana 16 October 2005
			// Not needed as the descriptions are now within the title attribute of each applicable button
			/*function helpline(help) {
				document.post.helpbox.value = eval(help + "_help");
			}*/


			// Replacement for arrayname.length property
			function getarraysize(thearray) {
				for (i = 0; i < thearray.length; i++) {
					if ((thearray[i] == "undefined") || (thearray[i] == "") || (thearray[i] == null))
						return i;
					}
				return thearray.length;
			}

			// Replacement for arrayname.push(value) not implemented in IE until version 5.5
			// Appends element to the array
			function arraypush(thearray,value) {
				thearray[ getarraysize(thearray) ] = value;
			}

			// Replacement for arrayname.pop() not implemented in IE until version 5.5
			// Removes and returns the last element of an array
			function arraypop(thearray) {
				thearraysize = getarraysize(thearray);
				retval = thearray[thearraysize - 1];
				delete thearray[thearraysize - 1];
				return retval;
			}


			function checkForm() {

				formErrors = false;

				if (document.getElementById('post').message.value.length < 2) {
					formErrors = "You must enter a message when posting.";
				}

				if (formErrors) {
					alert(formErrors);
					return false;
				} else {
					bbstyle(-1);
					//formObj.preview.disabled = true;
					//formObj.submit.disabled = true;
					return true;
				}
			}

			function emoticon(text) {
				// M. Battilana 16 October 2005
				// changed to conform with XHTML. 
				var txtarea = document.getElementById('post').message;
				text = ' ' + text + ' ';
				if (txtarea.createTextRange && txtarea.caretPos) {
					var caretPos = txtarea.caretPos;
					caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? caretPos.text + text + ' ' : caretPos.text + text;
					txtarea.focus();
				} else {
					txtarea.value  += text;
					txtarea.focus();
				}
			}

			function bbfontstyle(bbopen, bbclose) {
				var txtarea = document.post.message;

				if ((clientVer >= 4) && is_ie && is_win) {
					theSelection = document.selection.createRange().text;
					if (!theSelection) {
						txtarea.value += bbopen + bbclose;
						txtarea.focus();
						return;
					}
					document.selection.createRange().text = bbopen + theSelection + bbclose;
					txtarea.focus();
					return;
				}
				else if (txtarea.selectionEnd && (txtarea.selectionEnd - txtarea.selectionStart > 0))
				{
					mozWrap(txtarea, bbopen, bbclose);
					return;
				}
				else
				{
					txtarea.value += bbopen + bbclose;
					txtarea.focus();
				}
				storeCaret(txtarea);
			}


			function bbstyle(bbnumber) {
				var txtarea = document.post.message;

				txtarea.focus();
				donotinsert = false;
				theSelection = false;
				bblast = 0;

				if (bbnumber == -1) { // Close all open tags & default button names
					while (bbcode[0]) {
						butnumber = arraypop(bbcode) - 1;
						txtarea.value += bbtags[butnumber + 1];
						buttext = eval('document.post.addbbcode' + butnumber + '.value');
						eval('document.post.addbbcode' + butnumber + '.value ="' + buttext.substr(0,(buttext.length - 1)) + '"');
					}
					imageTag = false; // All tags are closed including image tags :D
					txtarea.focus();
					return;
				}

				if ((clientVer >= 4) && is_ie && is_win)
				{
					theSelection = document.selection.createRange().text; // Get text selection
					if (theSelection) {
						// Add tags around selection
						document.selection.createRange().text = bbtags[bbnumber] + theSelection + bbtags[bbnumber+1];
						txtarea.focus();
						theSelection = '';
						return;
					}
				}
				else if (txtarea.selectionEnd && (txtarea.selectionEnd - txtarea.selectionStart > 0))
				{
					mozWrap(txtarea, bbtags[bbnumber], bbtags[bbnumber+1]);
					return;
				}

				// Find last occurance of an open tag the same as the one just clicked
				for (i = 0; i < bbcode.length; i++) {
					if (bbcode[i] == bbnumber+1) {
						bblast = i;
						donotinsert = true;
					}
				}

				if (donotinsert) {		// Close all open tags up to the one just clicked & default button names
					while (bbcode[bblast]) {
							butnumber = arraypop(bbcode) - 1;
							txtarea.value += bbtags[butnumber + 1];
							buttext = eval('document.post.addbbcode' + butnumber + '.value');
							eval('document.post.addbbcode' + butnumber + '.value ="' + buttext.substr(0,(buttext.length - 1)) + '"');
							imageTag = false;
						}
						txtarea.focus();
						return;
				} else { // Open tags

					if (imageTag && (bbnumber != 14)) {		// Close image tag before adding another
						txtarea.value += bbtags[15];
						lastValue = arraypop(bbcode) - 1;	// Remove the close image tag from the list
						document.post.addbbcode14.value = "Img";	// Return button back to normal state
						imageTag = false;
					}

					// Open tag
					txtarea.value += bbtags[bbnumber];
					if ((bbnumber == 14) && (imageTag == false)) imageTag = 1; // Check to stop additional tags after an unclosed image tag
					arraypush(bbcode,bbnumber+1);
					eval('document.post.addbbcode'+bbnumber+'.value += "*"');
					txtarea.focus();
					return;
				}
				storeCaret(txtarea);
			}

			// From http://www.massless.org/mozedit/
			function mozWrap(txtarea, open, close)
			{
				var selLength = txtarea.textLength;
				var selStart = txtarea.selectionStart;
				var selEnd = txtarea.selectionEnd;
				if (selEnd == 1 || selEnd == 2)
					selEnd = selLength;

				var s1 = (txtarea.value).substring(0,selStart);
				var s2 = (txtarea.value).substring(selStart, selEnd)
				var s3 = (txtarea.value).substring(selEnd, selLength);
				txtarea.value = s1 + open + s2 + close + s3;
				return;
			}

			// Insert at Claret position. Code from
			// http://www.faqts.com/knowledge_base/view.phtml/aid/1052/fid/130
			function storeCaret(textEl) {
				if (textEl.createTextRange) textEl.caretPos = document.selection.createRange().duplicate();
			}

			//-->
			</script>
			<!-- BEGIN privmsg_extensions -->
			<div id="iconlegend">
				<ul>
					<li>{INBOX_IMG}{INBOX_LINK}</li>
					<li>{SENTBOX_IMG}{SENTBOX_LINK}</li>
					<li>{OUTBOX_IMG}{OUTBOX_LINK}</li>
					<li>{SAVEBOX_IMG}{SAVEBOX_LINK}</li>
				</ul>
			</div>
			<hr/>
			<!-- END privmsg_extensions -->
			
			
			{POST_PREVIEW_BOX}
			{ERROR_BOX}
			
			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a>
			<!-- BEGIN switch_not_privmsg --> 
			|| <a href="{U_VIEW_FORUM}" title="{FORUM_NAME}">{FORUM_NAME}</a>
			<!-- END switch_not_privmsg -->
			</h3>
			
			<div class="highlights">
				<h4>{L_POST_A}</h4>
				<!--TODO: remove name attribute and make javascript work-->
				<form action="{S_POST_ACTION}" method="post" id="post" name="post" onsubmit="return checkForm(this)">
				<div>
					<fieldset>
						<!-- BEGIN switch_username_select -->
						<label for="txtUserNameR1">{L_USERNAME}</label>
						<input type="text" class="boxes" tabindex="1" id="txtUserNameR1" name="username" size="25" maxlength="25" value="{USERNAME}" title="{L_USERNAME}" /><br/>
						<!-- END switch_username_select -->
						<!-- BEGIN switch_privmsg -->
						<label for="txtUserNameR2">{L_USERNAME}</label>
						<input type="text"  class="boxes" id="txtUserNameR2" name="username" maxlength="25" size="25" tabindex="1" value="{USERNAME}" title="{L_USERNAME}" />
						<input type="submit" name="usersubmit" value="{L_FIND_USERNAME}" class="button" onclick="window.open('{U_SEARCH_USER}', '_phpbbsearch', 'HEIGHT=250,resizable=yes,WIDTH=400');return false;" title="{L_FIND_USERNAME}" /><br/>
						<!-- END switch_privmsg -->
						<label for="txtSubject">{L_SUBJECT}</label>
						<input type="text" id="txtSubject" name="subject" size="45" maxlength="60" tabindex="2" class="boxes" value="{SUBJECT}" title="{L_SUBJECT}" /><br/><br/>
						<label for="tbxMessageBody">{L_MESSAGE_BODY}</label>
						<textarea id="tbxMessageBody" name="message" rows="15" cols="50" tabindex="3" class="boxes" onselect="storeCaret(this);" onclick="storeCaret(this);" onkeyup="storeCaret(this);" title="{L_MESSAGE_BODY}">{MESSAGE}</textarea>
						<h5>B B Code</h5>
						<ul class="inlinelist">
							<li><input type="button" class="button" accesskey="b" name="addbbcode0" value="Strong" onclick="bbstyle(0)" title="{L_BBCODE_B_HELP}" /></li>
							<li><input type="button" class="button" accesskey="i" name="addbbcode2" value="Emphasis" onclick="bbstyle(2)" title="{L_BBCODE_I_HELP}" /></li>
							<li><input type="button" class="button" accesskey="q" name="addbbcode6" value="Quote" onclick="bbstyle(6)" title="{L_BBCODE_Q_HELP}" /></li>
							<li><input type="button" class="button" accesskey="c" name="addbbcode8" value="Code" onclick="bbstyle(8)" title="{L_BBCODE_C_HELP}" /></li>
							<li><input type="button" class="button" accesskey="l" name="addbbcode10" value="List" onclick="bbstyle(10)" title="{L_BBCODE_L_HELP}" /></li>
							<li><input type="button" class="button" accesskey="o" name="addbbcode12" value="List=" onclick="bbstyle(12)" title="{L_BBCODE_O_HELP}" /></li>
							<li><input type="button" class="button" accesskey="p" name="addbbcode14" value="Img" onclick="bbstyle(14)" title="{L_BBCODE_P_HELP}" /></li>
							<li><input type="button" class="button" accesskey="w" name="addbbcode16" value="URL" onclick="bbstyle(16)" title="{L_BBCODE_W_HELP}" /></li>
						</ul>
						<br/>
						<p><a href="javascript:bbstyle(-1)" title="{L_BBCODE_A_HELP}">{L_BBCODE_CLOSE_TAGS}</a></p>
								
						<h5>{L_EMOTICONS}</h5>
						<!-- BEGIN smilies_row -->
						<!-- BEGIN smilies_col -->
						<a href="javascript:void(0);" onclick="javascript:emoticon('{smilies_row.smilies_col.SMILEY_CODE}')" title="{smilies_row.smilies_col.SMILEY_DESC}"><img src="{smilies_row.smilies_col.SMILEY_IMG}" alt="{smilies_row.smilies_col.SMILEY_DESC}" title="{smilies_row.smilies_col.SMILEY_DESC}" /></a>&nbsp;
						<!-- END smilies_row -->
						<!-- END smilies_col -->
						<br/>
						<p><a href="{U_MORE_SMILIES}" onclick="window.open('{U_MORE_SMILIES}', '_phpbbsmilies', 'HEIGHT=300,resizable=yes,scrollbars=yes,WIDTH=250');return false;" title="{L_MORE_SMILIES}">{L_MORE_SMILIES}</a></p>
								
						<h5>{L_OPTIONS}</h5>
						<ul>
							<li>{HTML_STATUS}</li>
							<li>{BBCODE_STATUS}</li>
							<li>{SMILIES_STATUS}</li>
						</ul>
						<br/>
						 <!-- BEGIN switch_html_checkbox -->
						<input type="checkbox" id="chkDisableHtml" name="disable_html" title="{L_DISABLE_HTML}" {S_HTML_CHECKED} />
						<label for="chkDisableHtml" class="inlinelabel">{L_DISABLE_HTML}</label><br/>
						<!-- END switch_html_checkbox -->
						<!-- BEGIN switch_bbcode_checkbox -->
						<input type="checkbox" id="chkDisableBbcode" name="disable_bbcode" title="{L_DISABLE_BBCODE}" {S_BBCODE_CHECKED} />
						<label for="chkDisableBbcode" class="inlinelabel">{L_DISABLE_BBCODE}</label><br/>
						<!-- END switch_bbcode_checkbox -->
						<!-- BEGIN switch_smilies_checkbox -->
						<input type="checkbox" id="chkDisableSmiles" name="disable_smilies" title="{L_DISABLE_SMILIES}" {S_SMILIES_CHECKED} />
						<label for="chkDisableSmiles" class="inlinelabel">{L_DISABLE_SMILIES}</label><br/>
						<!-- END switch_smilies_checkbox -->
						<!-- BEGIN switch_signature_checkbox -->
						<input type="checkbox" id="chkAttachSig" name="attach_sig" title="{L_ATTACH_SIGNATURE}" {S_SIGNATURE_CHECKED} />
						<label for="chkAttachSig" class="inlinelabel">{L_ATTACH_SIGNATURE}</label><br/>
						<!-- END switch_signature_checkbox -->
						<!-- BEGIN switch_notify_checkbox -->
						<input type="checkbox" id="chkNotify" name="notify" title="{L_NOTIFY_ON_REPLY}" {S_NOTIFY_CHECKED} />
						<label for="chkNotify" class="inlinelabel">{L_NOTIFY_ON_REPLY}</label><br/>
						<!-- END switch_notify_checkbox -->
						<!-- BEGIN switch_delete_checkbox -->
						<input type="checkbox" id="chkDeletePost" name="delete" title="{L_DELETE_POST}" />
						<label for="chkDeletePost" class="inlinelabel">{L_DELETE_POST}</label><br/>
						<!-- END switch_delete_checkbox -->
						<!-- BEGIN switch_type_toggle -->
						<p>{S_TYPE_TOGGLE}</p>
						<!-- END switch_type_toggle -->
					</fieldset>
						{POLLBOX} 
						{S_HIDDEN_FORM_FIELDS}
						<input type="submit" tabindex="5" name="preview" class="button" value="{L_PREVIEW}" title="{L_PREVIEW}" />
						<input type="submit" accesskey="s" tabindex="6" name="post" class="button" value="{L_SUBMIT}" title="{L_SUBMIT}" />					
					</fieldset>						
				</div>
				</form>
			</div>
			<hr/>
			<div>{JUMPBOX}</div>
			{TOPIC_REVIEW_BOX}