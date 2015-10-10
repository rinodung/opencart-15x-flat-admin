<div class="bg-default">
    <div class="content-md space-padding-tb-100">
    <?php if($team_type == 'team-v1'){?>
    	<div class="team-v1">
    		<?php if(isset($iconurl) && $iconfile){?>
            <div class="team-header">
                <img class="img-responsive" src="<?php echo $iconurl;?>" alt="<?php echo $heading_title?>">
            </div>
            <?php }?>
            <div class="team-body">
                <div class="team-body-content">
                    <h3 class="team-name"><?php echo $name?></h3>
                    <p><?php echo $job_title; ?></p>
                </div>
                <div class="bo-social-icons">
                	<?php if($facebook_use){?>
                    <a class="bo-social-white radius-x" href="https://www.facebook.com/<?php echo $facebook_use?>"><i class="fa fa-facebook"></i></a>
                    <?php }?>
                    <?php if($twidget_id){?>
                    <a class="bo-social-white radius-x" href="https://twitter.com/<?php echo $twidget_id;?>"><i class="fa fa-twitter"></i></a>
                    <?php }?>
                    <?php if($pinterest_user){?>
                    <a class="bo-social-white radius-x" href="https://www.pinterest.com/<?php echo $pinterest_user?>"><i class="fa fa-pinterest"></i></a>
                    <?php }?>
                    <?php if($google_plus){?>
                    <a class="bo-social-white radius-x" href="https://plus.google.com/u/0/<?php echo $google_plus;?>"><i class="fa fa-google"></i></a>
                    <?php }?>
                    <?php if($vimeo_user){?>
                    <a class="bo-social-white radius-x" href="https://vimeo.com/<?php echo $vimeo_user;?>"><i class="fa fa-vimeo-square"></i></a>
                    <?php }?>
                    <?php if($youtube_user){?>
                    <a class="bo-social-white radius-x" href="https://www.youtube.com/user/<?php echo $youtube_user;?>"><i class="fa fa-youtube-square"></i></a>
                    <?php }?>
                </div>
            </div>
            <span class="team-info">
               <?php echo html_entity_decode($htmlcontent, ENT_QUOTES, 'UTF-8'); ?>
            </span>
        </div>
    <?php }elseif($team_type == 'team-v2'){?>
    	 <div class="team-list">
    	 	<div class="col-lg-6 col-md-6">
	    	 	<?php if(isset($iconurl) && $iconfile){?>
	            <div class="team-header">
	                <img class="img-responsive" src="<?php echo $iconurl;?>" alt="<?php echo $heading_title?>">
	            </div>
	            <?php }?>
	        </div>
	        <div class="col-lg-6 col-md-6">
	            <div class="team-body">
	                <div class="team-body-content">
	                    <h3 class="team-name"><?php echo $name?></h3>
	                    <p><?php echo $job_title; ?></p>
	                </div>
	                <span class="team-info">
	               	<?php echo html_entity_decode($htmlcontent, ENT_QUOTES, 'UTF-8'); ?>
	            	</span>
	                <div class="bo-social-icons">
	                    <?php if($facebook_use){?>
                    <a class="bo-social-white radius-x" href="https://www.facebook.com/<?php echo $facebook_use?>"><i class="fa fa-facebook"></i></a>
                    <?php }?>
                    <?php if($twidget_id){?>
                    <a class="bo-social-white radius-x" href="https://twitter.com/<?php echo $twidget_id;?>"><i class="fa fa-twitter"></i></a>
                    <?php }?>
                    <?php if($pinterest_user){?>
                    <a class="bo-social-white radius-x" href="https://www.pinterest.com/<?php echo $pinterest_user?>"><i class="fa fa-pinterest"></i></a>
                    <?php }?>
                    <?php if($google_plus){?>
                    <a class="bo-social-white radius-x" href="https://plus.google.com/u/0/<?php echo $google_plus;?>"><i class="fa fa-google"></i></a>
                    <?php }?>
                    <?php if($vimeo_user){?>
                    <a class="bo-social-white radius-x" href="https://vimeo.com/<?php echo $vimeo_user;?>"><i class="fa fa-vimeo-square"></i></a>
                    <?php }?>
                    <?php if($youtube_user){?>
                    <a class="bo-social-white radius-x" href="https://www.youtube.com/user/<?php echo $youtube_user;?>"><i class="fa fa-youtube-square"></i></a>
                    <?php }?>
	                </div>
	            </div>
	        </div>
        </div>
    <?php }else{?>
    	<div class="team-gallery">
                    <div class="team-header">
                        <?php if(isset($iconurl) && $iconfile){?>
			                <img class="img-responsive" src="<?php echo $iconurl;?>" alt="<?php echo $heading_title?>">
			            <?php }?>
                        <div class="team-gallery-box">
                            <span><?php echo html_entity_decode($htmlcontent, ENT_QUOTES, 'UTF-8'); ?></span>
                            <div class="bo-social-icons">
                                <?php if($facebook_use){?>
				                    <a class="bo-social-white radius-x" href="https://www.facebook.com/<?php echo $facebook_use?>"><i class="fa fa-facebook"></i></a>
				                    <?php }?>
				                    <?php if($twidget_id){?>
				                    <a class="bo-social-white radius-x" href="https://twitter.com/<?php echo $twidget_id;?>"><i class="fa fa-twitter"></i></a>
				                    <?php }?>
				                    <?php if($pinterest_user){?>
				                    <a class="bo-social-white radius-x" href="https://www.pinterest.com/<?php echo $pinterest_user?>"><i class="fa fa-pinterest"></i></a>
				                    <?php }?>
				                    <?php if($google_plus){?>
				                    <a class="bo-social-white radius-x" href="https://plus.google.com/u/0/<?php echo $google_plus;?>"><i class="fa fa-google"></i></a>
				                    <?php }?>
				                    <?php if($vimeo_user){?>
				                    <a class="bo-social-white radius-x" href="https://vimeo.com/<?php echo $vimeo_user;?>"><i class="fa fa-vimeo-square"></i></a>
				                    <?php }?>
				                    <?php if($youtube_user){?>
				                    <a class="bo-social-white radius-x" href="https://www.youtube.com/user/<?php echo $youtube_user;?>"><i class="fa fa-youtube-square"></i></a>
				                    <?php }?>
                            </div>
                        </div>
                    </div>
                    <div class="team-body">
                        <div class="team-body-content">
                            <h3 class="team-name"><?php echo $name?></h3>
                            <p class="team-position"><?php echo $job_title;?></p>
                        </div>
                    </div>
                </div>
    <?php }?>
    </div>
</div>