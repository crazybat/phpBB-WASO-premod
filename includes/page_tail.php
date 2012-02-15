<?php
/***************************************************************************
 *                              page_tail.php
 *                            -------------------
 *   begin                : Saturday, Feb 13, 2001
 *   copyright            : (C) 2001 The phpBB Group
 *   email                : support@phpbb.com
 *
 *   $Id: page_tail.php,v 1.27.2.3 2004/12/22 02:04:00 psotfx Exp $
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
// 8 September 2005 
// - Removed two <br/> elements after the admin link
// - Added title and class attribute to anchor
// 30 October 2005
// - Incorporated phpBB 2.0.18 fixes
// 19 December 2005
// - Added $lang variables to account for Internationalization

if ( !defined('IN_PHPBB') )
{
	die('Hacking attempt');
}

global $do_gzip_compress;
//
// Show the overall footer.
//
$admin_link = ( $userdata['user_level'] == ADMIN ) ? '<li><a href="admin/index.' . $phpEx . '?sid=' . $userdata['session_id'] . '" title="' . $lang['Admin_panel'] . '" class="adminlink">' . $lang['Admin_panel'] . '</a></li>' : '';

$template->set_filenames(array(
	'overall_footer' => ( empty($gen_simple_header) ) ? 'overall_footer.tpl' : 'simple_footer.tpl')
);

$template->assign_vars(array(
	'TRANSLATION_INFO' => (isset($lang['TRANSLATION_INFO'])) ? $lang['TRANSLATION_INFO'] : ((isset($lang['TRANSLATION'])) ? $lang['TRANSLATION'] : ''),
	'ADMIN_LINK' => $admin_link,
	'L_PHPBB_WASO_CREATOR' => $lang['phpbb_waso_creator'],
	'L_PHPBB_WASO_ABOUT' => $lang['phpbb_waso_about'],
	'L_PHPBB_WASO_ABOUT_TITLE' => $lang['phpbb_waso_about_title'],
	'L_PHPBB_WASO_VALIDATOR' => $lang['phpbb_waso_validator'],
	'L_PHPBB_WASO_VALIDATOR_TITLE' => $lang['phpbb_waso_validator_title'],
	'L_PHPBB_WASO_CSS_VALIDATOR_TITLE' => $lang['phpbb_waso_css_validator_title'],
	'L_PHPBB_WASO_SECTION_508' => $lang['phpbb_waso_section_508'],
	'L_PHPBB_WASO_WAI_TITLE' => $lang['phpbb_waso_wai_title'])
);

$template->pparse('overall_footer');

//
// Close our DB connection.
//
$db->sql_close();

//
// Compress buffered output if required and send to browser
//
if ( $do_gzip_compress )
{
	//
	// Borrowed from php.net!
	//
	$gzip_contents = ob_get_contents();
	ob_end_clean();

	$gzip_size = strlen($gzip_contents);
	$gzip_crc = crc32($gzip_contents);

	$gzip_contents = gzcompress($gzip_contents, 9);
	$gzip_contents = substr($gzip_contents, 0, strlen($gzip_contents) - 4);

	echo "\x1f\x8b\x08\x00\x00\x00\x00\x00";
	echo $gzip_contents;
	echo pack('V', $gzip_crc);
	echo pack('V', $gzip_size);
}

exit;

?>