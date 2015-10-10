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
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
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
      <div class="toolbar"><?php require( dirname(__FILE__).'/action_bar.tpl' ); ?></div>
      <div class="content">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
          <input type="hidden" name="action" id="action" value=""/>
          <table class="list">
            <thead>
              <tr>
                <td class="left" style="width:3%"></td>
                <td class="left" style="width:4%">Id</td>
                <td class="left" style="width:40%">
                 <?php echo $this->language->get("column_name"); ?></td>
                <td class="left" style="width:40%">
                  <?php echo $this->language->get("column_lastchange"); ?></td>
                <td class="right"><?php echo $this->language->get("column_actions"); ?></td>
              </tr>
            </thead>
            <tbody>
              <?php if ($templates) { ?>
              <?php foreach ($templates as $key=>$template) { ?>
              <tr>
                <td><input type="checkbox" name="templates[]" id="template<?php echo $key;?>" value="<?php echo $template["template_id"];?>"/></td>
                <td><?php echo $template["template_id"]; ?></td>
                <td class="left"><?php echo $template['name']; ?></td>
                <td class="left"><?php echo !empty($template['date_modified'])?$template['date_modified']:$template['date_added']; ?></td>
                <td class="right">
                  [ <a href="<?php echo 'index.php?route=module/pavnewsletter/template&id='.$template['template_id'].'&token='.$token; ?>"><?php echo $this->language->get("text_edit"); ?></a> ]</td>
              </tr>
              <?php } ?>
              <?php } else { ?>
              <tr>
                <td class="center" colspan="4"><?php echo $this->language->get("text_no_results"); ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </form>
        <div class="pagination"><?php echo $pagination; ?></div>
      </div>
      </div>
    <div class="clear clr"></div>
  </div>
</div>
<?php echo $footer; ?>