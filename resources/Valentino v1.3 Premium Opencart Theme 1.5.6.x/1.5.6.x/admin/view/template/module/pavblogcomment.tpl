<?php
/******************************************************
 * @package Pav Megamenu module for Opencart 1.5.x
 * @version 1.0
 * @author http://www.pavothemes.com
 * @copyright	Copyright (C) Feb 2012 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license		GNU General Public License version 2
*******************************************************/

echo $header; ?>
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
      <div class="buttons">
	  <a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a>
	  <a class="button" href="<?php echo $blog_manage_link;?>"><?php echo $this->language->get('button_blog_management');?></a>
	  
	  </div>
    </div>
    <div class="content">
 
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <div class="vtabs">
          <?php $module_row = 1; ?>
          <?php foreach ($modules as $module) { ?>
          <a href="#tab-module-<?php echo $module_row; ?>" id="module-<?php echo $module_row; ?>"><?php echo $tab_module . ' ' . $module_row; ?>&nbsp;<img src="view/image/delete.png" alt="" onclick="$('.vtabs a:first').trigger('click'); $('#module-<?php echo $module_row; ?>').remove(); $('#tab-module-<?php echo $module_row; ?>').remove(); return false;" /></a>
          <?php $module_row++; ?>
          <?php } ?>
          <span id="module-add"><?php echo $button_add_module; ?>&nbsp;<img src="view/image/add.png" alt="" onclick="addModule();" /></span> </div>
        <?php $module_row = 1; ?>
		  
        <?php foreach ($modules as $module) { ?>
        <div id="tab-module-<?php echo $module_row; ?>" class="vtabs-content">
         
		
          <table class="form">
		
			<tr>
				 <td class="left"><?php echo $entry_carousel; ?></td>
				  <td class="left">
        
				<input type="text" name="pavblogcomment_module[<?php echo $module_row; ?>][limit]" value="<?php echo $module['limit']; ?>" size="3"/>
                <?php if (isset($error_carousel[$module_row])) { ?>
                <span class="error"><?php echo $error_carousel[$module_row]; ?></span>
                <?php } ?></td>
			</tr>
            <tr>
              <td><?php echo $entry_layout; ?></td>
              <td><select name="pavblogcomment_module[<?php echo $module_row; ?>][layout_id]">
                 <?php foreach ($layouts as $layout) { ?>
                  <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                  <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_position; ?></td>
              <td><select name="pavblogcomment_module[<?php echo $module_row; ?>][position]">
                  <?php foreach( $positions as $pos ) { ?>
                  <?php if ($module['position'] == $pos) { ?>
                  <option value="<?php echo $pos;?>" selected="selected"><?php echo $this->language->get('text_'.$pos); ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $pos;?>"><?php echo $this->language->get('text_'.$pos); ?></option>
                  <?php } ?>
                  <?php } ?> 
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="pavblogcomment_module[<?php echo $module_row; ?>][status]">
                  <?php if ($module['status']) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_sort_order; ?></td>
              <td><input type="text" name="pavblogcomment_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
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
var module_row = <?php echo $module_row; ?>;

function addModule() {	
	html  = '<div id="tab-module-' + module_row + '" class="vtabs-content">';
	html += '  <table class="form">';

	html += '      <td><?php echo $entry_carousel; ?></td>';
	html += '    <td class="left"><input type="text"  <input type="text" name="pavblogcomment_module[' + module_row + '][limit]" value="6" size="3" /></td>';
	html += '    </tr>';
	html += '    <tr>';
	html += '      <td><?php echo $entry_layout; ?></td>';
	html += '      <td><select name="pavblogcomment_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '           <option value="<?php echo $layout['layout_id']; ?>"><?php echo addslashes($layout['name']); ?></option>';
	<?php } ?>
	html += '      </select></td>';
	html += '    </tr>';
	html += '    <tr>';
	html += '      <td><?php echo $entry_position; ?></td>';
	html += '      <td><select name="pavblogcomment_module[' + module_row + '][position]">';
	<?php foreach( $positions as $pos ) { ?>
	html += '<option value="<?php echo $pos;?>"><?php echo $this->language->get('text_'.$pos); ?></option>';      
	<?php } ?>		html += '      </select></td>';
	html += '    </tr>';
	html += '    <tr>';
	html += '      <td><?php echo $entry_status; ?></td>';
	html += '      <td><select name="pavblogcomment_module[' + module_row + '][status]">';
	html += '        <option value="1"><?php echo $text_enabled; ?></option>';
	html += '        <option value="0"><?php echo $text_disabled; ?></option>';
	html += '      </select></td>';
	html += '    </tr>';
	html += '    <tr>';
	html += '      <td><?php echo $entry_sort_order; ?></td>';
	html += '      <td><input type="text" name="pavblogcomment_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    </tr>';
	html += '  </table>'; 
	html += '</div>';
	
	$('#form').append(html);
	
	$('#module-add').before('<a href="#tab-module-' + module_row + '" id="module-' + module_row + '"><?php echo $tab_module; ?> ' + module_row + '&nbsp;<img src="view/image/delete.png" alt="" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'#module-' + module_row + '\').remove(); $(\'#tab-module-' + module_row + '\').remove(); return false;" /></a>');
	
	$('.vtabs a').tabs();
	
	$('#module-' + module_row).trigger('click');
	
	module_row++;
}
//--></script> 
<script type="text/javascript"><!--
$('.vtabs a').tabs();
//--></script> 
<script type="text/javascript"><!--
<?php $module_row = 1; ?>
<?php foreach ($modules as $module) { ?>
$('#language-<?php echo $module_row; ?> a').tabs();
<?php $module_row++; ?>
<?php } ?> 
//--></script> 
<?php echo $footer; ?>