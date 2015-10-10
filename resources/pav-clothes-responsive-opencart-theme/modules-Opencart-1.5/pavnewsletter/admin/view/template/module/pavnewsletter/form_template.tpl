<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="left-panel">
      <div class="logo"><h1><?php echo $heading_title; ?> </h1></div>
      <div class="slidebar"><?php require( dirname(__FILE__).'/toolbar.tpl' ); ?></div>
      <div class="clear clr"></div>
    </div>
    <div class="right-panel">
      <div class="heading">
        <h1><?php echo $this->language->get("text_templates"); ?></h1>
      </div>
      <div class="toolbar"><?php $menu_active="template"; require( dirname(__FILE__).'/action_bar.tpl' ); ?></div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
           <input type="hidden" name="template[template_id]" value="<?php echo $template_id;?>" />
           <input type="hidden" name="action" id="action" value=""/>
           <table class="form">
              <tr>
                <td colspan="2"><strong><?php echo $this->language->get("entry_general_template");?></strong></td>
              </tr>
              <tr>
                <td><?php echo $this->language->get("entry_name"); ?></td>
                <td><input type="text" name="template[name]" value="<?php echo isset($template['name'])?$template['name']:""; ?>" size="50" /></td>
              </tr>
              <tr>
                <td><?php echo $this->language->get("entry_template_file"); ?></td>
                <td>
                  <input type="text" name="template[template_file]" value="<?php echo isset($template['template_file'])?$template["template_file"]:""; ?>" /> <a id="button-upload" class="button"><?php echo $button_upload; ?></a>
                  <?php if ($error_filename) { ?>
                  <span class="error"><?php echo $error_filename; ?></span>
                  <?php } ?> 
                  <br/>
                  <br/>
                  <a href="javascript:;" onclick="$('#action').val('get_template');$('#form').submit();" class="button"><?php echo $this->language->get("text_get_template");?></a>
                </td>
              </tr>
              
              <tr>
                <td><?php echo $this->language->get("entry_sort_order"); ?></td>
                <td><input type="text" name="template[ordering]" value="<?php echo isset($template['ordering'])?$template['ordering']:""; ?>" size="3" /></td>
              </tr>
            </table>
          <p><strong><?php echo $this->language->get("entry_template");?></strong></p>  
          <div id="language-1" class="htabs">
            <?php $module_row = 0; foreach ($languages as $language) { $module_row++;?>
            <a href="#tab-language-<?php echo $module_row; ?>-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php $module_row = 0; foreach ($languages as $language) { $module_row++;?>
          <div id="tab-language-<?php echo $module_row; ?>-<?php echo $language['language_id']; ?>">
            <table class="form">
			      <tr>
                <td><?php echo $this->language->get("entry_subject"); ?></td>
                <td><input size="60" name="template_description[subject][<?php echo $language['language_id']; ?>]" id="module_subject-1-<?php echo $language['language_id']; ?>" value="<?php echo isset($template_description[$language['language_id']]['subject']) ? $template_description[$language['language_id']]['subject'] : ''; ?>"/>
                  <?php if ( isset($error['subject']) ) { ?>
                  <span class="error"><?php echo $error['subject']; ?></span>
                  <?php } ?>
                </td>
              </tr>
			  
              <tr>
                <td><?php echo $this->language->get("entry_message"); ?></td>
                <td>
                  <?php if ( isset($error['message']) ) { ?>
                  <span class="error"><?php echo $error['message']; ?></span>
                  <?php } ?>
                  <textarea name="template_description[template_message][<?php echo $language['language_id']; ?>]" id="template_message-1-<?php echo $language['language_id']; ?>"><?php echo isset($template_description[$language['language_id']]['template_message']) ? $template_description[$language['language_id']]['template_message'] : ''; ?></textarea><br/>
                  <?php echo $this->language->get("text_template_help");?>
                </td>
              </tr>
            </table>
          </div>
          <?php } ?>
      </form>
    </div>
  </div>
    <div class="clear clr"></div>
  </div>
</div>
<script type="text/javascript"><!--
$('#tabs a').tabs();
$(".vtabs a").tabs();
--></script>
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
CKEDITOR.replace('template_message-1-<?php echo $language['language_id']; ?>', {
  height:600,
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>
//--></script> 
<script type="text/javascript" src="view/javascript/jquery/ajaxupload.js"></script> 
<script type="text/javascript">
new AjaxUpload('#button-upload', {
  action: 'index.php?route=module/pavnewsletter/upload&token=<?php echo $token; ?>',
  name: 'file',
  autoSubmit: true,
  responseType: 'json',
  onSubmit: function(file, extension) {
    $('#button-upload').after('<img src="view/image/loading.gif" class="loading" style="padding-left: 5px;" />');
    $('#button-upload').attr('disabled', true);
  },
  onComplete: function(file, json) {
    $('#button-upload').attr('disabled', false);
    
    if (json['success']) {
      alert(json['success']);
      
      $('input[name=\'template\[template_file\]\']').attr('value', json['filename']);
    }
    
    if (json['error']) {
      alert(json['error']);
    }
    
    $('.loading').remove(); 
  }
});
</script>
<script type="text/javascript"><!--
$('#language-1 a').tabs();
//--></script> 
<?php echo $footer; ?>