<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-marketshop-banner" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-marketshop-banner" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-marketshop-banner"><?php echo $entry_banner; ?></label>
            <div class="col-sm-10">
              <select name="banner_id" id="input-marketshop-banner" class="form-control">
                <?php foreach ($banners as $banner) { ?>
                <?php if ($banner['banner_id'] == $banner_id) { ?>
                <option value="<?php echo $banner['banner_id']; ?>" selected="selected"><?php echo $banner['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $banner['banner_id']; ?>"><?php echo $banner['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-perrow"><?php echo $entry_perrow; ?></label>
            <div class="col-sm-10">
              <select class="form-control" id="input-perrow" name="perrow_id">
                  <?php if ($perrow_id == 'col-lg-12 col-md-12 col-sm-12 col-xs-12') { ?>
                  <option value="col-lg-12 col-md-12 col-sm-12 col-xs-12" selected="selected"><?php echo $text_perrow1; ?></option>
                  <?php } else { ?>
                  <option value="col-lg-12 col-md-12 col-sm-12 col-xs-12"><?php echo $text_perrow1; ?></option>
                  <?php } ?>
                  <?php if ($perrow_id == 'col-lg-6 col-md-6 col-sm-6 col-xs-12') { ?>
                  <option value="col-lg-6 col-md-6 col-sm-6 col-xs-12" selected="selected"><?php echo $text_perrow2; ?></option>
                  <?php } else { ?>
                  <option value="col-lg-6 col-md-6 col-sm-6 col-xs-12"><?php echo $text_perrow2; ?></option>
                  <?php } ?>
                  <?php if ($perrow_id == 'col-lg-4 col-md-4 col-sm-6 col-xs-12') { ?>
                  <option value="col-lg-4 col-md-4 col-sm-6 col-xs-12" selected="selected"><?php echo $text_perrow3; ?></option>
                  <?php } else { ?>
                  <option value="col-lg-4 col-md-4 col-sm-6 col-xs-12"><?php echo $text_perrow3; ?></option>
                  <?php } ?>
                  <?php if ($perrow_id == 'col-lg-3 col-md-3 col-sm-6 col-xs-12') { ?>
                  <option value="col-lg-3 col-md-3 col-sm-6 col-xs-12" selected="selected"><?php echo $text_perrow4; ?></option>
                  <?php } else { ?>
                  <option value="col-lg-3 col-md-3 col-sm-6 col-xs-12"><?php echo $text_perrow4; ?></option>
                  <?php } ?>
                </select>
            </div>
          </div>

          
          
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-width"><?php echo $entry_width; ?></label>
            <div class="col-sm-10">
              <input type="text" name="width" value="<?php echo $width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width" class="form-control" />
              <?php if ($error_width) { ?>
              <div class="text-danger"><?php echo $error_width; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-height"><?php echo $entry_height; ?></label>
            <div class="col-sm-10">
              <input type="text" name="height" value="<?php echo $height; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height" class="form-control" />
              <?php if ($error_height) { ?>
              <div class="text-danger"><?php echo $error_height; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="status" id="input-status" class="form-control">
                <?php if ($status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>