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
    <div class="heading">
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table id="module" class="list">
          <thead>
            <tr>
              <td class="left"><?php echo $entry_banner; ?></td>
              <td class="left"><span class="required">*</span> <?php echo $entry_dimension; ?></td>
              <td class="left">choose span</td>
              <td class="left"><?php echo $entry_layout; ?></td>
              <td class="left"><?php echo $entry_position; ?></td>
              <td class="left"><?php echo $entry_status; ?></td>
              <td class="right"><?php echo $entry_sort_order; ?></td>
              <td></td>
            </tr>
          </thead>
          <?php $module_row = 0; ?>
          <?php foreach ($modules as $module) { ?>
          <tbody id="module-row<?php echo $module_row; ?>">
            <tr>
              <td class="left"><select name="banner_module[<?php echo $module_row; ?>][banner_id]">
                  <?php foreach ($banners as $banner) { ?>
                  <?php if ($banner['banner_id'] == $module['banner_id']) { ?>
                  <option value="<?php echo $banner['banner_id']; ?>" selected="selected"><?php echo $banner['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $banner['banner_id']; ?>"><?php echo $banner['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
              <td class="left"><input type="text" name="banner_module[<?php echo $module_row; ?>][width]" value="<?php echo $module['width']; ?>" size="3" />
                <input type="text" name="banner_module[<?php echo $module_row; ?>][height]" value="<?php echo $module['height']; ?>" size="3" />
                <?php if (isset($error_dimension[$module_row])) { ?>
                <span class="error"><?php echo $error_dimension[$module_row]; ?></span>
                <?php } ?></td>
                
                <!-- choose span -->
              <td>
              	<select name="banner_module[<?php echo $module_row; ?>][span]">
              	  <?php if ($module['span'] == 'span3') { ?>
                  <option value="span3" selected="selected">span3</option>
                  <?php } else { ?>
                  <option value="span3">span3</option>
                  <?php } ?>
                  <?php if ($module['span'] == 'span4') { ?>
                  <option value="span4" selected="selected">span4</option>
                  <?php } else { ?>
                  <option value="span4">span4</option>
                  <?php } ?>
                  <?php if ($module['span'] == 'span6') { ?>
                  <option value="span6" selected="selected">span6</option>
                  <?php } else { ?>
                  <option value="span6">span6</option>
                  <?php } ?>
                  <?php if ($module['span'] == 'span8') { ?>
                  <option value="span8" selected="selected">span8</option>
                  <?php } else { ?>
                  <option value="span8">span8</option>
                  <?php } ?>
                  <?php if ($module['span'] == 'span9') { ?>
                  <option value="span9" selected="selected">span9</option>
                  <?php } else { ?>
                  <option value="span9">span9</option>
                  <?php } ?>
                  <?php if ($module['span'] == 'span12') { ?>
                  <option value="span12" selected="selected">span12</option>
                  <?php } else { ?>
                  <option value="span12">span12</option>
                  <?php } ?>
                </select>
              </td>
              <!--/-->
              
              <td class="left"><select name="banner_module[<?php echo $module_row; ?>][layout_id]">
                  <?php foreach ($layouts as $layout) { ?>
                  <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                  <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
              <td class="left"><select name="banner_module[<?php echo $module_row; ?>][position]">
                  <?php if ($module['position'] == 'content_top') { ?>
                  <option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
                  <?php } else { ?>
                  <option value="content_top"><?php echo $text_content_top; ?></option>
                  <?php } ?>
                  <!-- new position -->
              	  <?php if ($module['position'] == 'content_middle_1') { ?>
                       <option value="content_middle_1" selected="selected">Content Middle 2/3</option>
                    <?php } else { ?>
                       <option value="content_middle_1">Content Middle 2/3</option>
                    <?php } ?>
                  <!-- /new position -->
                  <!-- new position -->
              	  <?php if ($module['position'] == 'content_middle_2') { ?>
                       <option value="content_middle_2" selected="selected">Content Middle 1/3</option>
                    <?php } else { ?>
                       <option value="content_middle_2">Content Middle 1/3</option>
                    <?php } ?>
                  <!-- /new position -->
                  <?php if ($module['position'] == 'content_bottom') { ?>
                  <option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
                  <?php } else { ?>
                  <option value="content_bottom"><?php echo $text_content_bottom; ?></option>
                  <?php } ?>
                  <!-- new position -->
              	  <?php if ($module['position'] == 'content_bottom_2') { ?>
                       <option value="content_bottom_2" selected="selected">Content Bottom 2</option>
                    <?php } else { ?>
                       <option value="content_bottom_2">Content Bottom 2</option>
                    <?php } ?>
                  <!-- /new position -->
                  <?php if ($module['position'] == 'column_left') { ?>
                  <option value="column_left" selected="selected"><?php echo $text_column_left; ?></option>
                  <?php } else { ?>
                  <option value="column_left"><?php echo $text_column_left; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_right') { ?>
                  <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                  <?php } else { ?>
                  <option value="column_right"><?php echo $text_column_right; ?></option>
                  <?php } ?>
                </select></td>
              <td class="left"><select name="banner_module[<?php echo $module_row; ?>][status]">
                  <?php if ($module['status']) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
              <td class="right"><input type="text" name="banner_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
              <td class="left"><a onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="button"><?php echo $button_remove; ?></a></td>
            </tr>
          </tbody>
          <?php $module_row++; ?>
          <?php } ?>
          <tfoot>
            <tr>
              <td colspan="6"></td>
              <td class="left"><a onclick="addModule();" class="button"><?php echo $button_add_module; ?></a></td>
            </tr>
          </tfoot>
        </table>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {	
	html  = '<tbody id="module-row' + module_row + '">';
	html += '  <tr>';
	html += '    <td class="left"><select name="banner_module[' + module_row + '][banner_id]">';
	<?php foreach ($banners as $banner) { ?>
	html += '      <option value="<?php echo $banner['banner_id']; ?>"><?php echo addslashes($banner['name']); ?></option>';
	<?php } ?>
	html += '    </select></td>';
	html += '    <td class="left"><input type="text" name="banner_module[' + module_row + '][width]" value="" size="3" /> <input type="text" name="banner_module[' + module_row + '][height]" value="" size="3" /></td>'; 
	
	html += '    <td class="left"><select name="banner_module[' + module_row + '][span]">';
	html += '      <option value="span3">span3</option>';
	html += '      <option value="span4">span4</option>';
	html += '      <option value="span6">span6</option>';
	html += '      <option value="span8">span8</option>';
	html += '      <option value="span9">span9</option>';
	html += '      <option value="span12">span12</option>';
	html += '    </select></td>';
	
	html += '    <td class="left"><select name="banner_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '      <option value="<?php echo $layout['layout_id']; ?>"><?php echo addslashes($layout['name']); ?></option>';
	<?php } ?>
	html += '    </select></td>';
	html += '    <td class="left"><select name="banner_module[' + module_row + '][position]">';
	html += '      <option value="content_top"><?php echo $text_content_top; ?></option>';
	// new position
	html += '      <option value="content_middle_1">Content Middle 2/3</option>';
	html += '      <option value="content_middle_2">Content Middle 1/3</option>';
	//
	html += '      <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
	// new position
	html += '      <option value="content_bottom_2">Content Bottom 2</option>';
	//
	html += '      <option value="column_left"><?php echo $text_column_left; ?></option>';
	html += '      <option value="column_right"><?php echo $text_column_right; ?></option>';
	html += '    </select></td>';
	html += '    <td class="left"><select name="banner_module[' + module_row + '][status]">';
    html += '      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '      <option value="0"><?php echo $text_disabled; ?></option>';
    html += '    </select></td>';
	html += '    <td class="right"><input type="text" name="banner_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    <td class="left"><a onclick="$(\'#module-row' + module_row + '\').remove();" class="button"><?php echo $button_remove; ?></a></td>';
	html += '  </tr>';
	html += '</tbody>';
	
	$('#module tfoot').before(html);
	
	module_row++;
}
//--></script> 
<?php echo $footer; ?>