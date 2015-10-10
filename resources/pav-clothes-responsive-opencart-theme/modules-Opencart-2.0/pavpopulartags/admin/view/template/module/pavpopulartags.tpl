<?php
/******************************************************
 * @package  : Pav Popular tags module for Opencart 1.5.x
 * @version  : 1.0
 * @author   : http://www.pavothemes.com
 * @copyright: Copyright (C) Feb 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license  : GNU General Public License version 1
*******************************************************/
?>
<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
          <a class="btn btn-primary" onclick="$('#form').submit();"><?php echo $button_save; ?></a>
          <a class="btn btn-success" onclick="$('#action').val('saveedit');$('#form').submit();"><?php echo $olang->get('text_save_edit'); ?></a>
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
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $subheading; ?></h3>
      </div>
      <div class="panel-body">
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
				<input name="action" type="hidden" id="action"/>
				<input type="hidden" name="pavpopulartags_module[action]" id="action" value=""/>

				<!-- Nav tabs -->
                <div class="row">
                  <ul class="nav nav-tabs" role="tablist">
                    <li <?php if( $selectedid ==0 ) { ?>class="active" <?php } ?>> <a href="<?php echo $link; ?>"> <span class="fa fa-plus"></span> <?php echo $olang->get('button_add_module');?></a></li>
                    <?php $i=1; foreach( $moduletabs as $key => $module ){ ?>
                    <li role="presentation" <?php if( $module['module_id']==$selectedid ) {?>class="active"<?php } ?>>
                      <a href="<?php echo $link; ?>&module_id=<?php echo $module['module_id']?>" aria-controls="bannermodule-<?php echo $key; ?>"  >
                        <span class="fa fa-pencil"></span> <?php echo $module['name']?>
                       </a>
                      </li>
                    <?php $i++ ;} ?>

                  </ul>
                </div>
                <!-- Tab panes -->


          <div class="row">

            <div class="col-sm-12">
            <div >
				<?php $module_row = 1; ?>
				
				<?php foreach ($modules as $module) { ?>
				<?php if( $selectedid ){ ?>
               <div class="pull-right">
                      <a href="<?php echo $action;?>&delete=1" class="remove btn btn-danger" ><span><i class="fa fa-remove"></i> Delete This</span></a>
                    </div>
                    <?php } ?>
				      <div  id="tab-module<?php echo $module_row; ?>">
						<table class="table table-bordered">
							<tr>
			                    <td class="col-sm-2"><?php echo $objlang->get('entry_name'); ?></td>
			                    <td class="col-sm-10"><input class="form-control" style="width:55%;" name="pavpopulartags_module[<?php echo $module_row; ?>][name]" value="<?php echo isset($module['name'])?$module['name']:''; ?>"/></td>
			                  </tr>
			                  <tr>
			                    <td class="col-sm-2"><?php echo $objlang->get('entry_status'); ?></td>
			                    <td class="col-sm-10"><select name="pavpopulartags_module[<?php echo $module_row; ?>][status]" class="form-control" style="width:15%;">
			                      <?php if ( isset($module['status']) && $module['status'] ) { ?>
			                      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
			                      <option value="0"><?php echo $text_disabled; ?></option>
			                      <?php } else { ?>
			                      <option value="1"><?php echo $text_enabled; ?></option>
			                      <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
			                      <?php } ?>
			                    </select></td>
			                  </tr>
			                <tr>
							<tr>
									<td class="col-md-2"><?php echo $olang->get('entry_title'); ?></td>
									<td class="col-md-10">
										<ul class="nav nav-tabs" id="language<?php echo $module_row; ?>">
						                      <?php foreach ($languages as $language) { ?>
						                      <li><a href="#tab-module<?php echo $module_row; ?>-language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
						                      <?php } ?>
					                    </ul>
					                     <div class="tab-content">
						                    <?php foreach ($languages as $language) { ?>
						                    <div class="tab-pane" id="tab-module<?php echo $module_row; ?>-language<?php echo $language['language_id']; ?>">
												<input name="pavpopulartags_module[<?php echo $module_row; ?>][title][<?php echo $language['language_id']; ?>]" value="<?php echo isset($module['title'][$language['language_id']]) ? $module['title'][$language['language_id']] : ''; ?>" class="form-control" style="width:55%;"/>
											</div>
											<?php } ?>
										</div>	
									</td>
								</tr>
							<tr>
								<td class="col-md-2"><span class="required">* </span><?php echo $olang->get("entry_limit_tags"); ?>
									<br/><span class="help"><?php echo $olang->get("help_limit_tags"); ?></span>
								</td>
								<td class="col-md-10">
									<input name="pavpopulartags_module[<?php echo $module_row; ?>][limit_tags]" value="<?php echo (isset($module['limit_tags'])?$module['limit_tags']:'' ) ?>" class="form-control" style="width:20%;"/>
								</td>
							</tr>

							<tr>
								<td class="col-md-2"><?php echo $olang->get("entry_min_font_size"); ?><br>
									<span class="help"><?php echo $olang->get("help_min_font_size"); ?></span>
								</td>
								<td class="col-md-10">
									<input name="pavpopulartags_module[<?php echo $module_row; ?>][min_font_size]" value="<?php echo (isset($module['min_font_size'])?$module['min_font_size']:'' ) ?>" class="form-control" style="width:20%;"/>
								</td>
							</tr>

							<tr>
								<td class="col-md-2"><?php echo $olang->get("entry_max_font_size"); ?><br>
									<span class="help"><?php echo $olang->get("help_max_font_size"); ?></span>
								</td>
								<td class="col-md-10">
									<input name="pavpopulartags_module[<?php echo $module_row; ?>][max_font_size]" value="<?php echo (isset($module['max_font_size'])?$module['max_font_size']:'' ) ?>" class="form-control" style="width:20%;"/>
								</td>
							</tr>

							<tr>
								<td class="col-md-2"><?php echo $olang->get("entry_font_weight"); ?><br>
									<span class="help"><?php echo $olang->get("help_font_weight"); ?></span>
								</td>
								<td class="col-md-10"><select name="pavpopulartags_module[<?php echo $module_row; ?>][font_weight]" class="form-control" style="width:20%;">
									<?php foreach ($fontweights as $font) { ?>
									<?php if ($font == $module['font_weight']) { ?>
									<option value="<?php echo $font; ?>" selected="selected"><?php echo $font; ?></option>
									<?php } else { ?>
									<option value="<?php echo $font; ?>"><?php echo $font; ?></option>
									<?php } ?>
									<?php } ?>
									</select>
								</td>
							</tr>

							<tr>
								<td class="col-md-2"><?php echo $olang->get('prefix_class'); ?></td>
								<td class="col-md-10">
									<input name="pavpopulartags_module[<?php echo $module_row; ?>][prefix]" value="<?php echo (isset($module['prefix'])?$module['prefix']:'' ) ?>" class="form-control" style="width:20%;"/>
								</td>
							</tr>
						</table>
					</div>
				<?php $module_row++; ?>
				<?php } ?>
			</form>
		</div>
	</div>
</div>
 <script type="text/javascript"><!--
 <?php $module_row = 1; ?>
$('#module li:first-child a').tab('show');
<?php foreach ($modules as $module) { ?>
$('#language<?php echo $module_row; ?> li:first-child a').tab('show');
<?php $module_row++; ?>
<?php } ?>
//--></script>
<?php echo $footer; ?>