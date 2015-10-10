<?php echo $header; ?><?php echo $column_left;  $module_row = 1 ; 	  ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
          <a class="btn btn-primary" onclick="$('#form').submit();"><?php echo $button_save; ?></a>
	        <a class="btn btn-success" onclick="$('#action').val('save_stay');$('#form').submit();"><?php echo $objlang->get('button_save_stay'); ?></a>
	        <a class="btn btn-danger" href="<?php echo $cancel; ?>"><?php echo $button_cancel; ?></a>
      </div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div><!-- End div#page-header -->
  <div id="page-content" class="container-fluid">
    <?php if ($error_warning) { ?>
    	<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      	<button type="button" class="close" data-dismiss="alert">&times;</button>
    	</div>
     	<?php } ?>
	<?php if (isset($success) && !empty($success)) { ?>
	<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
		<button type="button" class="close" data-dismiss="alert">&times;</button>
	</div>
	<?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">

      		<div class="pull-right">
				<a id="btnocmanage" href="<?php echo $link; ?>" class="btn btn-info"><i class="fa fa-cubes"></i> <?php echo $olang->get('text_add_new_module'); ?></a>
			</div>	

			  <!-- Nav tabs -->
                <div class="row">
                  <ul class="nav nav-tabs" role="tablist">
                    <li <?php if( $selectedid ==0 ) { ?>class="active" <?php } ?>> <a href="<?php echo $link; ?>"> <span class="fa fa-plus"></span> <?php echo $olang->get('button_add_module');?></a></li>
                    <?php $i=1; foreach( $moduletabs as $key => $moduletab ){ ?>
                    <li role="presentation" <?php if( $moduletab['module_id']==$selectedid ) {?>class="active"<?php } ?>>
                      <a href="<?php echo $link; ?>&module_id=<?php echo $moduletab['module_id']?>" aria-controls="bannermodule-<?php echo $key; ?>"  >
                        <span class="fa fa-pencil"></span> <?php echo $moduletab['name']?>
                       </a>
                      </li>
                    <?php $i++ ;} ?>
                  
                  </ul>
                </div>
                <!-- Tab panes -->

 
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
				<input name="action" type="hidden" id="action"/>
				 
				<ul class="nav nav-tabs">
		            <li class="active"><a href="#tab-modules" data-toggle="tab"><?php echo $tab_module_info; ?></a></li>
		            <li><a href="#tab-data" data-toggle="tab"><?php echo $tab_reassurance_image; ?></a></li>
		        </ul>
		        <div class="tab-content">
					<div class="tab-pane active" id="tab-modules">
						<div class="form-group row">
							<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
							<div class="col-sm-10">
								<select class="form-control no-width" class="form-control" name="pavreassurance_module[<?php echo $module_row;?>][status]" id="input-status" class="form-control">
									<?php if ( isset($module['status']) && $module['status'] ) { ?>
									<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
									<option value="0"><?php echo $text_disabled; ?></option>
									<?php } else { ?>
									<option value="1"><?php echo $text_enabled; ?></option>
									<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
									<?php } ?>
								</select><br>
							</div>

						</div>

						<div class="module-class form-group row">
							<label class="col-sm-2"><?php echo $olang->get('text_module_name');?></label>
							<div class="col-sm-10"><input class="form-control" name="pavreassurance_module[<?php echo $module_row;?>][name]" value="<?php if(isset($module['name'])){ echo $module['name']; }?>"></div>
							</div>	<hr>
							<div class="module-class form-group row">
							<label class="col-sm-2"><?php echo $prefix_class; ?></label>
							<div class="col-sm-10"><input class="form-control" name="pavreassurance_module[<?php echo $module_row;?>][prefix]" value="<?php if(isset($module['prefix'])){ echo $module['prefix']; }?>"></div>
						</div>	

					 
					</div>

					<div class="tab-pane" id="tab-data">

						<?php $reassurence_row = 1; ?>

						<div class="col-sm-2">
			              <ul class="nav nav-pills nav-stacked" id="module">
			                <?php if(isset($module['pavreassurances']) && !empty($module['pavreassurances'])) { ?>
								<?php $reassurence_row = 1; ?>
								<?php foreach ($module['pavreassurances'] as $reassuarance) { ?>
			                <li><a href="#tab-module<?php echo $reassurence_row; ?>" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$('a[href=\'#tab-module<?php echo $reassurence_row; ?>\']').parent().remove(); $('#tab-module<?php echo $reassurence_row; ?>').remove(); $('#module a:first').tab('show');"></i> <?php echo $tab_module . ' ' . $reassurence_row; ?></a></li>
			                	<?php $reassurence_row++; ?>
								<?php } ?>
							<?php } //end check isset reassuarances data?>
			                <li id="module-add"><a onclick="addModule();"><i class="fa fa-plus-circle"></i> <?php echo $button_module_add; ?></a></li>
			              </ul>
			            </div>
			            <div class="col-sm-10">
              				<div class="tab-content" id="tab-content">
							
								<?php if(isset($module['pavreassurances']) && !empty($module['pavreassurances'])) { ?>
									<?php $reassurence_row = 1;  $module_row = 1 ; ?>
									<?php foreach ($module['pavreassurances'] as $reassuarance) { ?>
									<div class="tab-pane" id="tab-module<?php echo $reassurence_row; ?>">

										<table class="table table-bordered table-hover">
											<tr>
												<td class="col-sm-2"><?php echo $lang_select_icon; ?></td>
												<td class="col-sm-10">
													<input class="form-control" style="width:55%;" name="pavreassurance_module[<?php echo $module_row; ?>][pavreassurances][<?php echo $reassurence_row; ?>][select_icon]" value="<?php echo ( isset($reassuarance['select_icon'])?$reassuarance['select_icon']:'' ) ?>" size="50" />
													<span class="help"><?php echo $lang_description ?> <a href="http://fortawesome.github.io/Font-Awesome/icons/">fortawesome.github.io/Font-Awesome/icons/</a></span>
												</td>
											</tr>
											<tr>
												<td class="col-sm-2"><?php echo $reassurance_prefixclass; ?></td>
												<td class="col-sm-10">
													<input class="form-control" style="width:55%;" name="pavreassurance_module[<?php echo $module_row; ?>][pavreassurances][<?php echo $reassurence_row; ?>][reassurance_prefixclass]" value="<?php echo ( isset($reassuarance['reassurance_prefixclass'])?$reassuarance['reassurance_prefixclass']:'' ) ?>" size="50" />
												</td>
											</tr>
										</table>

										<?php /*
										// Language Tab */ ?>
										<ul class="nav nav-tabs" id="language<?php echo $reassurence_row; ?>">
					                      <?php foreach ($languages as $language) { ?>
					                      <li><a href="#tab-module<?php echo $reassurence_row; ?>-language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
					                      <?php } ?>
					                    </ul>
					                    <div class="tab-content">
											<?php /*
											// Input title and Text editor */ ?>
											<?php foreach ($languages as $language) { ?>
											<div class="tab-pane" id="tab-module<?php echo $reassurence_row; ?>-language<?php echo $language['language_id']; ?>">
												<table class="table table-bordered table-hover">

													<tr>
														<td class="col-sm-2"><?php echo $lang_module_title; ?></td>
														<td class="col-sm-10">
															<input class="form-control" style="width:55%;" type="text" name="pavreassurance_module[<?php echo $module_row; ?>][pavreassurances][<?php echo $reassurence_row; ?>][title][<?php echo $language['language_id']; ?>]" value="<?php echo isset($reassuarance['title'][$language['language_id']]) ? $reassuarance['title'][$language['language_id']] : ''; ?>" size="50" />
														</td>
													</tr>

													<tr>
														<td class="col-sm-2"><?php echo $lang_content; ?></td>
														<td class="col-sm-10">
															<textarea class="pavo-editor" cols="30" rows="5" name="pavreassurance_module[<?php echo $module_row; ?>][pavreassurances][<?php echo $reassurence_row; ?>][caption][<?php echo $language['language_id']; ?>]" id="caption-<?php echo $reassurence_row; ?>-<?php echo $language['language_id']; ?>"><?php echo isset($reassuarance['caption'][$language['language_id']]) ? $reassuarance['caption'][$language['language_id']] : ''; ?></textarea>
														</td>
													</tr>

													<tr>
														<td class="col-sm-2"><?php echo $lang_detail; ?></td>
														<td class="col-sm-10">
															<textarea class="pavo-editor" cols="60" rows="10" name="pavreassurance_module[<?php echo $module_row; ?>][pavreassurances][<?php echo $reassurence_row; ?>][detail][<?php echo $language['language_id']; ?>]" id="detail-<?php echo $reassurence_row; ?>-<?php echo $language['language_id']; ?>"><?php echo isset($reassuarance['detail'][$language['language_id']]) ? $reassuarance['detail'][$language['language_id']] : ''; ?></textarea>
														</td>
													</tr>

												</table>
											</div>
											<?php } ?>
										</div>
									</div>
									<?php $reassurence_row++; ?>
									<?php } //end foreach ?>
								<?php } //end check data ?>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<script type="text/javascript"><!--
$('.pavo-editor').summernote({
    height: 300
  });
//--></script>

<script type="text/javascript"><!--
	var module_row = <?php echo $module_row; ?>;

	var reassurence_row = <?php echo $reassurence_row; ?>;

	function addModule() {
		html  = '<div class="tab-pane" id="tab-module' + reassurence_row + '">';

		html += '	<table class="table table-bordered table-hover">';
		html += '		<tr>';
		html += '			<td class="col-sm-2"><?php echo $lang_select_icon; ?></td>';
		html += '			<td class="col-sm-10"><input class="form-control" style="width:55%;" name="pavreassurance_module['+module_row+'][pavreassurances]['+reassurence_row+'][select_icon]" id="pavreassurance[<?php echo $reassurence_row; ?>][select_icon]" size="50" value="fa-comments-o"/></p>';
		html += '				<span class="help"><?php echo $lang_description ?> <a href="http://fortawesome.github.io/Font-Awesome/icons/">fortawesome.github.io/Font-Awesome/icons/</a></span></td>';
		html += '		</tr>';
		html += '        <tr>';
		html += '          <td class="col-sm-2"><?php echo $reassurance_prefixclass; ?></td>';
		html += '          <td class="col-sm-10"><input class="form-control" style="width:55%;" name="pavreassurance_module['+module_row+'][pavreassurances]['+reassurence_row+'][reassurance_prefixclass]" id="pavreassurance[<?php echo $reassurence_row; ?>][reassurance_prefixclass]" size="50" value=""/></td>';
		html += '        </tr>';
		html += '	</table>';

		<?php /*
		// Language Tab */ ?>

		html += '  <ul class="nav nav-tabs" id="language' + reassurence_row + '">';
	  	<?php foreach ($languages as $language) { ?>
	  	html += '    <li><a href="#tab-module' + reassurence_row + '-language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>';
	  	<?php } ?>
	  	html += '  </ul>';

	  	 html += '  <div class="tab-content" id="tab-content-lang">';
		<?php /*
		// Text Editor
		*/ ?>
		<?php foreach ($languages as $language) { ?>
		html += '    <div class="tab-pane" id="tab-module' + reassurence_row + '-language<?php echo $language['language_id']; ?>">';
		html += '      <table class="table table-bordered table-hover">';
		html += '        <tr>';
		html += '          <td class="col-sm-2"><?php echo $lang_module_title; ?></td>';
		html += '          <td class="col-sm-10"><input class="form-control" style="width:55%;" value="title" type="text" name="pavreassurance_module['+module_row+'][pavreassurances]['+reassurence_row+'][title][<?php echo $language['language_id']; ?>]" id="title-<?php echo $reassurence_row; ?>-<?php echo $language['language_id']; ?>" size="50"/></td>';
		html += '        </tr>';
		html += '        <tr>';
		html += '          <td class="col-sm-2"><?php echo $lang_content; ?></td>';
		html += '          <td class="col-sm-10"><textarea class="pavo-editor" cols="30" rows="5" name="pavreassurance_module['+module_row+'][pavreassurances]['+reassurence_row+'][caption][<?php echo $language['language_id']; ?>]" id="caption-' + reassurence_row + '-<?php echo $language['language_id']; ?>"></textarea></td>';
		html += '        </tr>';
		html += '        <tr>';
		html += '          <td class="col-sm-2"><?php echo $lang_detail; ?></td>';
		html += '          <td class="col-sm-10"><textarea class="pavo-editor" cols="30" rows="5" name="pavreassurance_module['+module_row+'][pavreassurances]['+reassurence_row+'][detail][<?php echo $language['language_id']; ?>]" id="detail-' + reassurence_row + '-<?php echo $language['language_id']; ?>"></textarea></td>';
		html += '        </tr>';
		html += '      </table>';
		html += '    </div>';
		<?php } ?>

		html += '</div>';
		html += '</div>';

		$('#tab-content').append(html);

	  $('.pavo-editor').summernote({
	    height: 300
	  });

	  $('#module-add').before('<li><a href="#tab-module' + reassurence_row + '" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$(\'a[href=\\\'#tab-module' + reassurence_row + '\\\']\').parent().remove(); $(\'#tab-module' + reassurence_row + '\').remove(); $(\'#module a:first\').tab(\'show\');"></i> <?php echo $tab_module; ?> ' + reassurence_row + '</a></li>');

	  $('#module a[href=\'#tab-module' + reassurence_row + '\']').tab('show');

	  $('#language' + reassurence_row + ' li:first-child a').tab('show');

	  reassurence_row++;
}
--></script>

<script type="text/javascript"><!--
<?php if(isset($module['pavreassurances']) && !empty($module['pavreassurances'])){ ?>
	<?php $reassurence_row = 1; ?>
$('#module li:first-child a').tab('show');
<?php foreach ($module['pavreassurances'] as $module) { ?>
$('#language<?php echo $reassurence_row; ?> li:first-child a').tab('show');
	<?php $reassurence_row++; ?>
	<?php } ?>
<?php } ?>
//--></script>


<?php echo $footer; ?>