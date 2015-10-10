<div class="pull-left pavbtn">
	<?php
		if(isset($menu_active)){
			switch ($menu_active) {
				case 'subscribes':
					?>
					<a onclick="$('#action').val('delete');$('#form').submit();" class="btn btn-danger"><?php echo $button_delete; ?></a>
					<?php
					break;
				case 'modules':
					?>
					<a onclick="$('#form').submit();" class="btn btn-primary"><?php echo $button_save; ?></a>&nbsp;&nbsp;
					<a href="<?php echo $cancel; ?>" class="btn btn-danger"><?php echo $button_cancel; ?></a>&nbsp;&nbsp;
					<?php
					break;
				case 'templates':
					?>
					<a onclick="$('#action').val('copy_default');$('#form').submit();" class="btn btn-primary"><?php echo $button_copy_default; ?></a>&nbsp;&nbsp;
					<a onclick="$('#action').val('copy');$('#form').submit();" class="btn btn-success"><?php echo $button_copy; ?></a>&nbsp;&nbsp;
					<a href="<?php echo $insert_link;?>" class="btn btn-success"><?php echo $button_insert; ?></a>&nbsp;&nbsp;
					<a onclick="$('#action').val('delete');$('#form').submit();" class="btn btn-danger"><?php echo $button_delete; ?></a>&nbsp;&nbsp;
					<?php
				break;
				case 'template':
					?>
					<a onclick="$('#form').submit();" class="btn btn-success"><?php echo $button_save; ?></a>&nbsp;&nbsp;
					<a href="<?php echo $cancel; ?>" class="btn btn-danger"><?php echo $button_cancel; ?></a>&nbsp;&nbsp;
					<?php
				break;
				case 'create_newsletter':
					?>
					<a onclick="$('#action').val('save_draft');$('#form').submit();" class="btn btn-primary"><?php echo $button_save_draft; ?></a>&nbsp;&nbsp;
					<a onclick="$('#action').val('send');$('#form').submit();" class="btn btn-success"><?php echo $button_send; ?></a>&nbsp;&nbsp;
					<a onclick="$('#action').val('check_spam');$('#form').submit();" class="btn btn-warning"><?php echo $button_check; ?></a>&nbsp;&nbsp;
					<?php
				break;
				case 'draft':
					?>
					<a onclick="$('#action').val('delete');$('#form').submit();" class="btn btn-danger"><?php echo $button_delete; ?></a>
					<?php
				break;
				case 'config':
					?>
					<a onclick="$('#form').submit();" class="btn btn-primary"><?php echo $button_save; ?></a>&nbsp;&nbsp;
					<a href="<?php echo $cancel; ?>" class="btn btn-danger"><?php echo $button_cancel; ?></a>
					<?php
					break;
				default:
					
					break;
			}
		}
	?>
</div>
