<?php echo $header; ?>

	<aside class="right-side">                
		<section class="content-header">
		<h1><span class="glyphicon glyphicon-dashboard"></span> <?php echo $heading_title; ?></h1>
						
		<ol class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		<?php } ?>
		</ol>
		</section>

		<?php if ($error_install) { ?>
		<div class="warning alert alert-warning" role="alert"><?php echo $error_install; ?></div>
		<?php } ?>
		
		<?php if ($error_image) { ?>
		<div class="warning alert alert-warning" role="alert"><?php echo $error_image; ?></div>
		<?php } ?>
		  
		<?php if ($error_image_cache) { ?>
		<div class="warning alert alert-warning" role="alert"><?php echo $error_image_cache; ?></div>
		<?php } ?>
		
		<?php if ($error_cache) { ?>
		<div class="warning alert alert-warning" role="alert"><?php echo $error_cache; ?></div>
		<?php } ?>
		
		<?php if ($error_download) { ?>
		<div class="warning alert alert-warning" role="alert"><?php echo $error_download; ?></div>
		<?php } ?>
		
		<?php if ($error_logs) { ?>
		<div class="warning alert alert-warning" role="alert"><?php echo $error_logs; ?></div>
		<?php } ?>
		

		<section class="content">

		<div class="row">
			
			<div id="sales-today" class="col-lg-3 col-xs-12 col-sm-6">
                <div class="small-box">
                    <div class="inner">
					<h2><?php echo $total_sale_today; ?></h2>
                    <p><?php echo $text_today_sale; ?></p>
                    </div>
                    <a href="<?php echo $link_to_sale; ?>&filter_date_added=<?php echo date("Y-m-d"); ?>" class="small-box-footer"><?php echo $text_view; ?> <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
                </div>
            </div>
			
			<div id="sales-week" class="col-lg-3 col-xs-12 col-sm-6">
                <div class="small-box">
                    <div class="inner">
					<h2><?php echo $total_sale_week; ?></h2>
                    <p><?php echo $text_week_sale; ?></p>
                    </div>
                    <a href="<?php echo $link_to_sale; ?>" class="small-box-footer"><?php echo $text_view; ?> <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
                </div>
            </div>
			
			<div id="sales-month" class="col-lg-3 col-xs-12 col-sm-6">
                <div class="small-box">
                    <div class="inner">
					<h2><?php echo $total_sale_month; ?></h2>
                    <p><?php echo $text_month_sale; ?></p>
                    </div>
                    <a href="<?php echo $link_to_sale; ?>" class="small-box-footer"><?php echo $text_view; ?> <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
                </div>
            </div>
			
			<div id="sales" class="col-lg-3 col-xs-12 col-sm-6">
                <div class="small-box">
                    <div class="inner">
					<h2><?php echo $total_sale_year; ?></h2>
                    <p><?php echo $text_year_sale; ?></p>
                    </div>
                    <a href="<?php echo $link_to_sale; ?>" class="small-box-footer"><?php echo $text_view; ?> <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
                </div>
            </div>
			
			<div id="orders-overview" class="col-lg-3 col-xs-12 col-sm-6">
                <div class="small-box">
                    <div class="inner">
					<h2><?php echo $total_order; ?></h2>
                    <p><?php echo $text_orders; ?></p>
                    </div>
                    <a href="<?php echo $link_to_sale; ?>" class="small-box-footer"><?php echo $text_view; ?> <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
                </div>
            </div>
			
			<div id="pending-orders" class="col-lg-3 col-xs-12 col-sm-6">
                <div class="small-box <?php if ($total_pending_order > 0) { echo "evidence"; } ?>">
                    <div class="inner">
					<h2><?php echo $total_pending_order; ?></h2>
                    <p><?php echo $text_pending_orders; ?></p>
                    </div>
                    <a href="<?php echo $link_to_sale; ?>&filter_order_status_id=1" class="small-box-footer"><?php echo $text_view; ?> <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
                </div>
            </div>
			
			<div id="new-reviews" class="col-lg-3 col-xs-12 col-sm-6">
                <div class="small-box <?php if ($total_review_approval > 0) { echo "evidence"; } ?>">
                    <div class="inner">
					<h2><?php echo $total_review_approval; ?></h2>
                    <p><?php echo $text_new_reviews; ?></p>
                    </div>
                    <a href="<?php echo $link_to_reviews; ?>&sort=r.status&order=ASC" class="small-box-footer"><?php echo $text_view; ?> <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
                </div>
            </div>
			
			<div id="awaiting-customers" class="col-lg-3 col-xs-12 col-sm-6">
                <div class="small-box <?php if ($total_customer_approval > 0) { echo "evidence"; } ?>">
                    <div class="inner">
					<h2><?php echo $total_customer_approval; ?></h2>
                    <p><?php echo $text_awaiting_customers; ?></p>
                    </div>
                    <a href="<?php echo $link_to_customers; ?>&filter_approved=0" class="small-box-footer"><?php echo $text_view; ?> <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
                </div>
            </div>
			
		</div>

		</section>
		
		
		<!-- Last 10 Orders -->
		
		<section class="content-margin">
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading"><h2><span class="glyphicon glyphicon-shopping-cart"></span> <?php echo $text_latest_10_orders; ?></h2></div>
					<div class="panel-body table-responsive">
					<table class="table table-hover">
						<thead>
						  <tr>
							<td class="right"><?php echo $column_order; ?></td>
							<td class="left"><?php echo $column_customer; ?></td>
							<td class="left"><?php echo $column_status; ?></td>
							<td class="left"><?php echo $column_date_added; ?></td>
							<td class="right"><?php echo $column_total; ?></td>
							<td class="right"><?php echo $column_action; ?></td>
						  </tr>
						</thead>
						<tbody>
						  <?php if ($orders) { ?>
						  <?php foreach ($orders as $order) { ?>
						  <tr>
							<td class="right"><?php echo $order['order_id']; ?></td>
							<td class="left"><?php echo $order['customer']; ?></td>
							<td class="left"><?php echo $order['status']; ?></td>
							<td class="left"><?php echo $order['date_added']; ?></td>
							<td class="right"><?php echo $order['total']; ?></td>
							<td class="right"><?php foreach ($order['action'] as $action) { ?>
							  <a class="btn btn-info btn-sm" href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?> <i class="ion-arrow-right-c"></i></a>
							  <?php } ?></td>
						  </tr>
						  <?php } ?>
						  <?php } else { ?>
						  <tr>
							<td class="center" colspan="6"><?php echo $text_no_results; ?></td>
						  </tr>
						  <?php } ?>
						</tbody>
					</table>
					</div>
				
			</div>
		</div>
		</section>
		
		
		<!-- Statistics -->
		<script class="include" type="text/javascript" src="view/javascript/pie/jquery.jqplot.min.js"></script>
		<script class="include" language="javascript" type="text/javascript" src="view/javascript/pie/jqplot.pieRenderer.min.js"></script>
		<script class="include" language="javascript" type="text/javascript" src="view/javascript/pie/jqplot.donutRenderer.min.js"></script>
		<script class="include" language="javascript" type="text/javascript" src="view/javascript/pie/jqplot.highlighter.min.js"></script>
		<script class="include" language="javascript" type="text/javascript" src="view/javascript/pie/jqplot.dateAxisRenderer.min.js"></script>
		
		
		<section class="content-margin">
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading"><h2><span class="glyphicon glyphicon-stats"></span> <?php echo $text_statistics; ?></h2></div>
					<div class="panel-body" id="this-year">
						<div class="range">
						<select id="range" onchange="getSalesChart(this.value)">
							<option value="day"><?php echo $text_day; ?></option>
							<option value="week"><?php echo $text_week; ?></option>
							<option value="month"><?php echo $text_month; ?></option>
							<option value="year"><?php echo $text_year; ?></option>
						</select>
						</div>
						<div id="report"></div>
					</div>
			</div>
		</div>
		
		<div class="row">
			<!-- Top 5 Products -->
			<div id="best-sellers" class="panel panel-default col-md-6">
				<div class="panel-heading"><h2><span class="glyphicon glyphicon-star"></span> <?php echo $bestsellers_title; ?></h2></div>
					<div class="panel-body">
						<p><a class="btn btn-default btn-xs" href="<?php echo $report_product_purchased; ?>"><?php echo $text_view_all; ?> <i class="ion-arrow-right-c"></i></a></p>
						<div id="bestsellers"></div>
						<script type="text/javascript">
							$(document).ready(function(){
								var datab = [<?php $bs = "0"; if (!empty ($sellers)) { foreach($sellers as $seller) { $bs++; if($bs <= "5") { ?>["<?php echo $seller['name'] ?> <?php echo $seller['model']; ?><span class=\"additional\"><?php echo $seller['quantity']; if ($seller['quantity'] == "1" ){ echo $item; } else { echo $items; } ?> = <?php echo $seller['total'] ?></span>", <?php echo $seller['quantity'] ?>] <?php if($bs != "5") { ?>,<?php } ?><?php } else { break;}}}?>];
							
									<?php if (!empty ($sellers)) { ?>
									var plot2 = $.jqplot ('bestsellers', [datab], 
									<?php } else { ?>
									var plot2 = $.jqplot ('bestsellers', [[null]],
									<?php } ?>
									{ 
									shadow: false,
									seriesDefaults: {
										renderer:$.jqplot.DonutRenderer,
										rendererOptions: {
											sliceMargin: 1,
											startAngle: -90,
											showDataLabels: true,
											shadowDepth: 0
											}
										}, 
										legend: { show:true, location: 'e', xoffset: 12, },
										grid: { shadow: false, borderWidth: 0, background:'#ffffff' },
										seriesColors: [ "#3eb5b1", "#666666", "#919293", "#b2b3b5", "#e1e1e1"],
									}
								);
								
								
							$(window).resize(function() {
								plot2.replot( { resetAxes: true } );
							});		
								
						});
						</script>
					</div>
			</div>
			
			
			<!-- Top Viewed -->
			<div id="top-viewed" class="panel panel-default col-md-6">
				<div class="panel-heading"><h2><span class=" glyphicon glyphicon-thumbs-up"></span>  <?php echo $viewed_products_title; ?></h2></div>
					<div class="panel-body">
						<p><a class="btn btn-default btn-xs" href="<?php echo $report_product_viewed; ?>"><?php echo $text_view_all; ?> <i class="ion-arrow-right-c"></i></a></p>
						<div id="most-viewed"></div>
						<script type="text/javascript">
							$(document).ready(function(){
								var data = [<?php $mv = "0"; if (!empty ($products)) { foreach ($products as $product) {$mv++; if($mv <= "5") {?>["<?php echo $product['name'] ?> <?php echo $product['model']; ?> <span class=\"additional\"><?php echo $product['viewed']; if ($product['viewed'] == "1" ){ echo $time; } else { echo $times; } ?></span>", <?php echo $product['viewed'] ?>]<?php if($mv != "5") { ?>,<?php } ?><?php } else { break; }}}?>];

									<?php if (!empty ($products)) { ?>
									var plot1 = $.jqplot ('most-viewed', [data],  
									<?php } else { ?>
									var plot1 = $.jqplot ('most-viewed', [[null]], 
									<?php } ?>
							
									{ 
									shadow: false,
									seriesDefaults: {
										renderer:$.jqplot.DonutRenderer,
										rendererOptions: {
											sliceMargin: 1,
											startAngle: -90,
											showDataLabels: true,
											shadowDepth: 0
											}
										}, 
										legend: { show:true, location: 'e', xoffset: 12, },
										grid: { shadow: false, borderWidth: 0, background:'#ffffff' },
										seriesColors: [ "#3eb5b1", "#666666", "#919293", "#b2b3b5", "#e1e1e1"],
									}
								);
								
							$(window).resize(function() {
								plot1.replot( { resetAxes: true } );
							});
								
						});
						</script>
					</div>
			</div>
			
			
			<!-- Top Customers -->
			<div id="top-customers" class="panel panel-default col-md-6">
				<div class="panel-heading"><h2><span class="glyphicon glyphicon-user"></span>  <?php echo $top_customers_title; ?></h2></div>
					<div class="panel-body">
						<p><a class="btn btn-default btn-xs" href="<?php echo $report_customer_order; ?>"><?php echo $text_view_all; ?> <i class="ion-arrow-right-c"></i></a></p>
						<div id="topcustomers"></div>
						<script type="text/javascript">
							$(document).ready(function(){
								var datac = [<?php $bc = "0"; if (!empty ($customers)) { foreach($customers as $customer) {$bc++; if($bc <= "5") { ?>["<?php echo $customer['customer'] ?> <span class=\"additional\"><?php echo $customer['orders']; if ($customer['orders'] == "1" ){ echo $number_order; } else { echo $number_orders; }?> = <?php echo $customer['total'] ?></span>", <?php echo $customer['orders']; ?>]<?php if($bc != "5") { ?>,<?php } ?><?php } else { break; }}}?>];
							
									<?php if (!empty ($customers)) { ?>
									var plot3 = $.jqplot ('topcustomers', [datac],   
									<?php } else { ?>
									var plot3 = $.jqplot ('topcustomers', [[null]], 
									<?php } ?>

									{ 
									shadow: false,
									seriesDefaults: {
										renderer:$.jqplot.DonutRenderer,
										rendererOptions: {
											sliceMargin: 1,
											startAngle: -90,
											showDataLabels: true,
											shadowDepth: 0
											}
										}, 
										legend: { show:true, location: 'e', xoffset: 12, },
										grid: { shadow: false, borderWidth: 0, background:'#ffffff' },
										seriesColors: [ "#3eb5b1", "#666666", "#919293", "#b2b3b5", "#e1e1e1"],
									}
								);
								
							$(window).resize(function() {
								plot3.replot( { resetAxes: true } );
							});
								
						});
						</script>
					</div>
			</div>
			
			
			
			<!-- Top Coupons -->
			<div id="top-coupons" class="panel panel-default col-md-6">
				<div class="panel-heading"><h2><span class="glyphicon glyphicon-tag"></span>  <?php echo $top_coupon_title; ?></h2></div>
					<div class="panel-body">
						<p><a class="btn btn-default btn-xs" href="<?php echo $coupon ?>"><?php echo $text_view_all; ?> <i class="ion-arrow-right-c"></i></a></p>
						<link class="include" rel="stylesheet" type="text/css" href="view/stylesheet/pie/jquery.jqplot.min.css" />
						<div id="topcoupon"></div>
						<script type="text/javascript">
							$(document).ready(function(){
								var datar = [ <?php $mr = "0"; if (!empty ($coupons)) { foreach($coupons as $coupon) { $mr++; if($mr <= "5") { ?>["<?php echo $coupon['name'] ?> <span class=\"additional\"><?php echo $coupon['orders']; if ($coupon['orders'] == "1" ){ echo $number_order; } else { echo $number_orders; }?> = <?php echo $coupon['total']; ?></span>", <?php echo $coupon['orders']; ?>]<?php if($mr != "5") { ?>,<?php } ?><?php } else { break; }}}?>];
							
									<?php if (!empty ($coupons)) { ?>
									var plot4 = $.jqplot ('topcoupon', [datar], 
									<?php } else { ?>
									var plot4 = $.jqplot ('topcoupon', [[null]], 
									<?php } ?>
									
			  
									{ 
									shadow: false,
									seriesDefaults: {
										renderer:$.jqplot.DonutRenderer,
										rendererOptions: {
											sliceMargin: 1,
											startAngle: -90,
											showDataLabels: true,
											shadowDepth: 0
											}
										}, 
										legend: { show:true, location: 'e', xoffset: 12, },
										grid: { shadow: false, borderWidth: 0, background:'#ffffff' },
										seriesColors: [ "#3eb5b1", "#666666", "#919293", "#b2b3b5", "#e1e1e1"],
									}
								);
								
							$(window).resize(function() {
								plot4.replot( { resetAxes: true } );
							});	
							
						});
						</script>
					</div>
			</div>

		</div>
		</section>
			   
	</aside>
</div>



<!--[if IE]>
<script type="text/javascript" src="view/javascript/jquery/flot/excanvas.js"></script>
<![endif]--> 
<script type="text/javascript" src="view/javascript/jquery/flot/jquery.flot.js"></script> 
<script type="text/javascript"><!--
function getSalesChart(range) {
	$.ajax({
		type: 'get',
		url: 'index.php?route=common/home/chart&token=<?php echo $token; ?>&range=' + range,
		dataType: 'json',
		async: false,
		success: function(json) {
		
			var plot = $.plot("#report", [json.order, json.customer],
			{
				series: {
					lines: {
						show: true,
						fill: true,
						lineWidth: 1
					},
					points: {
						show: true
					}
				},
				colors: ["#3eb5b1", "#61d6d2"],
				grid: {
					borderWidth: 0,
					hoverable: true,
					clickable: true,
					backgroundColor: '#FFF'
				},	
				xaxis: {
            		ticks: json.xaxis
				}
			});
			
	
			
			function showTooltip(x, y, contents) {
				$('<div id="tooltip">' + contents + '</div>').css({
				position: 'absolute',
				display: 'none',
				top: y - 25,
				left: x + 5,
				color: '#FFF',
				border: '1px solid #333',
				padding: '1px 5px',
				'background-color': '#333'
				})
				.appendTo("body").fadeIn(1000);
			}
	

			var previousPoint = null;
				$("#report").bind("plothover", function (event, pos, item) {
					if (item) {
						if (previousPoint != item.dataIndex) {
							previousPoint = item.dataIndex;

							$("#tooltip").remove();
							var x = item.datapoint[0].toFixed(0),
							y = item.datapoint[1].toFixed(0);

							showTooltip(item.pageX, item.pageY, y);
						}
					} else {
							$("#tooltip").fadeOut(800);
							previousPoint = null;
					}
				});	
				
		}
		
	
		
	});
	
	
	
	
}

getSalesChart($('#range').val());

$(window).resize(function() {
	getSalesChart($('#range').val());
	plot.replot( { resetAxes: true } );
});
	


//--></script> 

<?php echo $footer; ?>