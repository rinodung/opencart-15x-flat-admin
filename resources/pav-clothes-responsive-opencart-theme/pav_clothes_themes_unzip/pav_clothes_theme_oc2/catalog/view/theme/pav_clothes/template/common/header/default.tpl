<div id="header">
<nav id="topbar" class="topbar clearfix">
  <div class="container">
  	<div class="pull-left hidden-sm hidden-xs">
		<ul class="links">
			<!-- <li><a class="first" href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li> -->
			<li><a class="account" href="<?php echo $account; ?>"><span class="icon fa fa-user"></span><span class="text-link hidden-xs hidden-sm"><?php echo $text_account; ?></span></a></li>
			
			<li><a class="wishlist" href="<?php echo $wishlist; ?>" id="wishlist-total"><span class="icon fa fa-heart"></span><span class="text-link hidden-xs hidden-sm"><?php echo $text_wishlist; ?></span></a></li>
			

			<li><a class="shoppingcart" href="<?php echo $shopping_cart; ?>"><span class="icon fa fa-shopping-cart"></span><span class="text-link hidden-xs hidden-sm"><?php echo $text_shopping_cart; ?></span></a></li>
			<li><a class="last checkout" href="<?php echo $checkout; ?>"><span class="icon fa fa-file"></span><span class="text-link hidden-xs hidden-sm"><?php echo $text_checkout; ?></span></a></li> 
			<li  class="login">
				<?php if ($logged) { ?>
			    	<a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
			    <?php } else { ?>
				    <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a>
				    <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>  
			    <?php } ?>
			</li>
		</ul>
	</div>
	<div class="pull-right">
		<div id="search" class="btn pull-left hidden-sm hidden-xs">
			<?php echo $search; ?>
		</div>
		<div class="language pull-left hidden-sm hidden-xs">
			<?php echo $language; ?>
		</div>
		<div class="currency pull-left hidden-sm hidden-xs">
			<?php echo $currency; ?>
		</div> 													
	</div>
	<div class="show-mobile hidden-lg hidden-md">
		<div class="support pull-right">
			<div class="quickaccess-toggle">
				<i class="fa fa-sun-o"></i>								
			</div>						
			<div class="inner-toggle">
				<div id="mobile-currency" class="currency pull-left">
					<?php echo $currency; ?>
				</div> 
				<div id="mobile-language" class="language pull-left">
					<?php echo $language; ?>
				</div>
			</div>														
		</div>
		<div id="search_mobile" class="search pull-right">				
			<div class="quickaccess-toggle">
				<i class="fa fa-search"></i>								
			</div>																								
			<div class="inner-toggle">						
				<div id="search-m" class="">
					<?php echo str_replace('name="search"','name="search-m"',$search); ?>
				</div>
			</div>
		</div>	
		<div class="quick-user pull-right">
			<div class="quickaccess-toggle">
				<i class="fa fa-user"></i>															
			</div>	
			<div class="inner-toggle">
				<div class="login links">
					<?php if ($logged) { ?>
			    	<a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
				    <?php } else { ?>
					    <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a>
					    <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>  
				    <?php } ?>
				</div>
			</div>						
		</div>
		<div class="quick-access pull-right">
			<div class="quickaccess-toggle">
				<i class="fa fa-list"></i>															
			</div>	
			<div class="inner-toggle">
				<ul class="links pull-left">
					<li><a class="account" href="<?php echo $account; ?>"><span class="icon fa fa-user"></span><?php echo $text_account; ?></a></li>
					<li><a class="shoppingcart" href="<?php echo $shopping_cart; ?>"><span class="icon fa fa-dollar"></span><?php echo $text_shopping_cart; ?></a></li>
					<li><a class="last checkout" href="<?php echo $checkout; ?>"><span class="icon fa fa-file"></span><?php echo $text_checkout; ?></a></li> 					 		
				</ul>
			</div>						
		</div>
		<div class="quick-access pull-right">
            <button data-toggle="offcanvas" class="button visible-xs visible-sm" type="button"><span class="fa fa-bars"></span> Menu</button>
        </div>			
	</div>

  </div>
</nav>
<header id="header-main">
<div class="container">
	<div class="header-wrap">	
		<div class="pull-left inner">
			<div class="pull-left inner">
				<?php if( $logoType=='logo-theme'){ ?>
				<div  id="logo-theme" class="logo-store">
					<a href="<?php echo $home; ?>">
						<span><?php echo $name; ?></span>
					</a>
				</div>
				<?php } elseif ($logo) { ?>
					<div id="logo" class="logo-store">
						<a href="<?php echo $home; ?>">
							<img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
						</a>
					</div>
				<?php } ?>
			</div>
			<div class="pull-right inner">
				<div id="pav-mainnav">
					<div class="container">
						<div class="navbar navbar-inverse">
						<?php
						/**
						 * Main Menu modules: as default if do not put megamenu, the theme will use categories menu for main menu
						 */
						$modules = $helper->renderModule('pavmegamenu');

						if (count($modules) && !empty($modules)) { ?>

						    
						<?php echo $modules; ?>
						 

						<?php } elseif ($categories) { ?>

						    <div class="navbar navbar-inverse"> 
						        <nav id="mainmenutop" class="megamenu" role="navigation"> 
						            <div class="navbar-header">
						                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
						                    <span class="sr-only">Toggle navigation</span>
						                    <span class="fa fa-bars"></span>
						                </button>
						            </div>

						            <div class="collapse navbar-collapse navbar-ex1-collapse">
						                <ul class="nav navbar-nav">
						                    
						                    <?php foreach ($categories as $category) { ?>

						                        <?php if ($category['children']) { ?>			
						                            <li class="parent dropdown deeper ">
						                                <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?>
						                                    <b class="fa fa-angle-down"></b>
						                                    <span class="triangles"></span>
						                                </a>
						                            </li>
						                        <?php } else { ?>
						                            <li>
						                                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
							                            <?php } ?>
							                            <?php if ($category['children']) { ?>
							                                <ul class="dropdown-menu">
							                                    <?php for ($i = 0; $i < count($category['children']);) { ?>
							                                        <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
							                                        <?php for (; $i < $j; $i++) { ?>
							                                            <?php if (isset($category['children'][$i])) { ?>
							                                                <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
							                                            <?php } ?>
							                                        <?php } ?>
							                                    <?php } ?>
							                                </ul>
							                            <?php } ?>
							                    	</li>
							                <?php } ?>
						                </ul>
						            </div>	
						        </nav>
						    </div>   
						<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="pull-right inner hidden-xs hidden-sm">
			<?php echo $cart; ?>	
		</div>
	</div>
</div>  
</header>
</div>





