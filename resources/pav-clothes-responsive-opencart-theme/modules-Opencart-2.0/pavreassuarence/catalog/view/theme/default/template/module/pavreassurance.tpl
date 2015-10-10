<?php

if (!empty($pavreassurances)) { ?>
		<div class="box-module-pavreassurances <?php echo $prefix_class ?>">
				<div class="row box-outer">
						<?php $i=1?>
						<?php foreach ($pavreassurances as $reassurance) { ?>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 column">
								<div class="reassurances-center <?php echo isset($reassurance['reassurance_prefixclass'])?$reassurance['reassurance_prefixclass']:""?>">
									<span class="icon-name fa <?php echo $reassurance['select_icon'] ?>"></span>
									<div class="description">
										<h4><?php echo $reassurance['title']; ?></h4>
										<?php echo htmlspecialchars_decode($reassurance['caption']); ?>
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal<?php echo $i;?>"><i class="fa fa-long-arrow-right"></i></button>
										<div class="mask" style="display:none;">
											<?php echo htmlspecialchars_decode($reassurance['detail']); ?>
										</div>
									</div>
								</div>
							</div>
							<!-- Modal -->
							<div class="modal fade" id="myModal<?php echo $i;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <span class="icon-name fa <?php echo $reassurance['select_icon'] ?>"></span>
							        <h4><?php echo $reassurance['title']; ?></h4>
							        <?php echo htmlspecialchars_decode($reassurance['caption']); ?>
							      </div>
							      <div class="modal-body">
							       		<?php echo htmlspecialchars_decode($reassurance['detail']); ?>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							      </div>
							    </div>
							  </div>
							</div>
							<?php $i++;?>
						<?php } ?>
				</div>
		</div>
	<?php } ?>
