<?php echo $header; ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
	<div id="content">
		<div class="row">
			<!-- 
				Middle Blocks
			-->
			<?php if($this->config->get('firstmblock_title_' . $this->config->get('config_language_id')) != '') { ?> 
			<div class="blocksWrap">
				<?php if($this->config->get('firstmblock_title_' . $this->config->get('config_language_id')) != '') { ?> 
				<div class="span4">
					<div class="block">
						 <a href="<?php echo $this->config->get('firstmblock_link')?>">
							 <?php  if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
					         else $path_image = HTTP_IMAGE; 
					         if($this->config->get('firstmblock_img')!='') { ?>
					         <img src="<?php echo $path_image . $this->config->get('firstmblock_img') ?>" alt="" ><!--custom image-->
					         <?php } ?> 
					         
							<?php if($this->config->get('firstmblock_title_' . $this->config->get('config_language_id')) != '') { ?> 
					        <h2><?php echo $this->config->get('firstmblock_title_' . $this->config->get('config_language_id'))?></h2>
					        <?php } ?>
							<p><?php echo $this->config->get('firstmblock_desc_' . $this->config->get('config_language_id'))?>...</p>
						</a>
					</div>		
				</div><!--/block-->
				<?php } ?> 
				
				<?php if($this->config->get('secondmblock_title_' . $this->config->get('config_language_id')) != '') { ?> 
				<div class="span4">
					<div class="block">
						 <a href="<?php echo $this->config->get('secondmblock_link')?>">
							 <?php  if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
					         else $path_image = HTTP_IMAGE; 
					         if($this->config->get('secondmblock_img')!='') { ?>
					         <img src="<?php echo $path_image . $this->config->get('secondmblock_img') ?>" alt="" ><!--custom image-->
					         <?php } ?> 
							<?php if($this->config->get('secondmblock_title_' . $this->config->get('config_language_id')) != '') { ?> 
					        <h2><?php echo $this->config->get('secondmblock_title_' . $this->config->get('config_language_id'))?></h2>
					        <?php } ?>
							<p><?php echo $this->config->get('secondmblock_desc_' . $this->config->get('config_language_id'))?>...</p>
						</a>
					</div>		
				</div><!--/block-->
				<?php } ?> 
				
				<?php if($this->config->get('thirdmblock_title_' . $this->config->get('config_language_id')) != '') { ?> 
				<div class="span4">
					<div class="block">
						<a href="<?php echo $this->config->get('thirdmblock_link')?>">
							 <?php  if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
					         else $path_image = HTTP_IMAGE; 
					         if($this->config->get('thirdmblock_img')!='') { ?>
					         <img src="<?php echo $path_image . $this->config->get('thirdmblock_img') ?>" alt="" ><!--custom image-->
					         <?php } ?>
							<?php if($this->config->get('thirdmblock_title_' . $this->config->get('config_language_id')) != '') { ?> 
					        <h2><?php echo $this->config->get('thirdmblock_title_' . $this->config->get('config_language_id'))?></h2>
					        <?php } ?>
							<p><?php echo $this->config->get('thirdmblock_desc_' . $this->config->get('config_language_id'))?>...</p>
						</a>
					</div>		
				</div><!--/block-->
				<?php } ?> 
			</div>
			<?php } ?>
	        <div class="clearfix"></div>
			<?php echo $content_top; ?>             
			<div class="clearfix"></div>
			<?php echo $content_middle_1; ?>      
			<?php echo $content_middle_2; ?>      
			<?php echo $content_bottom; ?></div>
</div>

<?php echo $content_bottom_2; ?>

<?php echo $footer; ?>