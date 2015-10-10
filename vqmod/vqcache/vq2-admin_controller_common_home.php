<?php   
class ControllerCommonHome extends Controller {   
	public function index() {
		$this->language->load('common/home');

		$this->document->setTitle($this->language->get('heading_title'));

			$url = '';
			$this->data['text_menu_statistics'] = $this->language->get('text_menu_statistics');
			$this->data['menu_statistics'] = $this->url->link('report/sale_order', 'token=' . $this->session->data['token'] . $url, 'SSL');
			$this->data['link_to_sale'] = $this->url->link('sale/order', 'token=' . $this->session->data['token'] . $url, 'SSL');
			$this->data['link_to_customers'] = $this->url->link('sale/customer', 'token=' . $this->session->data['token'] . $url, 'SSL');
			$this->data['link_to_reviews'] = $this->url->link('catalog/review', 'token=' . $this->session->data['token'] . $url, 'SSL');
			$this->data['link_to_affiliates'] = $this->url->link('sale/affiliate', 'token=' . $this->session->data['token'] . $url, 'SSL');
			$this->data['link_to_coupons'] = $this->url->link('report/sale_coupon', 'token=' . $this->session->data['token'] . $url, 'SSL');
			$this->data['text_new_customers'] = $this->language->get('text_new_customers');
			$this->data['text_new_reviews'] = $this->language->get('text_new_reviews');
			$this->data['text_year_sale'] = $this->language->get('text_year_sale');
			$this->data['text_today_sale'] = $this->language->get('text_today_sale');
			$this->data['text_week_sale'] = $this->language->get('text_week_sale');
			$this->data['text_month_sale'] = $this->language->get('text_month_sale');
			$this->data['text_orders'] = $this->language->get('text_orders');
			$this->data['text_view'] = $this->language->get('text_view');
			$this->data['text_view_all'] = $this->language->get('text_view_all');
			$this->data['text_jump_to_statistics'] = $this->language->get('text_jump_to_statistics');
			$this->data['viewed_products_title'] = $this->language->get('viewed_products_title');
			$this->data['bestsellers_title'] = $this->language->get('bestsellers_title');
			$this->data['top_customers_title'] = $this->language->get('top_customers_title');
			$this->data['top_coupon_title'] = $this->language->get('top_coupon_title');
			$this->data['item'] = $this->language->get('item');
			$this->data['items'] = $this->language->get('items');
			$this->data['time'] = $this->language->get('time');
			$this->data['times'] = $this->language->get('times');
			$this->data['number_order'] = $this->language->get('number_order');
			$this->data['number_orders'] = $this->language->get('number_orders');
			$this->data['star_rating'] = $this->language->get('star_rating');
			$this->data['stars_rating'] = $this->language->get('stars_rating');
			


			$this->data['text_actions'] = $this->language->get('text_actions');
			
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_overview'] = $this->language->get('text_overview');
		$this->data['text_statistics'] = $this->language->get('text_statistics');
		$this->data['text_latest_10_orders'] = $this->language->get('text_latest_10_orders');
		$this->data['text_total_sale'] = $this->language->get('text_total_sale');
// Sales
			$this->data['text_total_sale_today'] = $this->language->get('text_total_sale_today');
			$this->data['text_total_sale_week'] = $this->language->get('text_total_sale_week');
			$this->data['text_total_sale_month'] = $this->language->get('text_total_sale_month');
			$this->data['text_pending_orders'] = $this->language->get('text_pending_orders');
			$this->data['text_new_affiliates'] = $this->language->get('text_new_affiliates');
			$this->data['text_awaiting_customers'] = $this->language->get('text_awaiting_customers');
			
		$this->data['text_total_sale_year'] = $this->language->get('text_total_sale_year');
		$this->data['text_total_order'] = $this->language->get('text_total_order');
		$this->data['text_total_customer'] = $this->language->get('text_total_customer');
		$this->data['text_total_customer_approval'] = $this->language->get('text_total_customer_approval');
		$this->data['text_total_review_approval'] = $this->language->get('text_total_review_approval');
		$this->data['text_total_affiliate'] = $this->language->get('text_total_affiliate');
		$this->data['text_total_affiliate_approval'] = $this->language->get('text_total_affiliate_approval');
		$this->data['text_day'] = $this->language->get('text_day');
		$this->data['text_week'] = $this->language->get('text_week');
		$this->data['text_month'] = $this->language->get('text_month');
		$this->data['text_year'] = $this->language->get('text_year');
		$this->data['text_no_results'] = $this->language->get('text_no_results');

		$this->data['column_order'] = $this->language->get('column_order');
		$this->data['column_customer'] = $this->language->get('column_customer');
		$this->data['column_status'] = $this->language->get('column_status');
		$this->data['column_date_added'] = $this->language->get('column_date_added');
		$this->data['column_total'] = $this->language->get('column_total');
		$this->data['column_firstname'] = $this->language->get('column_firstname');
		$this->data['column_lastname'] = $this->language->get('column_lastname');
		$this->data['column_action'] = $this->language->get('column_action');

		$this->data['entry_range'] = $this->language->get('entry_range');

		// Check install directory exists
		if (is_dir(dirname(DIR_APPLICATION) . '/install')) {
			$this->data['error_install'] = $this->language->get('error_install');
		} else {
			$this->data['error_install'] = '';
		}

		// Check image directory is writable
		$file = DIR_IMAGE . 'test';

		$handle = fopen($file, 'a+'); 

		fwrite($handle, '');

		fclose($handle); 		

		if (!file_exists($file)) {
			$this->data['error_image'] = sprintf($this->language->get('error_image'), DIR_IMAGE);
		} else {
			$this->data['error_image'] = '';

			unlink($file);
		}

		// Check image cache directory is writable
		$file = DIR_IMAGE . 'cache/test';

		$handle = fopen($file, 'a+'); 

		fwrite($handle, '');

		fclose($handle); 		

		if (!file_exists($file)) {
			$this->data['error_image_cache'] = sprintf($this->language->get('error_image_cache'), DIR_IMAGE . 'cache/');
		} else {
			$this->data['error_image_cache'] = '';

			unlink($file);
		}

		// Check cache directory is writable
		$file = DIR_CACHE . 'test';

		$handle = fopen($file, 'a+'); 

		fwrite($handle, '');

		fclose($handle); 		

		if (!file_exists($file)) {
			$this->data['error_cache'] = sprintf($this->language->get('error_image_cache'), DIR_CACHE);
		} else {
			$this->data['error_cache'] = '';

			unlink($file);
		}

		// Check download directory is writable
		$file = DIR_DOWNLOAD . 'test';

		$handle = fopen($file, 'a+'); 

		fwrite($handle, '');

		fclose($handle); 		

		if (!file_exists($file)) {
			$this->data['error_download'] = sprintf($this->language->get('error_download'), DIR_DOWNLOAD);
		} else {
			$this->data['error_download'] = '';

			unlink($file);
		}

		// Check logs directory is writable
		$file = DIR_LOGS . 'test';

		$handle = fopen($file, 'a+'); 

		fwrite($handle, '');

		fclose($handle); 		

		if (!file_exists($file)) {
			$this->data['error_logs'] = sprintf($this->language->get('error_logs'), DIR_LOGS);
		} else {
			$this->data['error_logs'] = '';

			unlink($file);
		}

		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
		);

		$this->data['token'] = $this->session->data['token'];

		$this->load->model('sale/order');

		$this->data['total_sale'] = $this->currency->format($this->model_sale_order->getTotalSales(), $this->config->get('config_currency'));
// Sales
			$this->data['total_sale_today'] = $this->currency->format($this->model_sale_order->getTotalSalesByDay(date('D')), $this->config->get('config_currency'));
			$this->data['total_sale_week'] = $this->currency->format($this->model_sale_order->getTotalSalesByWeek(date('W')), $this->config->get('config_currency'));
			$this->data['total_sale_month'] = $this->currency->format($this->model_sale_order->getTotalSalesByMonth(date('M')), $this->config->get('config_currency'));
			$this->data['report_product_purchased'] = $this->url->link('report/product_purchased', 'token=' . $this->session->data['token'], 'SSL');
			$this->data['report_product_viewed'] = $this->url->link('report/product_viewed', 'token=' . $this->session->data['token'], 'SSL');
			$this->data['report_customer_order'] = $this->url->link('report/customer_order', 'token=' . $this->session->data['token'], 'SSL');
			$this->data['review'] = $this->url->link('catalog/review', 'token=' . $this->session->data['token'], 'SSL');
			$this->data['coupon'] = $this->url->link('report/sale_coupon', 'token=' . $this->session->data['token'], 'SSL');
			
		$this->data['total_sale_year'] = $this->currency->format($this->model_sale_order->getTotalSalesByYear(date('Y')), $this->config->get('config_currency'));
		$this->data['total_order'] = $this->model_sale_order->getTotalOrders();
$this->data['total_pending_order'] = $this->model_sale_order->getPendingOrders();

		$this->load->model('sale/customer');

		$this->data['total_customer'] = $this->model_sale_customer->getTotalCustomers();
		$this->data['total_customer_approval'] = $this->model_sale_customer->getTotalCustomersAwaitingApproval();

		$this->load->model('catalog/review');

		$this->data['total_review'] = $this->model_catalog_review->getTotalReviews();
		$this->data['total_review_approval'] = $this->model_catalog_review->getTotalReviewsAwaitingApproval();

		$this->load->model('sale/affiliate');

		$this->data['total_affiliate'] = $this->model_sale_affiliate->getTotalAffiliates();
		$this->data['total_affiliate_approval'] = $this->model_sale_affiliate->getTotalAffiliatesAwaitingApproval();

		$this->data['orders'] = array(); 

		$data = array(
			'sort'  => 'o.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => 10
		);

		$results = $this->model_sale_order->getOrders($data);

		foreach ($results as $result) {
			$action = array();

			$action[] = array(
				'text' => $this->language->get('text_view'),
				'href' => $this->url->link('sale/order/info', 'token=' . $this->session->data['token'] . '&order_id=' . $result['order_id'], 'SSL')
			);

			$this->data['orders'][] = array(
				'order_id'   => $result['order_id'],
				'customer'   => $result['customer'],
				'status'     => $result['status'],
				'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
				'total'      => $this->currency->format($result['total'], $result['currency_code'], $result['currency_value']),
				'action'     => $action
			);
		}

		if ($this->config->get('config_currency_auto')) {
			$this->load->model('localisation/currency');

			$this->model_localisation_currency->updateCurrencies();
		}

		$this->template = 'flat-admin/common/home.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());

			$this->language->load('report/sale_coupon');
			$this->load->model('report/coupon');
			$this->data['coupons'] = array();
			
			$coupon_total = $this->model_report_coupon->getTotalCoupons($data); 
		
			$results = $this->model_report_coupon->getCoupons($data);
	
			foreach ($results as $result) {
				$this->data['coupons'][] = array(
					'name'   => $result['name'],
					'code'   => $result['code'],
					'orders' => $result['orders'],
					'total'  => $this->currency->format($result['total'], $this->config->get('config_currency'))
				);
			}
	
			$this->response->setOutput($this->render());
			
			

			$this->language->load('report/customer_order');
			$this->load->model('report/customer');
			
			$this->data['customers'] = array();
			
			$customer_total = $this->model_report_customer->getTotalOrders($data); 
			$results = $this->model_report_customer->getOrders($data);

			foreach ($results as $result) {
				$this->data['customers'][] = array(
				'customer'       => $result['customer'],
				'email'          => $result['email'],
				'customer_group' => $result['customer_group'],
				'status'         => ($result['status'] ? $this->language->get('text_enabled') : $this->language->get('text_disabled')),
				'orders'         => $result['orders'],
				'products'       => $result['products'],
				'total'          => $this->currency->format($result['total'], $this->config->get('config_currency')),
				'action'         => $action
				);
			}

			$this->load->model('localisation/order_status');
			$this->response->setOutput($this->render());

			$this->language->load('report/sale_coupon');
			$this->load->model('report/coupon');
			$this->data['coupons'] = array();
			
			$coupon_total = $this->model_report_coupon->getTotalCoupons($data); 
		
			$results = $this->model_report_coupon->getCoupons($data);
	
			foreach ($results as $result) {
				$this->data['coupons'][] = array(
					'name'   => $result['name'],
					'code'   => $result['code'],
					'orders' => $result['orders'],
					'total'  => $this->currency->format($result['total'], $this->config->get('config_currency'))
				);
			}
	
			$this->response->setOutput($this->render());
			
			
			
			

			$this->language->load('report/product_purchased');
			$this->load->model('report/product');
			
			$product_total = $this->model_report_product->getTotalPurchased($data);
			$results = $this->model_report_product->getPurchased($data);

			foreach ($results as $result) {
				$this->data['sellers'][] = array(
					'name'       => $result['name'],
					'model'      => $result['model'],
					'quantity'   => $result['quantity'],
					'total'      => $this->currency->format($result['total'], $this->config->get('config_currency'))
				);
			}

			$this->load->model('localisation/order_status');
			$this->response->setOutput($this->render());

			$this->language->load('report/sale_coupon');
			$this->load->model('report/coupon');
			$this->data['coupons'] = array();
			
			$coupon_total = $this->model_report_coupon->getTotalCoupons($data); 
		
			$results = $this->model_report_coupon->getCoupons($data);
	
			foreach ($results as $result) {
				$this->data['coupons'][] = array(
					'name'   => $result['name'],
					'code'   => $result['code'],
					'orders' => $result['orders'],
					'total'  => $this->currency->format($result['total'], $this->config->get('config_currency'))
				);
			}
	
			$this->response->setOutput($this->render());
			
			

			$this->language->load('report/customer_order');
			$this->load->model('report/customer');
			
			$this->data['customers'] = array();
			
			$customer_total = $this->model_report_customer->getTotalOrders($data); 
			$results = $this->model_report_customer->getOrders($data);

			foreach ($results as $result) {
				$this->data['customers'][] = array(
				'customer'       => $result['customer'],
				'email'          => $result['email'],
				'customer_group' => $result['customer_group'],
				'status'         => ($result['status'] ? $this->language->get('text_enabled') : $this->language->get('text_disabled')),
				'orders'         => $result['orders'],
				'products'       => $result['products'],
				'total'          => $this->currency->format($result['total'], $this->config->get('config_currency')),
				'action'         => $action
				);
			}

			$this->load->model('localisation/order_status');
			$this->response->setOutput($this->render());

			$this->language->load('report/sale_coupon');
			$this->load->model('report/coupon');
			$this->data['coupons'] = array();
			
			$coupon_total = $this->model_report_coupon->getTotalCoupons($data); 
		
			$results = $this->model_report_coupon->getCoupons($data);
	
			foreach ($results as $result) {
				$this->data['coupons'][] = array(
					'name'   => $result['name'],
					'code'   => $result['code'],
					'orders' => $result['orders'],
					'total'  => $this->currency->format($result['total'], $this->config->get('config_currency'))
				);
			}
	
			$this->response->setOutput($this->render());
			
			
			
			
			
			

			$this->language->load('report/product_viewed');
			$this->load->model('report/product');
			
			$product_viewed_total = $this->model_report_product->getTotalProductsViewed($data); 
			$product_views_total = $this->model_report_product->getTotalProductViews(); 

			$results = $this->model_report_product->getProductsViewed($data);

			foreach ($results as $result) {
				if ($result['viewed']) {
					$percent = round($result['viewed'] / $product_views_total * 100, 2);
				} else {
					$percent = 0;
				}

				$this->data['products'][] = array(
					'name'    => $result['name'],
					'model'   => $result['model'],
					'viewed'  => $result['viewed'],
					'percent' => $percent . '%'			
				);
			}

			$this->data['text_no_results'] = $this->language->get('text_no_results');
			$this->response->setOutput($this->render());

			$this->language->load('report/sale_coupon');
			$this->load->model('report/coupon');
			$this->data['coupons'] = array();
			
			$coupon_total = $this->model_report_coupon->getTotalCoupons($data); 
		
			$results = $this->model_report_coupon->getCoupons($data);
	
			foreach ($results as $result) {
				$this->data['coupons'][] = array(
					'name'   => $result['name'],
					'code'   => $result['code'],
					'orders' => $result['orders'],
					'total'  => $this->currency->format($result['total'], $this->config->get('config_currency'))
				);
			}
	
			$this->response->setOutput($this->render());
			
			

			$this->language->load('report/customer_order');
			$this->load->model('report/customer');
			
			$this->data['customers'] = array();
			
			$customer_total = $this->model_report_customer->getTotalOrders($data); 
			$results = $this->model_report_customer->getOrders($data);

			foreach ($results as $result) {
				$this->data['customers'][] = array(
				'customer'       => $result['customer'],
				'email'          => $result['email'],
				'customer_group' => $result['customer_group'],
				'status'         => ($result['status'] ? $this->language->get('text_enabled') : $this->language->get('text_disabled')),
				'orders'         => $result['orders'],
				'products'       => $result['products'],
				'total'          => $this->currency->format($result['total'], $this->config->get('config_currency')),
				'action'         => $action
				);
			}

			$this->load->model('localisation/order_status');
			$this->response->setOutput($this->render());

			$this->language->load('report/sale_coupon');
			$this->load->model('report/coupon');
			$this->data['coupons'] = array();
			
			$coupon_total = $this->model_report_coupon->getTotalCoupons($data); 
		
			$results = $this->model_report_coupon->getCoupons($data);
	
			foreach ($results as $result) {
				$this->data['coupons'][] = array(
					'name'   => $result['name'],
					'code'   => $result['code'],
					'orders' => $result['orders'],
					'total'  => $this->currency->format($result['total'], $this->config->get('config_currency'))
				);
			}
	
			$this->response->setOutput($this->render());
			
			
			
			

			$this->language->load('report/product_purchased');
			$this->load->model('report/product');
			
			$product_total = $this->model_report_product->getTotalPurchased($data);
			$results = $this->model_report_product->getPurchased($data);

			foreach ($results as $result) {
				$this->data['sellers'][] = array(
					'name'       => $result['name'],
					'model'      => $result['model'],
					'quantity'   => $result['quantity'],
					'total'      => $this->currency->format($result['total'], $this->config->get('config_currency'))
				);
			}

			$this->load->model('localisation/order_status');
			$this->response->setOutput($this->render());

			$this->language->load('report/sale_coupon');
			$this->load->model('report/coupon');
			$this->data['coupons'] = array();
			
			$coupon_total = $this->model_report_coupon->getTotalCoupons($data); 
		
			$results = $this->model_report_coupon->getCoupons($data);
	
			foreach ($results as $result) {
				$this->data['coupons'][] = array(
					'name'   => $result['name'],
					'code'   => $result['code'],
					'orders' => $result['orders'],
					'total'  => $this->currency->format($result['total'], $this->config->get('config_currency'))
				);
			}
	
			$this->response->setOutput($this->render());
			
			

			$this->language->load('report/customer_order');
			$this->load->model('report/customer');
			
			$this->data['customers'] = array();
			
			$customer_total = $this->model_report_customer->getTotalOrders($data); 
			$results = $this->model_report_customer->getOrders($data);

			foreach ($results as $result) {
				$this->data['customers'][] = array(
				'customer'       => $result['customer'],
				'email'          => $result['email'],
				'customer_group' => $result['customer_group'],
				'status'         => ($result['status'] ? $this->language->get('text_enabled') : $this->language->get('text_disabled')),
				'orders'         => $result['orders'],
				'products'       => $result['products'],
				'total'          => $this->currency->format($result['total'], $this->config->get('config_currency')),
				'action'         => $action
				);
			}

			$this->load->model('localisation/order_status');
			$this->response->setOutput($this->render());

			$this->language->load('report/sale_coupon');
			$this->load->model('report/coupon');
			$this->data['coupons'] = array();
			
			$coupon_total = $this->model_report_coupon->getTotalCoupons($data); 
		
			$results = $this->model_report_coupon->getCoupons($data);
	
			foreach ($results as $result) {
				$this->data['coupons'][] = array(
					'name'   => $result['name'],
					'code'   => $result['code'],
					'orders' => $result['orders'],
					'total'  => $this->currency->format($result['total'], $this->config->get('config_currency'))
				);
			}
	
			$this->response->setOutput($this->render());
			
			
			
			
			
			
			
			
	}

	public function chart() {
		$this->language->load('common/home');

		$data = array();

		$data['order'] = array();
		$data['customer'] = array();
		$data['xaxis'] = array();

		$data['order']['label'] = $this->language->get('text_order');
		$data['customer']['label'] = $this->language->get('text_customer');

		if (isset($this->request->get['range'])) {
			$range = $this->request->get['range'];
		} else {
			$range = 'month';
		}

		switch ($range) {
			case 'day':
				for ($i = 0; $i < 24; $i++) {
					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '" . (int)$this->config->get('config_complete_status_id') . "' AND (DATE(date_added) = DATE(NOW()) AND HOUR(date_added) = '" . (int)$i . "') GROUP BY HOUR(date_added) ORDER BY date_added ASC");

					if ($query->num_rows) {
						$data['order']['data'][]  = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][]  = array($i, 0);
					}

					$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "customer WHERE DATE(date_added) = DATE(NOW()) AND HOUR(date_added) = '" . (int)$i . "' GROUP BY HOUR(date_added) ORDER BY date_added ASC");

					if ($query->num_rows) {
						$data['customer']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['customer']['data'][] = array($i, 0);
					}

					$data['xaxis'][] = array($i, date('H', mktime($i, 0, 0, date('n'), date('j'), date('Y'))));
				}					
				break;
			case 'week':
				$date_start = strtotime('-' . date('w') . ' days'); 

				for ($i = 0; $i < 7; $i++) {
					$date = date('Y-m-d', $date_start + ($i * 86400));

					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '" . (int)$this->config->get('config_complete_status_id') . "' AND DATE(date_added) = '" . $this->db->escape($date) . "' GROUP BY DATE(date_added)");

					if ($query->num_rows) {
						$data['order']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][] = array($i, 0);
					}

					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "customer` WHERE DATE(date_added) = '" . $this->db->escape($date) . "' GROUP BY DATE(date_added)");

					if ($query->num_rows) {
						$data['customer']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['customer']['data'][] = array($i, 0);
					}

					$data['xaxis'][] = array($i, date('D', strtotime($date)));
				}

				break;
			default:
			case 'month':
				for ($i = 1; $i <= date('t'); $i++) {
					$date = date('Y') . '-' . date('m') . '-' . $i;

					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '" . (int)$this->config->get('config_complete_status_id') . "' AND (DATE(date_added) = '" . $this->db->escape($date) . "') GROUP BY DAY(date_added)");

					if ($query->num_rows) {
						$data['order']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][] = array($i, 0);
					}	

					$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "customer WHERE DATE(date_added) = '" . $this->db->escape($date) . "' GROUP BY DAY(date_added)");

					if ($query->num_rows) {
						$data['customer']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['customer']['data'][] = array($i, 0);
					}	

					$data['xaxis'][] = array($i, date('j', strtotime($date)));
				}
				break;
			case 'year':
				for ($i = 1; $i <= 12; $i++) {
					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '" . (int)$this->config->get('config_complete_status_id') . "' AND YEAR(date_added) = '" . date('Y') . "' AND MONTH(date_added) = '" . $i . "' GROUP BY MONTH(date_added)");

					if ($query->num_rows) {
						$data['order']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][] = array($i, 0);
					}

					$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "customer WHERE YEAR(date_added) = '" . date('Y') . "' AND MONTH(date_added) = '" . $i . "' GROUP BY MONTH(date_added)");

					if ($query->num_rows) { 
						$data['customer']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['customer']['data'][] = array($i, 0);
					}

					$data['xaxis'][] = array($i, date('M', mktime(0, 0, 0, $i, 1, date('Y'))));
				}			
				break;	
		} 

		$this->response->setOutput(json_encode($data));
	}

	public function login() {
		$route = '';

		if (isset($this->request->get['route'])) {
			$part = explode('/', $this->request->get['route']);

			if (isset($part[0])) {
				$route .= $part[0];
			}

			if (isset($part[1])) {
				$route .= '/' . $part[1];
			}
		}

		$ignore = array(
			'common/login',
			'common/forgotten',
			'common/reset'
		);	

		if (!$this->user->isLogged() && !in_array($route, $ignore)) {
			return $this->forward('common/login');
		}

		if (isset($this->request->get['route'])) {
			$ignore = array(
				'common/login',
				'common/logout',
				'common/forgotten',
				'common/reset',
				'error/not_found',
				'error/permission'
			);

			$config_ignore = array();

			if ($this->config->get('config_token_ignore')) {
				$config_ignore = unserialize($this->config->get('config_token_ignore'));
			}

			$ignore = array_merge($ignore, $config_ignore);

			if (!in_array($route, $ignore) && (!isset($this->request->get['token']) || !isset($this->session->data['token']) || ($this->request->get['token'] != $this->session->data['token']))) {
				return $this->forward('common/login');
			}
		} else {
			if (!isset($this->request->get['token']) || !isset($this->session->data['token']) || ($this->request->get['token'] != $this->session->data['token'])) {
				return $this->forward('common/login');
			}
		}
	}

	public function permission() {
		if (isset($this->request->get['route'])) {
			$route = '';

			$part = explode('/', $this->request->get['route']);

			if (isset($part[0])) {
				$route .= $part[0];
			}

			if (isset($part[1])) {
				$route .= '/' . $part[1];
			}

			$ignore = array(
				'common/home',
				'common/login',
				'common/logout',
				'common/forgotten',
				'common/reset',
				'error/not_found',
				'error/permission'		
			);			

			if (!in_array($route, $ignore) && !$this->user->hasPermission('access', $route)) {
				return $this->forward('error/permission');
			}
		}
	}	
}
?>