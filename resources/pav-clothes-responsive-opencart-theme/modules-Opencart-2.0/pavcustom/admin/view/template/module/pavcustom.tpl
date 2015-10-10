<?php 
	echo $header; 
	echo $column_left;
	$module_row=1; 
?>
<div id="content">

	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">

				<a class="btn btn-primary" onclick="$('#form').submit();"><?php echo $button_save; ?></a>
				<a class="btn btn-success" onclick="$('#action').val('saveedit');$('#form').submit();"><?php echo $objlang->get('text_save_edit'); ?></a>
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
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i>
			<?php echo $error_warning; ?>
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
				<h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $heading_title; ?></h3>
			</div>



			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
				<input type="hidden" name="pavcustom_module[action]" id="action" value=""/>
				<input type="hidden" value="<?php echo $store_id;?>" name="pavcustom_module[store_id]"/>

				<div class="panel-body">
							 <?php if( $selectedid ){ ?>
			            <div class="pull-right">
			              <a href="<?php echo $action;?>&delete=1" class="remove btn btn-danger" ><span><i class="fa fa-remove"></i><?php echo $olang->get('text_dete_module');?></span></a>
			            </div>  
			            <?php } ?>
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

                
					    <div class="form-group row">
							<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
							<div class="col-sm-10">
								<select class="form-control no-width" class="form-control" name="pavcustom_module[<?php echo $module_row;?>][status]" id="input-status" class="form-control">
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
							<div class="col-sm-10"><input class="form-control" name="pavcustom_module[<?php echo $module_row;?>][name]" value="<?php if(isset($module['name'])){ echo $module['name']; }?>"></div>
						</div>	<hr>
							 

					
					<!-- Multiple Store -->
					<div class="form-group">
						<label class="col-sm-2 control-label" for="pavstores"><?php echo $objlang->get('entry_default_store'); ?></label>
						<div class="col-sm-10">
							<select style="width:60%" class="form-control" class="form-control" name="pavcustom_module[stores]" id="pavstores" class="form-control">
								<?php foreach($stores as $store):?>
								<?php if($store['store_id'] == $store_id):?>
								<option value="<?php echo $store['store_id'];?>" selected="selected"><?php echo $store['name'];?></option>
								<?php else:?>
								<option value="<?php echo $store['store_id'];?>"><?php echo $store['name'];?></option>
								<?php endif;?>
								<?php endforeach;?>
							</select><br>
						</div>
					</div>

					<!-- Modules -->
					<div class="row">
					 
						<div class="col-sm-12">
							<div>
								<?php $module_row = 1; ?>
								<?php foreach ($modules as $module) { ?>

								<div class="tab-pane" id="tab-module-pavcustom-<?php echo $module_row ;?>">

									<ul class="nav nav-tabs" id="language<?php echo $module_row ;?>">
										<?php foreach ($languages as $language) { ?>
										<li>
											<a href="#tab-module-<?php echo $module_row ;?>-language-<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
										</li>
										<?php } ?>
									</ul>

									<div class="tab-content" id="tab-content-lang">
										<?php foreach ($languages as $language) { ?>
										<div class="tab-pane" id="tab-module-<?php echo $module_row ;?>-language-<?php echo $language['language_id']; ?>">
										<table class="table">
											<tr class="no-border">
												<td class="col-sm-2"><?php echo $entry_module_title; ?></td>
												<td class="col-sm-8">
													<input class="form-control" name="pavcustom_module[<?php echo $module_row ;?>][module_title][<?php echo $language['language_id']; ?>]" value="<?php echo $module['module_title'][$language['language_id']];?>"/>
												</td>
											</tr>
											<tr>
												<td class="col-sm-2"><?php echo $entry_description; ?></td>
												<td class="col-sm-8"><textarea name="pavcustom_module[<?php echo $module_row ;?>][description][<?php echo $language['language_id']; ?>]" id="input-description-<?php echo $module_row ;?>-language-<?php echo $language['language_id']; ?>"><?php echo $module['description'][$language['language_id']];?></textarea></td>
											</tr>
										</table>
										</div>
										<?php } ?>
									</div>

									<table class="table">
										<tr class="no-border">
											<td class="col-sm-2"><?php echo $entry_module_class; ?></td>
											<td class="col-sm-8">
												<input class="form-control" type="text" name="pavcustom_module[<?php echo $module_row ;?>][module_class]" value="<?php echo $module['module_class'] ;?>" size="13" />
											</td>
										</tr>
										<tr>
											<td class="col-sm-2"><?php echo $objlang->get('entry_show_title'); ?></td>
											<td class="col-sm-8">
												<select class="form-control" name="pavcustom_module[<?php echo $module_row ;?>][show_title]">
													<?php if($module['show_title']) { ?>
													<option value="1" selected=selected><?php echo $objlang->get('text_show'); ?></option>
													<option value="0"><?php echo $objlang->get('text_hide'); ?></option>
													<?php } else { ?>
													<option value="1"><?php echo $objlang->get('text_show'); ?></option>
													<option value="0" selected=selected><?php echo $objlang->get('text_hide'); ?></option>
													<?php } ?>
												</select>
											</td>
										</tr>
									</table>

								</div>

								<?php $module_row++; ?>
								<?php } ?>
							</div>
						</div> <!-- End DIV CONTENT TAB -->
					</div>


				</div><!-- End div .panel-body -->
			</form>
		</div>
	</div><!-- End div#page-content -->

</div><!-- End div#content -->



<script type="text/javascript">
<?php $module_row = 1; ?>
<?php foreach ($modules as $module) { ?>
	<?php foreach ($languages as $language) { ?>
		$('#input-description-<?php echo $module_row; ?>-language-<?php echo $language['language_id']; ?>').summernote({ height: 150 });
	<?php } ?>
$('#language<?php echo $module_row; ?> li:first-child a').tab('show');
<?php $module_row++; } ?>


// Active Tab Module
$('#module-pavcustom li:first-child a').tab('show');

// Multiple Store
$('#pavstores').bind('change', function () {
	url = 'index.php?route=module/pavcustom&token=<?php echo $token; ?>';
	var id = $(this).val();
	if (id) {
		url += '&store_id=' + encodeURIComponent(id);
	}
	window.location = url;
});
</script>
<script type="text/javascript">
var module_row = <?php echo $module_row; ?>;

function addModule() {

	html  = '<div class="tab-pane" id="tab-module-pavcustom-' + module_row + '">';

	html += '	<ul class="nav nav-tabs" id="language' + module_row + '">';
					<?php foreach ($languages as $language) { ?>
	html += '		<li>';
	html += '			<a href="#tab-module-' + module_row + '-language-<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>';
	html += '		</li>';
					<?php } ?>
	html += '	</ul>';

	// Tab Language content
	html += '	<div class="tab-content" id="tab-content-lang">';
	<?php foreach ($languages as $language) { ?>
	html += '		<div class="tab-pane" id="tab-module-' + module_row + '-language-<?php echo $language['language_id']; ?>">';
	html += '		<table class="table">';
	html += '			<tr class="no-border">';
	html += '				<td class="col-sm-2"><?php echo $entry_module_title; ?></td>';
	html += '				<td class="col-sm-8"><input class="form-control" name="pavcustom_module[' + module_row + '][module_title][<?php echo $language['language_id']; ?>]" value="module-tile"/></td>';
	html += '			</tr>';
	html += '			<tr>';
	html += '				<td class="col-sm-2"><?php echo $entry_description; ?></td>';
	html += '				<td class="col-sm-8"><textarea name="pavcustom_module[' + module_row + '][description][<?php echo $language['language_id']; ?>]" id="input-description-' + module_row + '-language-<?php echo $language['language_id']; ?>"></textarea></td>';
	html += '			</tr>';
	html += '		</table>';
	html += '		</div>';
	<?php } ?>
	html += '	</div>';


	html += '	<table class="table">';
	html += '		<tr class="no-border">';
	html += '			<td class="col-sm-2"><?php echo $entry_module_class; ?></td>';
	html += '			<td class="col-sm-8"><input class="form-control" type="text" name="pavcustom_module[' + module_row + '][module_class]" value="class' + module_row + '" size="13" /></td>';
	html += '		</tr>';
	html += '		<tr>';
	html += '            <td class="col-sm-2"><?php echo $objlang->get('entry_show_title'); ?></td>';
	html += '            <td class="col-sm-8"><select class="form-control" name="pavcustom_module[' + module_row + '][show_title]">';
	html += '                <option value="1"><?php echo $objlang->get('text_show'); ?></option>';
	html += '                <option value="0"><?php echo $objlang->get('text_hide'); ?></option>';
	html += '              </select></td>';
	html += '		</tr>';

	html += '	</table>';

	html += '</div>'

	$('#tab-content').append(html);

	$('#module-pavcustom #module-add').before('<li><a href="#tab-module-pavcustom-' + module_row + '" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$(\'a[href=\\\'#tab-module-pavcustom-' + module_row + '\\\']\').parent().remove(); $(\'#tab-module-pavcustom-' + module_row + '\').remove(); $(\'#module a:first\').tab(\'show\');"></i> <?php echo $tab_module; ?> ' + module_row + '</a></li>');

	$('#module-pavcustom a[href=\'#tab-module-pavcustom-' + module_row + '\']').tab('show');

	<?php foreach ($languages as $language) { ?>
	$('#input-description-' + module_row + '-language-<?php echo $language['language_id']; ?>').summernote({ height: 150 });
	<?php } ?>

	$('#language' + module_row + ' li:first-child a').tab('show');

	module_row++;
}
</script>

<style type="text/css">
	.no-border > td{ border-top: 1px solid white !important;}
</style>
<?php echo $footer; ?>