<?php
/***************************************************************************
 *                              memberlist.php
 *                            -------------------
 *   begin                : Friday, May 11, 2001
 *   copyright            : (C) 2001 The phpBB Group
 *   email                : support@phpbb.com
 *
 *   $Id: memberlist.php,v 1.36.2.10 2004/07/11 16:46:15 acydburn Exp $
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
// 25 March 2005 
// 	- Replaced images with anchors. Each anchor is classed as 'smallbutton' so the Style Sheet can dictate an image if you so desire.
// 28 March 2005
// 	- Added id attributes to select elements
// 28 August 2005
// - As per the fix from 6 June 2005, each anchor now has a unique class assigned to differentiate the buttons. (IE: profile, pm, email, etc.) as well as a span element within if you wish to modify the text inside the anchor with the Style Sheet
// 30 October 2005
// - Incorporated phpBB 2.0.18 fixes
// 19 December 2005
// - Added $lang variables to account for Internationalization
// 7 May 2006
// - Incorporate phpBB 2.0.20 fixes
// 18 June 2006
// - Added $lang variables to account for Internationalization
// 19 December 2007
// - Incorporate phpBB 2.0.22 fixes

define('IN_PHPBB', true);
$phpbb_root_path = './';
include($phpbb_root_path . 'extension.inc');
include($phpbb_root_path . 'common.'.$phpEx);

//
// Start session management
//
$userdata = session_pagestart($user_ip, PAGE_VIEWMEMBERS);
init_userprefs($userdata);
//
// End session management
//

$start = ( isset($HTTP_GET_VARS['start']) ) ? intval($HTTP_GET_VARS['start']) : 0;
$start = ($start < 0) ? 0 : $start;

if ( isset($HTTP_GET_VARS['mode']) || isset($HTTP_POST_VARS['mode']) )
{
	$mode = ( isset($HTTP_POST_VARS['mode']) ) ? htmlspecialchars($HTTP_POST_VARS['mode']) : htmlspecialchars($HTTP_GET_VARS['mode']);
}
else
{
	$mode = 'joined';
}

if(isset($HTTP_POST_VARS['order']))
{
	$sort_order = ($HTTP_POST_VARS['order'] == 'ASC') ? 'ASC' : 'DESC';
}
else if(isset($HTTP_GET_VARS['order']))
{
	$sort_order = ($HTTP_GET_VARS['order'] == 'ASC') ? 'ASC' : 'DESC';
}
else
{
	$sort_order = 'ASC';
}

//
// Memberlist sorting
//
$mode_types_text = array($lang['Sort_Joined'], $lang['Sort_Username'], $lang['Sort_Location'], $lang['Sort_Posts'], $lang['Sort_Email'],  $lang['Sort_Website'], $lang['Sort_Top_Ten']);
$mode_types = array('joined', 'username', 'location', 'posts', 'email', 'website', 'topten');

$select_sort_mode = '<select id="ddlsortmethod" name="mode">';
for($i = 0; $i < count($mode_types_text); $i++)
{
	$selected = ( $mode == $mode_types[$i] ) ? ' selected="selected"' : '';
	$select_sort_mode .= '<option value="' . $mode_types[$i] . '"' . $selected . '>' . $mode_types_text[$i] . '</option>';
}
$select_sort_mode .= '</select>';

$select_sort_order = '<select id="ddlorder" name="order">';
if($sort_order == 'ASC')
{
	$select_sort_order .= '<option value="ASC" selected="selected">' . $lang['Sort_Ascending'] . '</option><option value="DESC">' . $lang['Sort_Descending'] . '</option>';
}
else
{
	$select_sort_order .= '<option value="ASC">' . $lang['Sort_Ascending'] . '</option><option value="DESC" selected="selected">' . $lang['Sort_Descending'] . '</option>';
}
$select_sort_order .= '</select>';

//
// Generate page
//
$page_title = $lang['Memberlist'];
include($phpbb_root_path . 'includes/page_header.'.$phpEx);

$template->set_filenames(array(
	'body' => 'memberlist_body.tpl')
);
make_jumpbox('viewforum.'.$phpEx);

$template->assign_vars(array(
	'L_MEMBERLIST_TITLE' => $lang['Memberlist_Title'],
	'L_MEMBERLIST_CAPTION' => $lang['Memberlist_Caption'],
	'L_MEMBER_NUMBER' => $lang['Memberlist_Number'],
	'L_SELECT_SORT_METHOD' => $lang['Select_sort_method'],
	'L_EMAIL' => $lang['Email'],
	'L_WEBSITE' => $lang['Website'],
	'L_FROM' => $lang['Location'],
	'L_ORDER' => $lang['Order'],
	'L_SORT' => $lang['Sort'],
	'L_SUBMIT' => $lang['Sort'],
	'L_AIM' => $lang['AIM'],
	'L_YIM' => $lang['YIM'],
	'L_MSNM' => $lang['MSNM'],
	'L_ICQ' => $lang['ICQ'], 
	'L_JOINED' => $lang['Joined'], 
	'L_POSTS' => $lang['Posts'], 
	'L_PM' => $lang['Private_Message'], 

	'S_MODE_SELECT' => $select_sort_mode,
	'S_ORDER_SELECT' => $select_sort_order,
	'S_MODE_ACTION' => append_sid("memberlist.$phpEx"))
);

switch( $mode )
{
	case 'joined':
		$order_by = "user_regdate $sort_order LIMIT $start, " . $board_config['topics_per_page'];
		break;
	case 'username':
		$order_by = "username $sort_order LIMIT $start, " . $board_config['topics_per_page'];
		break;
	case 'location':
		$order_by = "user_from $sort_order LIMIT $start, " . $board_config['topics_per_page'];
		break;
	case 'posts':
		$order_by = "user_posts $sort_order LIMIT $start, " . $board_config['topics_per_page'];
		break;
	case 'email':
		$order_by = "user_email $sort_order LIMIT $start, " . $board_config['topics_per_page'];
		break;
	case 'website':
		$order_by = "user_website $sort_order LIMIT $start, " . $board_config['topics_per_page'];
		break;
	case 'topten':
		$order_by = "user_posts $sort_order LIMIT 10";
		break;
	default:
		$order_by = "user_regdate $sort_order LIMIT $start, " . $board_config['topics_per_page'];
		break;
}

$sql = "SELECT username, user_id, user_viewemail, user_posts, user_regdate, user_from, user_website, user_email, user_icq, user_aim, user_yim, user_msnm, user_avatar, user_avatar_type, user_allowavatar 
	FROM " . USERS_TABLE . "
	WHERE user_id <> " . ANONYMOUS . "
	ORDER BY $order_by";
if( !($result = $db->sql_query($sql)) )
{
	message_die(GENERAL_ERROR, 'Could not query users', '', __LINE__, __FILE__, $sql);
}

if ( $row = $db->sql_fetchrow($result) )
{
	$i = 0;
	do
	{
		$username = $row['username'];
		$user_id = $row['user_id'];

		$from = ( !empty($row['user_from']) ) ? $row['user_from'] : '&nbsp;';
		$joined = create_date($lang['DATE_FORMAT'], $row['user_regdate'], $board_config['board_timezone']);
		$posts = ( $row['user_posts'] ) ? $row['user_posts'] : 0;

		$poster_avatar = '';
		if ( $row['user_avatar_type'] && $user_id != ANONYMOUS && $row['user_allowavatar'] )
		{
			switch( $row['user_avatar_type'] )
			{
				case USER_AVATAR_UPLOAD:
					$poster_avatar = ( $board_config['allow_avatar_upload'] ) ? '<img src="' . $board_config['avatar_path'] . '/' . $row['user_avatar'] . '" alt="" />' : '';
					break;
				case USER_AVATAR_REMOTE:
					$poster_avatar = ( $board_config['allow_avatar_remote'] ) ? '<img src="' . $row['user_avatar'] . '" alt="" />' : '';
					break;
				case USER_AVATAR_GALLERY:
					$poster_avatar = ( $board_config['allow_avatar_local'] ) ? '<img src="' . $board_config['avatar_gallery_path'] . '/' . $row['user_avatar'] . '" alt="" />' : '';
					break;
			}
		}

		if ( !empty($row['user_viewemail']) || $userdata['user_level'] == ADMIN )
		{
			$email_uri = ( $board_config['board_email_form'] ) ? append_sid("profile.$phpEx?mode=email&amp;" . POST_USERS_URL .'=' . $user_id) : 'mailto:' . $row['user_email'];

			$email_img = '<a href="' . $email_uri . '" title="' . $lang['Send_email'] . '" class="smallbutton-email"><span class="offleft">' . $lang['Send_email'] . '</span></a>';
			$email = '<a href="' . $email_uri . '" title="' . $lang['Send_email'] . '" class="smallbutton-email"><span class="offleft">' . $lang['Send_email'] . '</span></a>';
		}
		else
		{
			$email_img = '&nbsp;';
			$email = '&nbsp;';
		}

		$temp_url = append_sid("profile.$phpEx?mode=viewprofile&amp;" . POST_USERS_URL . "=$user_id");
		$profile_img = '<a href="' . $temp_url . '" title="' . $lang['Read_profile'] . '" class="smallbutton-profile"><span class="offleft">' . $lang['Read_profile'] . '</span></a>';
		$profile = '<a href="' . $temp_url . '" title="' . $lang['Read_profile'] . '" class="smallbutton-profile"><span class="offleft">' . $lang['Read_profile'] . '</span></a>';

		$temp_url = append_sid("privmsg.$phpEx?mode=post&amp;" . POST_USERS_URL . "=$user_id");
		$pm_img = '<a href="' . $temp_url . '" title="' . $lang['Send_private_message'] . '" class="smallbutton-pm"><span class="offleft">' . $lang['Send_private_message'] . '</span></a>';
		$pm = '<a href="' . $temp_url . '" title="' . $lang['Send_private_message'] . '" class="smallbutton-pm"><span class="offleft">' . $lang['Send_private_message'] . '</span></a>';

		$www_img = ( $row['user_website'] ) ? '<a href="' . $row['user_website'] . '" title="' . $lang['Visit_website'] . '" class="smallbutton-www"><span class="offleft">' . $lang['Visit_website'] . '</span></a>' : '';
		$www = ( $row['user_website'] ) ? '<a href="' . $row['user_website'] . '" title="' . $lang['Visit_website'] . '" class="smallbutton-www"><span class="offleft">' . $lang['Visit_website'] . '</span></a>' : '';

		if ( !empty($row['user_icq']) )
		{
			$icq_status_img = '<a href="http://wwp.icq.com/' . $row['user_icq'] . '#pager"><img src="http://web.icq.com/whitepages/online?icq=' . $row['user_icq'] . '&img=5" width="18" height="18" /></a>';
			$icq_img = '<a href="http://wwp.icq.com/scripts/search.dll?to=' . $row['user_icq'] . '" title="' . $lang['ICQ'] . '" class="smallbutton-icq"><span class="offleft">' . $lang['ICQ'] . '</span></a>';
			$icq =  '<a href="http://wwp.icq.com/scripts/search.dll?to=' . $row['user_icq'] . '" title="' . $lang['ICQ'] . '" class="smallbutton-icq"><span class="offleft">' . $lang['ICQ'] . '</span></a>';
		}
		else
		{
			$icq_status_img = '';
			$icq_img = '';
			$icq = '';
		}

		$aim_img = ( $row['user_aim'] ) ? '<a href="aim:goim?screenname=' . $row['user_aim'] . '&amp;message=Hello+Are+you+there?" title="' . $lang['AIM'] . '" class="smallbutton-aim"><span class="offleft">' . $lang['AIM'] . '</span></a>' : '';
		$aim = ( $row['user_aim'] ) ? '<a href="aim:goim?screenname=' . $row['user_aim'] . '&amp;message=Hello+Are+you+there?" title="' . $lang['AIM'] . '" class="smallbutton-aim"><span class="offleft">' . $lang['AIM'] . '</span></a>' : '';

		$temp_url = append_sid("profile.$phpEx?mode=viewprofile&amp;" . POST_USERS_URL . "=$user_id");
		$msn_img = ( $row['user_msnm'] ) ? '<a href="' . $temp_url . '" title="' . $lang['MSNM'] . '" class="smallbutton-msnm"><span class="offleft">' . $lang['MSNM'] . '</span></a>' : '';
		$msn = ( $row['user_msnm'] ) ? '<a href="' . $temp_url . '" title="' . $lang['MSNM'] . '" class="smallbutton-msnm"><span class="offleft">' . $lang['MSNM'] . '</span></a>' : '';

		$yim_img = ( $row['user_yim'] ) ? '<a href="http://edit.yahoo.com/config/send_webmesg?.target=' . $row['user_yim'] . '&amp;.src=pg" title="' . $lang['YIM'] . '" class="smallbutton-yim"><span class="offleft">' . $lang['YIM'] . '</span></a>' : '';
		$yim = ( $row['user_yim'] ) ? '<a href="http://edit.yahoo.com/config/send_webmesg?.target=' . $row['user_yim'] . '&amp;.src=pg" title="' . $lang['YIM'] . '" class="smallbutton-yim"><span class="offleft">' . $lang['YIM'] . '</span></a>' : '';

		$temp_url = append_sid("search.$phpEx?search_author=" . urlencode($username) . "&amp;showresults=posts");
		$search_img = '<a href="' . $temp_url . '" title="' . sprintf($lang['Search_user_posts'], $username) . '" class="smallbutton-search">' . sprintf($lang['Search_user_posts'], $username) . '</a>';
		$search = '<a href="' . $temp_url . '" title="' . sprintf($lang['Search_user_posts'], $username) . '" class="smallbutton-search">' . $lang['Search_user_posts'] . '</a>';

		$row_color = ( !($i % 2) ) ? $theme['td_color1'] : $theme['td_color2'];
		$row_class = ( !($i % 2) ) ? $theme['td_class1'] : $theme['td_class2'];

		$template->assign_block_vars('memberrow', array(
			'ROW_NUMBER' => $i + ( $start + 1 ),
			'ROW_COLOR' => '#' . $row_color,
			'ROW_CLASS' => $row_class,
			'USERNAME' => $username,
			'FROM' => $from,
			'JOINED' => $joined,
			'POSTS' => $posts,
			'AVATAR_IMG' => $poster_avatar,
			'PROFILE_IMG' => $profile_img, 
			'PROFILE' => $profile, 
			'SEARCH_IMG' => $search_img,
			'SEARCH' => $search,
			'PM_IMG' => $pm_img,
			'PM' => $pm,
			'EMAIL_IMG' => $email_img,
			'EMAIL' => $email,
			'WWW_IMG' => $www_img,
			'WWW' => $www,
			'ICQ_STATUS_IMG' => $icq_status_img,
			'ICQ_IMG' => $icq_img, 
			'ICQ' => $icq, 
			'AIM_IMG' => $aim_img,
			'AIM' => $aim,
			'MSN_IMG' => $msn_img,
			'MSN' => $msn,
			'YIM_IMG' => $yim_img,
			'YIM' => $yim,
			
			'U_VIEWPROFILE' => append_sid("profile.$phpEx?mode=viewprofile&amp;" . POST_USERS_URL . "=$user_id"))
		);

		$i++;
	}
	while ( $row = $db->sql_fetchrow($result) );
	$db->sql_freeresult($result);
}

if ( $mode != 'topten' || $board_config['topics_per_page'] < 10 )
{
	$sql = "SELECT count(*) AS total
		FROM " . USERS_TABLE . "
		WHERE user_id <> " . ANONYMOUS;

	if ( !($result = $db->sql_query($sql)) )
	{
		message_die(GENERAL_ERROR, 'Error getting total users', '', __LINE__, __FILE__, $sql);
	}

	if ( $total = $db->sql_fetchrow($result) )
	{
		$total_members = $total['total'];

		$pagination = generate_pagination("memberlist.$phpEx?mode=$mode&amp;order=$sort_order", $total_members, $board_config['topics_per_page'], $start). '&nbsp;';
	}
	$db->sql_freeresult($result);
}
else
{
	$pagination = '&nbsp;';
	$total_members = 10;
}

$template->assign_vars(array(
	'PAGINATION' => $pagination,
	'PAGE_NUMBER' => sprintf($lang['Page_of'], ( floor( $start / $board_config['topics_per_page'] ) + 1 ), ceil( $total_members / $board_config['topics_per_page'] )), 

	'L_GOTO_PAGE' => $lang['Goto_page'])
);

$template->pparse('body');

include($phpbb_root_path . 'includes/page_tail.'.$phpEx);

?>