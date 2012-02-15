			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
						
			<div class="highlights">
				<a id="backtotop"></a>
				<h4>phpBB Web and Accessibility Standards Overhaul (phpBB WASO) Version 2.0.06</h4>
				<p>The overall goal of these mod and style changes are to improve the existing <acronym title="P H P HyperText Preprocessor Bulletin Board">phpBB</acronym> by;</p>
				<ul>
					<li>Attempting to meet the <acronym title="World Wide Web Consortium">W3C</acronym> <a href="http://www.w3.org/WAI/WCAG1A-Conformance" title="W3C: This site strives to conform to at least Web Accessibility Initiatives - Level A.">Web Content Accessibility Guidelines - Level A</a></li>
					<li>Striving to validate all forum pages as <a href="http://www.w3.org/TR/xhtml1/" title="W3C: XHTML 1.0 Strict specification">XHTML 1.0 Strict</a></li>
					<li>Separating structure/semantics from presentation using <a href="http://www.w3.org/Style/CSS/" title="W3C: Cascading Style Sheets Home Page">CSS</a> for layout</li> 
				</ul>
			</div>
			<hr/>
			
			<div class="highlights">
				<h4>Acknowledgements</h4>
				<p>First off, it's important to thank those who have assisted. Here's some of the people who helped to make this possible;</p>
				<ul>
					<li><a href="http://brushedwithmagic.com" title="Brushed With Magic - Functional Art for the Goddess Within.">My wife</a> and son for being patient.</li>
					<li><a href="http://accessifyforums.com" title="One of the best sources for all things related to Accessibility Standards.">The Accessify Forums</a> for leading me to the road to enlightenment.</li>
					<li><a href="http://autisticcuckoo.net" title="Listen to what this man has to say.">Tommy Olsson</a> for helping out in the very beginning with Accessibility standards, <acronym title="P H P Hypertext Preprocessor">PHP</acronym>, and honest feedback.</li>
					<li><a href="http://blog.fawny.org/" title="A man who writes like no one else.">Joe Clark</a> for your book on <em>Building Accessible Websites</em> and your unique writing style that constantly keeps my nose in the dictionary.</li>
					<li>rebelia e horus dalle tribune di <a href="http://forum.zeusnews.com/index.php" title="Molto utile. Grazie!">Olimpo Informatico</a>.</li>
				</ul>
				<p><a title="Back to Top" class="sublink" href="#backtotop">{L_BACK_TO_TOP}</a></p>
			</div>
			<hr/>
			
			<div class="highlights">
				<h4>Accessibility Statement</h4>
				<h5>Access Keys</h5>
				<p>There are the following accesskeys in use for this forum;</p>
				<ul>
					<li>Access key of 0 will allow you to skip to the content on each applicable page.</li>
					<li>Access key of 1 will take you back to the forum's index page.</li>
					<li>Access key of 2 will take you to the forum's Search page.</li>
					<li>Access key of 3 will take you to the forum's About page.</li>
					<li>Access key of 4 will take you to the forum's Register page to create a forum account.</li>
					<li>Access key of 5 will log you in to the forum.</li>
					<li>Access key of 6 will log you in to check your private messages.</li>
				</ul>
				<p>For the Windows platform, you can use the 'alt' key with the accesskey of your choice. For the Macintosh, you can use the 'control' key with the accesskey of your choice.</p>
				
				<h5>Standards</h5>
				<ul>
					<li>All documents strive to validate as XHTML 1.0 Strict. (<em>Note</em>: Some documents rely in some heavy use of Javascript and the call to the form attribute of 'name'. With XHTML 1.0 Strict, this attribute will make the document not valid. However, for the interest of keeping the existing functionality, this attribute will remain until more work can be done to improve the Javascript. As well, there are issues with messages being posted by users that can cause erroneous placement of tags which will also cause a document to be not valid. Again, this is being looked at for improving for Standards compliance.)</li>
					<li>All documents strive to meet the requirements of the <a href="http://www.w3.org/WAI/WCAG1A-Conformance" title="W3C: This site strives to conform to at least Web Accessibility Initiatives - Level A.">W3C Web Content Accessibility Guidelines - Level A</a></li>
					<li>All documents strive to meet the requirements of <a href="http://www.access-board.gov/sec508/guide/1194.22.htm" title="Read more about Section 508">Section 508</a></li>
					<li>All CSS files have been validated using the <a href="http://jigsaw.w3.org/css-validator/" title="W3C: Cascading Style Sheet Validation Tool">W3C CSS validation tool</a>.</li>
				</ul>				
				
				<h5>Semantics</h5>
				<p>Every document is built with the same semantic structure in mind;</p>
				<ul>
					<li>Heading 1 is for the main title of the forum.</li>
					<li>Heading 2 is for the forum slogan.</li>
					<li>Heading 3 is for the top navigation to each forum and topic as well as the forum footer.</li>
					<li>Heading 4 is for the main title for each content area.</li>
					<li>Heading 5 is for each subtitle in each content area.</li>
					<li>Definition list for the list of forum categories and topics.</li>
					<li>Unordered lists for associated items.</li>
				</ul>
				
				<h5>Screen Readers</h5>
				<p>There were three screen readers used for testing of the phpBB <acronym title="Web and Accessibility Standards Overhaul">WASO</acronym>;</p>
				<ul>
					<li><acronym title="Job Access With Speech">JAWS</acronym> 7.0 for Windows</li>
					<li>Windows Eyes 5.0 for Windows</li>
					<li>HAL 6.50 for Windows</li>
				</ul>
				<p>Here's a summary of the changes that resulted from this testing;</p>
				<ul>
					<li>Making the text that indicated to the user the status of a particular forum and topic, such as 'New Posts' or 'Announcements' understandable when read out in context to the forum and topic name.</li>
					<li>Adding acronyms elements to certain text.</li>
					<li>Changing the date format from a short month name to a long month name. Such as 'October' instead of 'Oct'.</li>
					<li>Adding title attributes to lists that are meant for visual legends. Such as the small and large icon legends.</li>
					<li>Changes to the language files for better screen reader results</li>
				</ul>			
			</div>
			<hr/>
			
			<div class="highlights">
				<h4>Minimum Requirements</h4>
				<p>Here is a list of what you will need to use phpBB <acronym title="Web and Accessibility Standards Overhaul">WASO</acronym>;</p>
				<ul>
					<li>A host that provides <acronym title="P H P HyperText Preprocessor">PHP</acronym> support</li>
					<li><a href="http://phpbb.com" title="Visit the home of the phpBB Forum framework">phpBB</a> (2.0.21 release is mandatory</em>)</li>
					<li>MySQL, MS-SQL, PostgreSQL or Access/ODB</li>
					<li>A very good understanding of XHTML with <acronym title="Cascading Style Sheets">CSS</acronym> for design</li>
				</ul>
				<hr class="thindivide" />
				
				<h5>Browsers and Operating Systems</h5>
				
				<p>For a great experience, I recommend at least;</p>
				<ul>
					<li>Internet Explorer 5.x for Windows</li>
					<li>Mozilla 1.6 for Windows</li>
					<li>Firefox 1.x for Windows</li>
					<li>Safari 1.2 for Macintosh</li>
					<li>Opera 7.5x for Windows</li>
					<li>Netscape 7.x for Windows, Macintosh and Linux</li>
					<li>AOL 9.0 for Windows</li>
				</ul>
				
				<p>For an average, but still functional experience, you could use;</p>
				<ul>
					<li>Konquerer 3.x for Linux</li>
				</ul>
				
				<p>And I wouldn't recommend;</p>
				<ul>
					<li>IE 5.x for Macintosh</li>
					<li>Netscape 4.x and 6.x for Windows, Macintosh and Linux</li>
				</ul>
				<p><a title="Back to Top" class="sublink" href="#backtotop">{L_BACK_TO_TOP}</a></p>
			</div>
			<hr/>
				
			<div class="highlights">	
				<h4>Installation Notes:</h4>
				<p><em>REMEMBER TO BACK UP YOUR FILES BEFORE APPLYING THIS MOD AS MANY FILES WILL BE OVERWRITTEN!!!</em></p>
				
				<h5>Installation using EasyMOD v0.3.0</h5>
				<p>To install;</p>
				<ul>
					<li>Unzip the file 'phpbb-waso-2006-mod.zip' into your '/admin/mods/' directory</li>
					<li>Log in with your administration name and password to access your Administration panel</li>
					<li>In the admin panel, navigate to 'MOD center', then 'Install MODs'</li>
					<li>Enter your EasyMOD Password, then 'Access EasyMOD'</li>
					<li>You should see in your list of 'Unprocessed MODs', you should see a listing for 'phpBB WASO'. Inline with this listing, select 'Process'</li>
					<li>You will see <em>'Step 1 of 3 - Processing completed successfully!'</em>. If so, then select 'Next Step'</li>
					<li>You will then see <em>'Step 2 of 3 - Proposed Database Alterations'</em>. For this MOD, this is not applicable. Therefore, select 'Complete Installation'</li>
					<li>You will then see <em>'Step 3 of 3 - Installation Complete!'</em>. Feel free to see the list of changes to the applicable files</li>
					<li>In the admin panel, navigate to 'Style Admin', then 'Add'</li>
					<li>You should see 'crazybat' as one of the themes available. If so, select 'install'. If successful, you should see <em>'The selected theme has been installed successfully'</em></li>
					<li>Navigate to 'General Admin', then 'Configuration'</li>
					<li>Next to 'Default Style', choose 'crazybat' as the style</li>
					<li>Next to 'Override user style - Replaces users style with the default', choose 'Yes'</li>
					<li>Hit 'Submit'</li>
					<li>Navigate to 'Administration' and go to 'Forum Index'. Your phpBB <acronym title="Web and Accessibility Standards Overhaul">WASO</acronym> MOD should now be visible</li>
				</ul>
				
				<h5>Manual preMOD Installation</h5>
				<p>To install;</p>
				<ul>
					<li>Unzip the file 'phpbb-waso-2006-premod.zip' into your forum directory. (ie: http://yoursite.com/forums/)</li>
					<li>You will be warned that files of the same name will be overwritten. Select 'Yes' to overwrite the necessary files</li>
					<li>Navigate to your forums with your browser of choice</li>
					<li>Log in with your administration name and password to access your Administration panel</li>
					<li>In the admin panel, navigate to 'Style Admin', then 'Add'</li>
					<li>You should see 'crazybat' as one of the themes available. If so, select 'install'. If successful, you should see <em>'The selected theme has been installed successfully'</em></li>
					<li>Navigate to 'General Admin', then 'Configuration'</li>
					<li>Next to 'Default Style', choose 'crazybat' as the style</li>
					<li>Next to 'Override user style - Replaces users style with the default', choose 'Yes'</li>
					<li>Hit 'Submit'</li>
					<li>Navigate to 'Administration' and go to 'Forum Index'. Your phpBB <acronym title="Web and Accessibility Standards Overhaul">WASO</acronym> MOD should now be visible</li>				
				</ul>
				<p><em>Again, please take the appropriate caution when using these files. I have taken great care to assure quality assurance, but please remember to back up your files before installing this MOD.</em></p>
				<p><a title="Back to Top" class="sublink" href="#backtotop">{L_BACK_TO_TOP}</a></p>
			</div>
			<hr/>
				
			<div class="highlights">	
				<h4>Revision History</h4>
				<p><em>Note:</em> As this page was getting too big, <a href="/forums/phpbb-waso-release-notes.txt" title="View the latest release notes in a text based format">I have moved the release notes to a text file</a>.</p>
			</div>
			<hr/>
			
			<div class="highlights">
				<h4>Known Issues</h4>
								
				<h5>Browser issues</h5>
				<h5>Internet Explorer 5.x and above</h5>
				<ul>
					<li>Images flicker when you mouseover the toolbar items.</li>
					<li>Minor inconsistencies with margin and padding values.</li>
				</ul>
				
				<h5>Opera 7.x and above</h5>
				<ul>
					<li>Base font size in the Style Sheet is set to 90%. Opera renders the text out at 90% of the size that IE and Firefox/Mozilla do.</li>
				</ul>
				<hr class="thindivide" />
				
				<h5>Forum issues</h5>
				<ul>
					<li>Certain pages might fail validation. The markup inserted, when using BB code, can leave unclosed elements. Usually with the message body of the posts and private messages.</li>
				</ul>
				<hr class="thindivide" />
				
				<h5>Individual template issues</h5>
				<h5>about_body.tpl</h5>
				<ul>
					<li>Template is currently in English only. <em>If anyone would like to volunteer to translate the page, I'd welcome any assistance.</em></li>
				</ul>
				<h5>posting_body.tpl</h5>
				<ul>
					<li>Template doesn't validate as the form element is using the name attribute 'post'. This would be due to the extensive Javascript that is powering this page and the use of 'document.post.xxx'. <em>If there are any Javascript experts out there, I'd welcome any suggestions with making this page work with the form id attribute 'post' and the use of 'document.getElementById('post').xxx'.</em></li>
				</ul>
				
				<h5>posting_topic_review.tpl</h5>
				<ul>
					<li>'postrow.U_POST_ID' doesn't generate any value, which will cause this page to not validate as there can be multiple instances of the same id attribute. This exists on the existing phpBB 2.0.17.</li>
				</ul>
				<p><a title="Back to Top" class="sublink" href="#backtotop">{L_BACK_TO_TOP}</a></p>
			</div>
			<hr/>