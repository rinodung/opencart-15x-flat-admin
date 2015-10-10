<?php echo $header; ?>

			<aside class="right-side">
			
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> <?php echo $error_warning; ?></div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><span class="glyphicon glyphicon-ok-circle"></span> <?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><i class="ion-android-sort"></i> <?php echo $heading_title; ?></h1>
      
			<div class="buttons row button-group">
				<div class="btn-group">
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class=" glyphicon glyphicon-cog"></span> <?php echo $text_actions; ?> <span class="caret"></span></button>
				<ul class="dropdown-menu" role="menu">
				<li><a href="<?php echo $insert; ?>"><i class="ion-ios7-plus"></i> <?php echo $button_insert; ?></a></li>
<li><a href="<?php echo $repair; ?>"><i class="ion-hammer"></i> <?php echo $button_repair; ?></a></li>
				<li class="divider"></li>
				<li><a onclick="$('#form').submit();"><i class="ion-android-trash"></i> <?php echo $button_delete; ?></a></li>
				</ul>
				</div>
			</div>
			
    </div>
    <div class="content">
      <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="table table-bordered-row">
          <thead>
            <tr>
              <td width="1" style="text-align: center;"></td>
<td class="center"><?php echo $column_image; ?></td>
              <td class="left"><?php echo $column_name; ?></td>
              <td class="right"><?php echo $column_sort_order; ?></td>
              <td class="right"><?php echo $column_action; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php if ($categories) { ?>
            <?php foreach ($categories as $category) { ?>
            <tr>
              <td style="text-align: center;"><?php if ($category['selected']) { ?>
                <input class="check-access" type="checkbox" name="selected[]" value="<?php echo $category['category_id']; ?>" checked="checked" />
                <?php } else { ?>
                <input class="check-access" type="checkbox" name="selected[]" value="<?php echo $category['category_id']; ?>" />
                <?php } ?></td>
<td class="center"><img class="cover" src="<?php echo $category['image']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" /></td>
              <td class="left"><?php echo $category['name']; ?></td>
              <td class="right"><?php echo $category['sort_order']; ?></td>
              <td class="right"><?php foreach ($category['action'] as $action) { ?>
                <a class="action-link" href="<?php echo $action['href']; ?>"><i class="ion-compose"></i> <?php echo $action['text']; ?></a>
                <?php } ?></td>
            </tr>
            <?php } ?>
            <?php } else { ?>
            <tr>
              <td class="center" colspan="4"><?php echo $text_no_results; ?></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </form>
      <div class="pagination"><?php echo $pagination; ?></div>
    </div>
  </div>
</div>

			</aside>
			
<?php echo $footer; ?>