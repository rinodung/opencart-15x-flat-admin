<?php echo '<?xml version="1.0" encoding="UTF-8"?>' . "\n"; ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
	<meta charset="utf-8" />
	<title><?php echo $title; ?></title>
	<base href="<?php echo $base; ?>" />
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<meta name="author" content="" />
	
	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
	
	<link rel="stylesheet" type="text/css" href="view/stylesheet/flat-admin/stylesheet.css" />
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,300italic,400italic,600italic' rel='stylesheet' />
	
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
	
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<script type="text/javascript" src="view/javascript/flat-admin/jquery-2.1.1.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<script type="text/javascript" src="view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link type="text/css" href="view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" rel="stylesheet" />
<script type="text/javascript" src="view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="view/javascript/jquery/superfish/js/superfish.js"></script>
<script type="text/javascript" src="view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<script type="text/javascript">
//-----------------------------------------
// Confirm Actions (delete, uninstall)
//-----------------------------------------
$(document).ready(function(){
    // Confirm Delete
    $('#form').submit(function(){
        if ($(this).attr('action').indexOf('delete',1) != -1) {
            if (!confirm('<?php echo $text_confirm; ?>')) {
                return false;
            }
        }
    });
    // Confirm Uninstall
    $('a').click(function(){
        if ($(this).attr('href') != null && $(this).attr('href').indexOf('uninstall', 1) != -1) {
            if (!confirm('<?php echo $text_confirm; ?>')) {
                return false;
            }
        }
    });
        });
    </script>
</head>

<body class="skin-black">
<div id="preloader"><div id="status">&nbsp;</div></div>
	
	<?php if ($logged) { ?>
	<header class="header">
	<a class="logo" id="logo" href="<?php echo $home; ?>"><?php echo $name; ?> <span><?php echo $heading_title; ?></span></a>
	
	<nav class="navbar navbar-static-top" role="navigation">
    
	<a class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
    <span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    </a>
		
		<div class="navbar-right">
			<ul class="nav navbar-nav">
				<li class="dropdown messages-menu <?php if ($total_pending_order == "0") { echo "hidden"; } ?>">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-shopping-cart"></span>
                    <span class="label label-success"><?php echo $total_pending_order; ?></span>
                    </a>
					<ul class="dropdown-menu">
                        <li class="header"><?php echo $total_pending_order; if ($total_pending_order == "1") { echo '&nbsp;' . $text_pending_order_evidence; } else { echo '&nbsp;' . $text_pending_orders_evidence; } ?></li>
						<li class="footer"><a href="<?php echo $link_to_sale; ?>&filter_order_status_id=1"><?php echo $text_view; ?> <i class="ion-ios7-arrow-thin-right"></i></a></li>
                    </ul>
				</li>
				<li class="dropdown messages-menu <?php if ($total_customer_approval == "0") { echo "hidden"; } ?>">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user"></span>
                    <span class="label label-success"><?php echo $total_customer_approval; ?></span>
                    </a>
					<ul class="dropdown-menu">
                        <li class="header"><?php echo $total_customer_approval; if ($total_customer_approval == "1") { echo '&nbsp;' . $text_approval_customer_evidence; } else { echo '&nbsp;' . $text_approval_customers_evidence; } ?></li>
						<li class="footer"><a href="<?php echo $link_to_customers; ?>"><?php echo $text_view; ?> <i class="ion-ios7-arrow-thin-right"></i></a></li>
                    </ul>
				</li>
			</ul>
		</div>
	</nav>		
	</header>
	
	<div class="wrapper row-offcanvas row-offcanvas-left">
            <aside class="left-side sidebar-offcanvas">
                <section class="sidebar">
                    <div class="user-panel">
                        <div class="pull-left info">
                            <p><?php echo $logged; ?> <span id="calendar-date"><i class="ion-android-clock"></i> <?php echo date("F j, Y"); ?> - <span id="clock"></span></span></p>
                            <a href="<?php echo $logout; ?>" title="<?php echo $text_logout; ?>"><?php echo $text_logout; ?> <i class="ion-log-out"></i></a> -&nbsp;&nbsp;<a href="<?php echo $store; ?>" target="_blank"><?php echo $text_front; ?> <i class="ion-arrow-return-right"></i></a>
							<ul>
								<?php foreach ($stores as $stores) { ?>
								<li><a href="<?php echo $stores['href']; ?>" target="_blank"><?php echo $stores['name']; ?></a></li>
								<?php } ?>
							</ul>
						</div>
                    </div>
					<nav class="active" id="column-left">
                    
					<?php include('menu.tpl'); ?>
					
					</nav>
				</section>
			</aside>

		<?php } ?>