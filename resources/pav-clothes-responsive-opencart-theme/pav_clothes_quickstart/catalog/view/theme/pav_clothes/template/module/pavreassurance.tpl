<?php

if (!empty($pavreassurances)) { ?>
		<div class="box-module-pavreassurances <?php echo $prefix_class ?>">
				<div class="row box-outer">
						<?php $i=1?>
						<?php foreach ($pavreassurances as $reassurance) { ?>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 column">
								<div class="reassurances-center <?php echo isset($reassurance['reassurance_prefixclass'])?$reassurance['reassurance_prefixclass']:""?>">
									<span class="pv-icon fa <?php echo $reassurance['select_icon'] ?>"></span>
									<div class="static-text description">
										<h3 class="title-block"><?php echo $reassurance['title']; ?></h3>
										<?php echo htmlspecialchars_decode($reassurance['caption']); ?>
										<!-- Button trigger modal -->
										<!-- <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal<?php echo $i;?>"><i class="fa fa-long-arrow-right"></i></button> -->
										<div class="mask" style="display:none;">
											<?php echo htmlspecialchars_decode($reassurance['detail']); ?>
										</div>
									</div>
								</div>
							</div>							
							<?php $i++;?>
						<?php } ?>
				</div>
		</div>
	<?php } ?>
