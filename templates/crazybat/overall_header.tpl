<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en" dir="{S_CONTENT_DIRECTION}">
<head>
	<title>{SITENAME} - {PAGE_TITLE}</title>
	
	<link rel="shortcut icon" href="/gfx/favicon.ico" type="image/x-icon" />
	
	<link rel="stylesheet" type="text/css" media="screen" href="templates/crazybat/css/{T_HEAD_STYLESHEET}" title="default" />
	<link rel="alternate stylesheet" type="text/css" media="screen" href="templates/crazybat/css/screen-contrast.css" title="contrast" />
	<link rel="alternate stylesheet" type="text/css" media="screen" href="templates/crazybat/css/screen-structure.css" title="structure" />
	<link rel="alternate stylesheet" type="text/css" media="screen" href="templates/crazybat/css/screen-zoom.css" title="zoom" />
	<link rel="alternate stylesheet" type="text/css" media="screen" href="templates/crazybat/css/screen-fullwidth.css" title="fullwidth" />
	<link rel="alternate stylesheet" type="text/css" media="screen" href="templates/crazybat/css/screen-subsilver-waso.css" title="subsilver-waso" />
	<link rel="alternate stylesheet" type="text/css" media="screen" href="templates/crazybat/css/screen-nostyle.css" title="nostyle" />
	
	<link rel="stylesheet" type="text/css" media="print" href="templates/crazybat/css/print-default.css" title="default" />
	<link rel="stylesheet" type="text/css" media="print" href="templates/crazybat/css/print-contrast.css" title="contrast" />
	<link rel="stylesheet" type="text/css" media="print" href="templates/crazybat/css/print-structure.css" title="structure" />
	<link rel="stylesheet" type="text/css" media="print" href="templates/crazybat/css/print-zoom.css" title="zoom" />
	<link rel="stylesheet" type="text/css" media="print" href="templates/crazybat/css/print-fullwidth.css" title="fullwidth" />
	<link rel="stylesheet" type="text/css" media="print" href="templates/crazybat/css/print-subsilver-waso.css" title="subsilver-waso" />
	<link rel="stylesheet" type="text/css" media="print" href="templates/crazybat/css/print-nostyle.css" title="nostyle" />
	
	<link rel="index" title="Go to the homepage" href="/" />
	<link rel="author" title="More information about this project, accessibility statement, release notes, and acknowledgements" href="/about.php" />
	
	<meta http-equiv="Content-Type" content="text/html; charset={S_CONTENT_ENCODING}"  />
	<meta http-equiv="Content-Language" content="en" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="expires" content="-1" />
	<meta name="author" content="Crazy Bat Designs. http://crazybat.ca" />
	<meta name="MSSmartTagsPreventParsing" content="true" />
	<meta name="description" content="Crazy Bat Designs are Web Standards Consultants who specialize in having your web content reach the most people possible." />
	<meta name="keywords" content="crazybat.ca,crazybat,crazy,bat,xhtml,css,section,508,interoperability,accessibility,visually,hearing,impaired,W3C,WCAG,WAI,standards,canada,vancouver,white,rock,british,columbia,web,art,design,development,applications,user,interface,UI,WASO" />
	
	<script type="text/javascript" src="templates/crazybat/js/scripts.js"></script>
	
	<script type="text/javascript">
	<!--
	if ( {PRIVATE_MESSAGE_NEW_FLAG} )
	{
		window.open('{U_PRIVATEMSGS_POPUP}', '_phpbbprivmsg', 'HEIGHT=225,resizable=yes,WIDTH=400');;
	}
	//-->
	</script>
</head>

<body>
	<div id="container">
		<div id="content">
			<div id="banner">
				<h1><a href="{U_INDEX}" title="Go to the homepage" accesskey="1">{SITENAME}</a></h1>
				<h2>{SITE_DESCRIPTION}</h2>
			</div>
			<a href="#startcontent" title="{SKIP_TO_CONTENT}" class="skip" accesskey="0">{L_SKIP_TO_CONTENT}</a>			
			<div id="toolbar">
				<ul>
					<li id="faq"><a href="{U_FAQ}" title="{L_FAQ}"><span class="offleft">{L_FAQ}</span></a></li>
					<li id="search"><a href="{U_SEARCH}" title="{L_SEARCH}" accesskey="2"><span class="offleft">{L_SEARCH}</span></a></li>
					<li id="memberlist"><a href="{U_MEMBERLIST}" title="{L_MEMBERLIST}"><span class="offleft">{L_MEMBERLIST}</span></a></li>
					<li id="usergroups"><a href="{U_GROUP_CP}" title="{L_USERGROUPS}"><span class="offleft">{L_USERGROUPS}</span></a></li>
					<!-- BEGIN switch_user_logged_out -->
					<li id="register"><a href="{U_REGISTER}" title="{L_REGISTER}" accesskey="4"><span class="offleft">{L_REGISTER}</span></a></li>
					<!-- END switch_user_logged_out -->
					<li id="profile"><a href="{U_PROFILE}" title="{L_PROFILE}"><span class="offleft">{L_PROFILE}</span></a></li>
					<li id="loginpm"><a href="{U_PRIVATEMSGS}" title="{PRIVATE_MESSAGE_INFO}" accesskey="6"><span class="offleft">{PRIVATE_MESSAGE_INFO}</span></a></li>
					<li id="loginlogout"><a href="{U_LOGIN_LOGOUT}" title="{L_LOGIN_LOGOUT}" accesskey="5"><span class="offleft">{L_LOGIN_LOGOUT}</span></a></li>
				</ul>
			</div>
			<div id="styleswitcher">
				<ul>
					<li id="ss-default"><a href="#" title="Default Style Sheet" onclick="setActiveStyleSheet('default'); return false;" onkeypress="setActiveStyleSheet('default'); return false;"><span class="offleft">{L_WASO_DEFAULT_STYLESHEET}</span></a></li>
					<li id="ss-contrast"><a href="#" title="High Contrast Style Sheet" onclick="setActiveStyleSheet('contrast'); return false;" onkeypress="setActiveStyleSheet('contrast'); return false;"><span class="offleft">{L_WASO_HIGH_CONTRAST_STYLE_SHEET}</span></a></li>
					<li id="ss-structure"><a href="#" title="Document Structure Style Sheet" onclick="setActiveStyleSheet('structure'); return false;" onkeypress="setActiveStyleSheet('structure'); return false"><span class="offleft">{L_WASO_DOCUMENT_STRUCTURE_STYLE_SHEET}</span></a></li>
					<li id="ss-zoom"><a href="#" title="Larger Text Style Sheet" onclick="setActiveStyleSheet('zoom'); return false;" onkeypress="setActiveStyleSheet('zoom'); return false"><span class="offleft">{L_WASO_LARGER_TEXT_STYLE_SHEET}</span></a></li>
					<li id="ss-fullwidth"><a href="#" title="Full Screen Width Style Sheet" onclick="setActiveStyleSheet('fullwidth'); return false;" onkeypress="setActiveStyleSheet('fullwidth'); return false;"><span class="offleft">{L_WASO_FULL_SCREEN_WIDTH_STYLE_SHEET}</span></a></li>
					<li id="ss-subsilver-waso"><a href="#" title="SubSilver WASO Style Sheet" onclick="setActiveStyleSheet('subsilver-waso'); return false;" onkeypress="setActiveStyleSheet('subsilver-waso'); return false;"><span class="offleft">{L_WASO_SUBSILVER_WASO_STYLE_SHEET}</span></a></li>
					<li id="ss-nostyle"><a href="#" title="No Style Sheet" onclick="setActiveStyleSheet('nostyle'); return false;" onkeypress="setActiveStyleSheet('nostyle'); return false;"><span class="offleft">{L_WASO_NO_STYLE_SHEET}</span></a></li>
				</ul>
			</div>
			<div id="content-container">
				<a id="startcontent" tabindex="-1"></a>