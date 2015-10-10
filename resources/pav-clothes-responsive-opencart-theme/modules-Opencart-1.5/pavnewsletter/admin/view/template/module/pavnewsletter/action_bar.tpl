<div class="pav-toolbar">
	<div class="btn-group">
		<?php
			if(isset($menu_active)){
				switch ($menu_active) {
					case 'subscribes':
						?>
						<a onclick="$('#action').val('delete');$('#form').submit();" class="btn btn-small btn-remove"><span><?php echo $button_delete; ?></span></a>
						<?php
						break;
					case 'modules':
						?>
						<a onclick="$('#form').submit();" class="btn btn-small"><span><?php echo $button_save; ?></span></a>&nbsp;&nbsp;
						<a href="<?php echo $cancel; ?>" class="btn btn-small"><span><?php echo $button_cancel; ?></span></a>&nbsp;&nbsp;
						<?php
						break;
					case 'templates':
						?>
						<a onclick="$('#action').val('copy_default');$('#form').submit();" class="btn btn-small"><span><?php echo $button_copy_default; ?></span></a>&nbsp;&nbsp;
						<a onclick="$('#action').val('copy');$('#form').submit();" class="btn btn-small"><span><?php echo $button_copy; ?></span></a>&nbsp;&nbsp;
						<a href="<?php echo $insert_link;?>" class="btn btn-small btn-success"><span><?php echo $button_insert; ?></span></a>&nbsp;&nbsp;
						<a onclick="$('#action').val('delete');$('#form').submit();" class="btn btn-small btn-remove"><span><?php echo $button_delete; ?></span></a>&nbsp;&nbsp;
						<?php
					break;
					case 'template':
						?>
						<a onclick="$('#form').submit();" class="btn btn-small btn-success"><span><?php echo $button_save; ?></span></a>&nbsp;&nbsp;
						<a href="<?php echo $cancel; ?>" class="btn btn-small btn-remove"><span><?php echo $button_cancel; ?></span></a>&nbsp;&nbsp;
						<?php
					break;
					case 'create_newsletter':
						?>
						<a onclick="$('#action').val('save_draft');$('#form').submit();" class="btn btn-small"><span><?php echo $button_save_draft; ?></span></a>&nbsp;&nbsp;
						<a onclick="$('#action').val('send');$('#form').submit();" class="btn btn-small btn-small"><span><?php echo $button_send; ?></span></a>&nbsp;&nbsp;
						<a onclick="$('#action').val('check_spam');$('#form').submit();" class="btn btn-small btn-small"><span><?php echo $button_check; ?></span></a>&nbsp;&nbsp;
						<?php
					break;
					case 'draft':
						?>
						<a onclick="$('#action').val('delete');$('#form').submit();" class="btn btn-small"><span><?php echo $button_delete; ?></span></a>
						<?php
					break;
					case 'config':

						break;
					default:
						
						break;
				}
			}
		?>
		
	</div>
</div>
