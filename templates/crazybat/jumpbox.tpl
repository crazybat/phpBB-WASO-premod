			<form method="get" id="jumpbox" action="{S_JUMPBOX_ACTION}" onsubmit="if(document.jumpbox.f.value == -1){return false;}">
			<div>
				<label for="ddljumpbox" class="inlinelabel">{L_JUMP_TO}</label>
				{S_JUMPBOX_SELECT} 
				<input type="submit" value="{L_GO}" class="button" title="{L_GO}" />
			</div>
			</form>