			<h3><a href="{U_INDEX}" title="{L_INDEX}">{L_INDEX}</a></h3>
			
			<form action="{S_SEARCH_ACTION}" method="post">
			<div class="highlights">
				<h4>{L_SEARCH_QUERY}</h4>
				<fieldset>
					<label for="txtSearchKeywords">{L_SEARCH_KEYWORDS}</label>
					<p>{L_SEARCH_KEYWORDS_EXPLAIN}</p>
					<input type="text" class="boxes" id="txtSearchKeywords" name="search_keywords" size="30" title="{L_SEARCH_KEYWORDS}" /><br/>
					<input type="radio" id="radSearchAny" name="search_terms" value="any" checked="checked" title="{L_SEARCH_ANY_TERMS}" /> <label for="radSearchAny" class="inlinelabel">{L_SEARCH_ANY_TERMS}</label><br/>
					<input type="radio" id="radSearchAll" name="search_terms" value="all" title="{L_SEARCH_ALL_TERMS}" /> <label for="radSearchAll" class="inlinelabel">{L_SEARCH_ALL_TERMS}</label><br/>
					<hr class="thindivide"/>
					<label for="txtSearchAuthor">{L_SEARCH_AUTHOR}</label>
					<p>{L_SEARCH_AUTHOR_EXPLAIN}</p>
					<input type="text" class="boxes" id="txtSearchAuthor" name="search_author" size="30" title="{L_SEARCH_AUTHOR}" />
				</fieldset>
				
			</div>
			<hr/>
			
			<div class="highlights">
				<h4>{L_SEARCH_OPTIONS}</h4>
				<fieldset>
					<label for="ddlForum">{L_FORUM}</label>
					<select class="boxes" id="ddlForum" name="search_forum" title="{L_FORUM}">{S_FORUM_OPTIONS}</select><br/>
					
					<label for="ddlCategory">{L_CATEGORY}</label>
					<select class="boxes" id="ddlCategory" name="search_cat" title="{L_CATEGORY}">{S_CATEGORY_OPTIONS}</select><br/>
					
					<input type="radio" id="radShowPosts" name="show_results" value="posts" title="Display Results as {L_POSTS}" /> <label for="radShowPosts" class="inlinelabel">Display Results as {L_POSTS}</label><br/>
					<input type="radio" id="radShowTopics" name="show_results" value="topics" checked="checked" title="Display Results as {L_TOPICS}" /> <label for="radShowTopics" class="inlinelabel">Display Results as {L_TOPICS}</label><br/>
						
					<label for="ddlSearchPrevious">{L_SEARCH_PREVIOUS}</label>
					<select class="boxes" id="ddlSearchPrevious" name="search_time" title="{L_SEARCH_PREVIOUS}">{S_TIME_OPTIONS}</select><br/>
					
					<input type="radio" id="radSearchTitle" name="search_fields" value="all" checked="checked" title="{L_SEARCH_MESSAGE_TITLE}" /> <label for="radSearchTitle" class="inlinelabel">{L_SEARCH_MESSAGE_TITLE}</label><br/>
					<input type="radio" id="radSearchMessage" name="search_fields" value="msgonly" title="{L_SEARCH_MESSAGE_ONLY}" /> <label for="radSearchMessage" class="inlinelabel">{L_SEARCH_MESSAGE_ONLY}</label><br/>
					
					<label for="ddlPostTime">{L_SORT_BY}</label>
					<select class="boxes" id="ddlPostTime" name="sort_by" title="{L_SORT_BY}">{S_SORT_OPTIONS}</select><br/>
					<input type="radio" id="radSortAsc" name="sort_dir" value="asc" title="{L_SORT_ASCENDING}" /> <label for="radSortAsc" class="inlinelabel">{L_SORT_ASCENDING}</label><br/>
					<input type="radio" id="radSortDesc" name="sort_dir" value="desc" checked="checked" title="{L_SORT_DESCENDING}" /> <label for="radSortDesc" class="inlinelabel">{L_SORT_DESCENDING}</label><br/>
					
					<label for="ddlCharOptions">{L_RETURN_FIRST}</label> 
					<select class="boxes" id="ddlCharOptions" name="return_chars" title="{L_RETURN_FIRST}">{S_CHARACTER_OPTIONS}</select><br/>
					{S_HIDDEN_FIELDS}
					<input class="button" type="submit" value="{L_SEARCH}" title="{L_SEARCH}" />
				</fieldset>				
			</div>
			</form>
			<hr/>
			<div>{JUMPBOX}</div>