<?php
/***************************************************************************
 *                                  faq.php
 *                            -------------------
 *   begin                : Sunday, Jul 8, 2001
 *   copyright            : (C) 2001 The phpBB Group
 *   email                : support@phpbb.com
 *
 *   $Id: faq.php,v 1.14.2.2 2004/07/11 16:46:15 acydburn Exp $
 *
 *
 ***************************************************************************/

/***************************************************************************
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version.
 *
 ***************************************************************************/
 
 // Changes for phpBB WASO
// Marco Battilana 
// 10 September 2005 
// - Created as a place to store information about this project, install instructions, release notes, etc.

define('IN_PHPBB', true);
$phpbb_root_path = './';
include($phpbb_root_path . 'extension.inc');
include($phpbb_root_path . 'common.'.$phpEx);

//
// Start session management
//
$userdata = session_pagestart($user_ip, PAGE_ABOUT);
init_userprefs($userdata);
//
// End session management
// 

//
// Build the page
//
$page_title = $lang['About'];
      include($phpbb_root_path . 'includes/page_header.'.$phpEx);

$template->set_filenames(array(
         'body' => 'about_body.tpl')
      );

$template->assign_vars(array(
	'L_BACK_TO_TOP' => $lang['Back_to_top'])
);

$template->pparse('body');

include($phpbb_root_path . 'includes/page_tail.'.$phpEx);

?>