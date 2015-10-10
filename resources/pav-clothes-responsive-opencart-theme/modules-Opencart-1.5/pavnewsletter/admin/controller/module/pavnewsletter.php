<?php
class ControllerModulePavnewsletter extends Controller {
	private $error = array();
	public function initData(){
		$this->language->load('module/pavnewsletter');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		$this->load->model('localisation/order_status');

		$this->load->model('pavnewsletter/newsletter');

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_yes'] = $this->language->get('text_yes');
		$this->data['text_no'] = $this->language->get('text_no');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');

		$this->data['entry_limit'] = $this->language->get('entry_limit');
		$this->data['entry_username'] = $this->language->get('entry_username');
		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
    	$this->data['entry_width_height'] = $this->language->get('entry_width_height');
    	$this->data['entry_image_selector']	= $this->language->get('entry_image_selector');
    	$this->data['entry_image_selector_help'] = $this->language->get('entry_image_selector_help');
    	$this->data['entry_additional_width_height'] = $this->language->get('entry_additional_width_height');

		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_remove'] = $this->language->get('button_remove');
		$this->data['button_copy_default'] = $this->language->get('button_copy_default');
		$this->data['button_copy'] = $this->language->get('button_copy');
		$this->data['button_insert'] = $this->language->get('button_insert');
		$this->data['button_delete'] = $this->language->get('button_delete');
    	$this->data['tab_module'] = $this->language->get('tab_module');

    	$this->data['default_values'] = array();
		$this->data['positions'] = array( 
										  'mainmenu',
										  'slideshow',
										  'promotion',
										  'content_top',
										  'column_left',
										  'column_right',
										  'content_bottom',
										  'mass_bottom',
										  'footer_top',
										  'footer_center',
										  'footer_bottom',
										  'outsite_bottom',
		);

		$themeConfig = $this->config->get( 'themecontrol' );
		if( isset($themeConfig['default_theme']) ){
			$layoutxml = DIR_CATALOG.'view/theme/'.$themeConfig['default_theme'].'/development/layout/default.php';
			if( file_exists($layoutxml) ){
				include( $layoutxml );
		 		$this->data['positions'] = PavoLayoutPositions::getList();
			}
		}	
		
		$menus = array();
		$menus["dashboard"] = array("link"=>$this->url->link('module/pavnewsletter', 'token=' . $this->session->data['token'], 'SSL'),"title"=>$this->language->get('menu_dashboard'));
		$menus["create_newsletter"] = array("link"=>$this->url->link('module/pavnewsletter/create_newsletter', 'token=' . $this->session->data['token'], 'SSL'),"title"=>$this->language->get('menu_create_newsletter'));
		$menus["draft"] = array("link"=>$this->url->link('module/pavnewsletter/draft', 'token=' . $this->session->data['token'], 'SSL'),"title"=>$this->language->get('menu_manage_draft_newsletters'));
		$menus["subscribes"] = array("link"=>$this->url->link('module/pavnewsletter/subsribes', 'token=' . $this->session->data['token'], 'SSL'),"title"=>$this->language->get('menu_manage_subscribes'));
		$menus["templates"] = array("link"=>$this->url->link('module/pavnewsletter/templates', 'token=' . $this->session->data['token'], 'SSL'),"title"=>$this->language->get('menu_templates'));
		$menus["modules"] = array("link"=>$this->url->link('module/pavnewsletter/modules', 'token=' . $this->session->data['token'], 'SSL'),"title"=>$this->language->get('menu_manage_modules'));
		$menus["config"] = array("link"=>$this->url->link('module/pavnewsletter/config', 'token=' . $this->session->data['token'], 'SSL'),"title"=>$this->language->get('menu_global_config'));
		//$menus["information"] = array("link"=>$this->url->link('module/pavnewsletter/information', 'token=' . $this->session->data['token'], 'SSL'),"title"=>$this->language->get('menu_information'));

		// Start GetData Store
		$this->load->model('setting/store');
		$action = array();
		$action[] = array(
			'text' => $this->language->get('text_edit'),
			'href' => $this->url->link('setting/setting', 'token=' . $this->session->data['token'], 'SSL')
		);
		$store_default = array(
			'store_id' => 0,
			'name'     => $this->config->get('config_name') . $this->language->get('text_default'),
			'url'      => HTTP_CATALOG,
		);
		$stores = $this->model_setting_store->getStores();
		array_unshift($stores, $store_default);
		
		foreach ($stores as &$store) {
			$url = '';
			if ($store['store_id'] > 0 ) {
				$url = '&store_id='.$store['store_id'];
			}
			$store['option'] = $this->url->link('module/pavnewsletter/modules', $url.'&token=' . $this->session->data['token'], 'SSL');
		}
		$this->data['stores'] = $stores;
		$store_id = isset($this->request->get['store_id'])?$this->request->get['store_id']:0;
		$this->data['store_id'] = $store_id;
		// End GetData Store

   		$this->data["menus"] = $menus;

   		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

		$this->load->model('localisation/language');
		$languages = $this->model_localisation_language->getLanguages();
		$this->data['languages'] = $languages;

		$this->data['action'] = $this->url->link('module/pavnewsletter', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

   		$this->data['yesno'] = array(0=>$this->language->get('text_no'),1=>$this->language->get('text_yes'));

   		$this->document->addStyle('view/stylesheet/pavnewsletter.css');
	}
	/**
	 * set breadcrumb
	 */
	public function setBreadcrumb(){


		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/pavnewsletter', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
	}
	public function index() {

		$this->initData();

		$model = $this->model_pavnewsletter_newsletter;

		$model->installModule();

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('pavnewsletter', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->redirect($this->url->link('module/pavnewsletter', 'token=' . $this->session->data['token'], 'SSL'));
		}


		$this->data['modules'] = array();

		if (isset($this->request->post['pavnewsletter_module'])) {
			$this->data['modules'] = $this->request->post['pavnewsletter_module'];
		} elseif ($this->config->get('pavnewsletter_module')) {
			$this->data['modules'] = $this->config->get('pavnewsletter_module');
		}

		$this->setBreadcrumb();

		$this->data['general'] = $this->config->get('pavnewsletter_config');
    	$general_params = array();

		$this->load->model('design/layout');

		$this->data['layouts'] = array();
		$this->data['layouts'][] = array('layout_id'=>99999, 'name' => $this->language->get('all_page') );

		$this->data['layouts'] = array_merge($this->data['layouts'],$this->model_design_layout->getLayouts());

		$this->load->model('design/banner');

		$this->data['banners'] = $this->model_design_banner->getBanners();

		$this->template = 'module/pavnewsletter/panel.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}
	public function subsribes(){
		$this->initData();
		$this->load->model('pavnewsletter/subscribe');
		$this->load->model('setting/store');
		$this->load->model('sale/customer_group');
		$data = array();


		if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
			
			$post = $this->request->post;
			
			if(isset($post) && $post['action'] == "delete" && !empty($post['selected'])){
				$selected = $post['selected'];
				// Delete Subsribes
				foreach ($selected as $key => $value) {
					$this->model_pavnewsletter_subscribe->delete($value);
				}

			}

			$this->session->data['success'] = $this->language->get('text_success');

			$this->redirect($this->url->link('module/pavnewsletter/subsribes', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['page'] = isset($this->request->get['page'])?$this->request->get['page']:1;
		$data['limit'] = $this->config->get('config_admin_limit');
		$data['filter'] = array();
		$data['filter']['name'] = isset($this->request->get['filter_name'])?$this->request->get['filter_name']:"";
		$data['filter']['email'] = isset($this->request->get['filter_email'])?$this->request->get['filter_email']:"";
		$data['filter']['action'] = isset($this->request->get['filter_action'])?$this->request->get['filter_action']:"";
		$data['filter']['customer_group_id'] = isset($this->request->get['filter_customer_group_id'])?$this->request->get['filter_customer_group_id']:"";
		$data['filter']['store_id'] = isset($this->request->get['filter_store_id'])?$this->request->get['filter_store_id']:"";
		$data['sort'] = isset($this->request->get['sort'])?$this->request->get['sort']:"name";
		$data['order'] = isset($this->request->get['order'])?$this->request->get['order']:"DESC";


		$url = '';

		if (isset($this->request->get['filter_name'])) {
			$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_email'])) {
			$url .= '&filter_email=' . urlencode(html_entity_decode($this->request->get['filter_email'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_action'])) {
			$url .= '&filter_action=' . $this->request->get['filter_action'];
		}

		if (isset($this->request->get['filter_customer_group_id'])) {
			$url .= '&filter_customer_group_id=' . $this->request->get['filter_customer_group_id'];
		}

		if (isset($this->request->get['filter_store_id'])) {
			$url .= '&filter_store_id=' . $this->request->get['filter_store_id'];
		}

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$this->data['action'] = $this->url->link('module/pavnewsletter/subsribes', 'token=' . $this->session->data['token'] . $url, 'SSL');

		$this->data["menu_active"] = "subscribes";

		$subscribe_total = $this->model_pavnewsletter_subscribe->getTotalSubscribers($data);

		$results = $this->model_pavnewsletter_subscribe->getSubscribers($data);
		$stores = $this->model_setting_store->getStores();

		$tmp = array();
		$tmp[0] = $this->language->get("text_default_store");
		if(!empty($stores)){
			foreach($stores as $store ){
				$tmp[$store["store_id"]] = $store["name"];
			}
		}
		$stores = $tmp;
		$this->data["stores"] = $stores;
		$customer_groups = $this->model_pavnewsletter_subscribe->getCustomerGroups();
		$tmp = array();
		if(!empty($customer_groups)){
			foreach($customer_groups as $group ){
				$tmp[$group["customer_group_id"]] = $group["name"];
			}
		}
		$customer_groups = $tmp;
		$this->data["customer_groups"] = $customer_groups;
		$this->data['subscribes'] = array();
		foreach ($results as $result) {
			$action = array();
			$action_name = "";
			if($result['action'] == 1){
				$action_name =  $this->language->get('text_yes');
				$action[] = array(
				'text' => $this->language->get('text_unsubscribe'),
				'href' => $this->url->link('module/pavnewsletter/unsubsribe', 'token=' . $this->session->data['token'] . '&subscribe_id=' . $result['subscribe_id'] . $url, 'SSL')
				);
			}else{
				$action_name =  $this->language->get('text_no');
				$action[] = array(
				'text' => $this->language->get('text_subscribe'),
				'href' => $this->url->link('module/pavnewsletter/subsribe', 'token=' . $this->session->data['token'] . '&subscribe_id=' . $result['subscribe_id'] . $url, 'SSL')
				);
			}
			$customer_group_name = isset($customer_groups[$result["customer_group_id"]])?$customer_groups[$result["customer_group_id"]]:"";
			$store_name = isset($stores[$result["store_id"]])?$stores[$result["store_id"]]:$this->language->get("text_default_store");
      		$this->data['subscribes'][] = array(
				'subscribe_id' => $result['subscribe_id'],
				'name'       => $result['name'],
				'email'      => $result['email'],
				'subscribe'      => $action_name,
				'store'    => $store_name,
				'customer_group'   => $customer_group_name,
				'action'     => $action
			);
    	}

    	$url = '';

		if (isset($this->request->get['filter_name'])) {
			$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_email'])) {
			$url .= '&filter_email=' . urlencode(html_entity_decode($this->request->get['filter_email'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_action'])) {
			$url .= '&filter_action=' . $this->request->get['filter_action'];
		}

		if (isset($this->request->get['filter_customer_group_id'])) {
			$url .= '&filter_customer_group_id=' . $this->request->get['filter_customer_group_id'];
		}

		if (isset($this->request->get['filter_store_id'])) {
			$url .= '&filter_store_id=' . $this->request->get['filter_store_id'];
		}

		if ($data['order'] == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$this->data['button_filter'] = $this->language->get("button_filter");
		$this->data['column_name'] = $this->language->get("column_name");
		$this->data['column_email'] = $this->language->get("column_email");
		$this->data['column_customer_group'] = $this->language->get("column_customer_group");
		$this->data['column_subscribe'] = $this->language->get("column_subscribe");
		$this->data['column_store'] = $this->language->get("column_store");
		$this->data['column_action'] = $this->language->get("column_action");
		$this->data['text_no_results'] = $this->language->get("text_no_results");

		$this->data['token'] = $this->session->data['token'];
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$this->data['sort_name'] = $this->url->link('module/pavnewsletter/subsribes', 'token=' . $this->session->data['token'] . '&sort=name' . $url, 'SSL');
		$this->data['sort_email'] = $this->url->link('module/pavnewsletter/subsribes', 'token=' . $this->session->data['token'] . '&sort=email' . $url, 'SSL');
		$this->data['sort_subscribe'] = $this->url->link('module/pavnewsletter/subsribes', 'token=' . $this->session->data['token'] . '&sort=s.action' . $url, 'SSL');
		$this->data['sort_customer_group_id'] = $this->url->link('module/pavnewsletter/subsribes', 'token=' . $this->session->data['token'] . '&sort=customer_group_id' . $url, 'SSL');
		$this->data['sort_store_id'] = $this->url->link('module/pavnewsletter/subsribes', 'token=' . $this->session->data['token'] . '&sort=s.store_id' . $url, 'SSL');

		$url = '';

		if (isset($this->request->get['filter_name'])) {
			$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_email'])) {
			$url .= '&filter_email=' . urlencode(html_entity_decode($this->request->get['filter_email'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_action'])) {
			$url .= '&filter_action=' . $this->request->get['filter_action'];
		}

		if (isset($this->request->get['filter_store_id'])) {
			$url .= '&filter_store_id=' . $this->request->get['filter_store_id'];
		}

		if (isset($this->request->get['filter_customer_group_id'])) {
			$url .= '&filter_customer_group_id=' . $this->request->get['filter_customer_group_id'];
		}

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $subscribe_total;
		$pagination->page = $data['page'];
		$pagination->limit = $this->config->get('config_admin_limit');
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('module/pavnewsletter/subsribes', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

		$this->data['pagination'] = $pagination->render();

		$this->setBreadcrumb();


		$this->data['filter_name'] = $data['filter']['name'];
		$this->data['filter_email'] = $data['filter']['email'];
		$this->data['filter_action'] = $data['filter']['action'];
		$this->data['filter_store_id'] = $data['filter']['store_id'];
		$this->data['filter_customer_group_id'] = $data['filter']['customer_group_id'];

		$this->data['sort'] = $data['sort'];
		$this->data['order'] = $data['order'];

		$this->template = 'module/pavnewsletter/subscribes.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}
	public function unsubsribe(){
		$this->load->model('pavnewsletter/subscribe');
		if (isset($this->request->get['subscribe_id'])) {
			$subscribe_id = $this->request->get['subscribe_id'];
		} else {
			$subscribe_id = 0;
		}
		if(!empty($subscribe_id)){
			$this->model_pavnewsletter_subscribe->updateAction($subscribe_id, 0);
		}
		$this->redirect($this->url->link('module/pavnewsletter/subsribes', 'token=' . $this->session->data['token'], 'SSL'));
	}
	public function subsribe(){
		$this->load->model('pavnewsletter/subscribe');
		if (isset($this->request->get['subscribe_id'])) {
			$subscribe_id = $this->request->get['subscribe_id'];
		} else {
			$subscribe_id = 0;
		}
		if(!empty($subscribe_id)){
			$this->model_pavnewsletter_subscribe->updateAction($subscribe_id, 1);
		}
		$this->redirect($this->url->link('module/pavnewsletter/subsribes', 'token=' . $this->session->data['token'], 'SSL'));
	}
	public function draft(){
		$this->initData();
		$this->setBreadcrumb();
		$this->load->model("pavnewsletter/template");
    $this->load->model("pavnewsletter/draft");
		$this->data["menu_active"] = "draft";
		$this->data['cancel'] = $this->url->link('module/pavnewsletter/templates', 'token=' . $this->session->data['token'], 'SSL');
		$template_id = isset($this->request->get['id'])?$this->request->get['id']:0;
		if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
			  $action = isset($this->request->post["action"])?$this->request->post["action"]:"";
        if($action == "delete"){
            foreach ($this->request->post['selected'] as $draft_id) {
                $this->model_pavnewsletter_draft->delete($draft_id);
            }
            $this->session->data['success'] = $this->language->get('text_success');
        }

        $this->redirect($this->url->link('module/pavnewsletter/draft', 'token=' . $this->session->data['token'], 'SSL'));

		}
      if (isset($this->request->get['filter_date'])) {
          $filter_date = $this->request->get['filter_date'];
      } else {
          $filter_date = null;
      }

      if (isset($this->request->get['filter_subject'])) {
          $filter_subject = $this->request->get['filter_subject'];
      } else {
          $filter_subject = null;
      }

      if (isset($this->request->get['filter_to'])) {
          $filter_to = $this->request->get['filter_to'];
      } else {
          $filter_to = null;
      }

      if (isset($this->request->get['filter_store'])) {
          $filter_store = $this->request->get['filter_store'];
      } else {
          $filter_store = null;
      }

      if (isset($this->request->get['sort'])) {
          $sort = $this->request->get['sort'];
      } else {
          $sort = 'draft_id';
      }

      if (isset($this->request->get['order'])) {
          $order = $this->request->get['order'];
      } else {
          $order = 'DESC';
      }

      if (isset($this->request->get['page'])) {
          $page = $this->request->get['page'];
      } else {
          $page = 1;
      }

      $url = '';

      if (isset($this->request->get['filter_date'])) {
          $url .= '&filter_date=' . $this->request->get['filter_date'];
      }

      if (isset($this->request->get['filter_subject'])) {
          $url .= '&filter_subject=' . $this->request->get['filter_subject'];
      }

      if (isset($this->request->get['filter_to'])) {
          $url .= '&filter_to=' . $this->request->get['filter_to'];
      }

      if (isset($this->request->get['filter_store'])) {
          $url .= '&filter_store=' . $this->request->get['filter_store'];
      }

      if (isset($this->request->get['sort'])) {
          $url .= '&sort=' . $this->request->get['sort'];
      }

      if (isset($this->request->get['order'])) {
          $url .= '&order=' . $this->request->get['order'];
      }

      if (isset($this->request->get['page'])) {
          $url .= '&page=' . $this->request->get['page'];
      }

      $this->data['breadcrumbs'] = array();

      $this->data['breadcrumbs'][] = array(
          'text'      => $this->language->get('text_home'),
          'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
          'separator' => false
      );

      $this->data['breadcrumbs'][] = array(
          'text'      => $this->language->get('heading_title'),
          'href'      => $this->url->link('module/pavnewsletter', 'token=' . $this->session->data['token'], 'SSL'),
          'separator' => ' :: '
      );


      $data = array(
          'filter_date'		=> $filter_date,
          'filter_subject'	=> $filter_subject,
          'filter_to'			=> $filter_to,
          'filter_store'		=> $filter_store,
          'sort'				=> $sort,
          'order'				=> $order,
          'start'				=> ($page - 1) * $this->config->get('config_admin_limit'),
          'limit'				=> $this->config->get('config_admin_limit')
      );

      $total = $this->model_pavnewsletter_draft->getTotal($data);

      $this->data['draft'] = array();

      $results = $this->model_pavnewsletter_draft->getList($data);

      foreach ($results as $result) {
          $this->data['draft'][] = array_merge($result, array(
              'selected' => isset($this->request->post['selected']) && is_array($this->request->post['selected']) && in_array($result['draft_id'], $this->request->post['selected'])
          ));
      }
      unset($result);

      $this->data['heading_title'] = $this->language->get('heading_title');

      $this->data['text_no_results'] = $this->language->get('text_no_results');

      $this->data['column_subject'] = $this->language->get('column_subject');
      $this->data['column_date'] = $this->language->get('column_date');
      $this->data['column_to'] = $this->language->get('column_to');
      $this->data['column_actions'] = $this->language->get('column_actions');
      $this->data['column_store'] = $this->language->get('column_store');

      $this->data['button_delete'] = $this->language->get('button_delete');
      $this->data['button_filter'] = $this->language->get('button_filter');

      $this->data['text_marketing'] = $this->language->get('text_marketing');
      $this->data['text_marketing_all'] = $this->language->get('text_marketing_all');
      $this->data['text_subscriber_all'] = $this->language->get('text_subscriber_all');
      $this->data['text_all'] = $this->language->get('text_all');
      $this->data['text_newsletter'] = $this->language->get('text_newsletter');
      $this->data['text_customer_all'] = $this->language->get('text_customer_all');
      $this->data['text_customer'] = $this->language->get('text_customer');
      $this->data['text_customer_group'] = $this->language->get('text_customer_group');
      $this->data['text_affiliate_all'] = $this->language->get('text_affiliate_all');
      $this->data['text_affiliate'] = $this->language->get('text_affiliate');
      $this->data['text_product'] = $this->language->get('text_product');
      $this->data['text_view'] = $this->language->get('text_view');
      $this->data['text_default'] = $this->language->get('text_default');

      $this->data['token'] = $this->session->data['token'];

      if (isset($this->error['warning'])) {
          $this->data['error_warning'] = $this->error['warning'];
      } else {
          $this->data['error_warning'] = '';
      }

      if (isset($this->session->data['success'])) {
          $this->data['success'] = $this->session->data['success'];

          unset($this->session->data['success']);
      } else {
          $this->data['success'] = '';
      }

      $url = '';

      if (isset($this->request->get['filter_date'])) {
          $url .= '&filter_date=' . $this->request->get['filter_date'];
      }

      if (isset($this->request->get['filter_subject'])) {
          $url .= '&filter_subject=' . $this->request->get['filter_subject'];
      }

      if (isset($this->request->get['filter_to'])) {
          $url .= '&filter_to=' . $this->request->get['filter_to'];
      }

      if ($order == 'ASC') {
          $url .= '&order=' .  'DESC';
      } else {
          $url .= '&order=' .  'ASC';
      }

      if (isset($this->request->get['page'])) {
          $url .= '&page=' . $this->request->get['page'];
      }

      $this->data['sort_date'] = $this->url->link('ne/draft', 'token=' . $this->session->data['token'] . '&sort=datetime' . $url, 'SSL');
      $this->data['sort_subject'] = $this->url->link('ne/draft', 'token=' . $this->session->data['token'] . '&sort=subject' . $url, 'SSL');
      $this->data['sort_to'] = $this->url->link('ne/draft', 'token=' . $this->session->data['token'] . '&sort=to' . $url, 'SSL');
      $this->data['sort_store'] = $this->url->link('ne/draft', 'token=' . $this->session->data['token'] . '&sort=store_id' . $url, 'SSL');

      $url = '';

      if (isset($this->request->get['filter_date'])) {
          $url .= '&filter_date=' . $this->request->get['filter_date'];
      }

      if (isset($this->request->get['filter_subject'])) {
          $url .= '&filter_subject=' . $this->request->get['filter_subject'];
      }

      if (isset($this->request->get['filter_to'])) {
          $url .= '&filter_to=' . $this->request->get['filter_to'];
      }

      if (isset($this->request->get['filter_store'])) {
          $url .= '&filter_store=' . $this->request->get['filter_store'];
      }

      if (isset($this->request->get['sort'])) {
          $url .= '&sort=' . $this->request->get['sort'];
      }

      if (isset($this->request->get['order'])) {
          $url .= '&order=' . $this->request->get['order'];
      }

      $this->data['detail'] = $this->url->link('module/pavnewsletter/create_newsletter', 'token=' . $this->session->data['token'] . $url . '&id=', 'SSL');
      $this->data['action'] = $this->url->link('module/pavnewsletter/draft', 'token=' . $this->session->data['token'], 'SSL');

      $pagination = new Pagination();
      $pagination->total = $total;
      $pagination->page = $page;
      $pagination->limit = $this->config->get('config_admin_limit');
      $pagination->text = $this->language->get('text_pagination');
      $pagination->url = $this->url->link('module/pavnewsletter/draft', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

      $this->data['pagination'] = $pagination->render();

      $this->load->model('setting/store');

      $this->data['stores'] = $this->model_setting_store->getStores();

      $this->data['filter_date'] = $filter_date;
      $this->data['filter_subject'] = $filter_subject;
      $this->data['filter_to'] = $filter_to;
      $this->data['filter_store'] = $filter_store;

      $this->data['sort'] = $sort;
      $this->data['order'] = $order;

      $this->template = 'module/pavnewsletter/draft_newsletter.tpl';
      $this->children = array(
          'common/header',
          'common/footer',
      );

      $this->response->setOutput($this->render());
	}
	public function preview_newsletter(){

	}
	public function get_template(){
		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			$post = http_build_query($this->request->post, '', '&');

			if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
				$store_url = (defined('HTTPS_CATALOG') ? HTTPS_CATALOG : HTTP_CATALOG);
			} else {
				$store_url = HTTP_CATALOG;
			}

			if (isset($this->request->post['store_id'])) {
				$this->load->model('setting/store');
				$store = $this->model_setting_store->getStore($this->request->post['store_id']);
				if ($store) {
					$url = rtrim($store['url'], '/') . '/index.php?route=module/pavnewsletter/get_template/json';
				} else {
					$url = $store_url . 'index.php?route=module/pavnewsletter/get_template/json';
				}
			} else {
				$url = $store_url . 'index.php?route=module/pavnewsletter/get_template/json';
			}

			$result = $this->do_request(array(
				'url' => $url,
				'header' => array('Content-type: application/x-www-form-urlencoded', "Content-Length: ". strlen($post), "X-Requested-With: XMLHttpRequest"),
				'method' => 'POST',
				'content' => $post
			));

			$response = $result['response'];

			$this->response->addHeader('Content-type: application/json');
			$this->response->setOutput($response);
		} else {
			$this->redirect($this->url->link('module/pavnewsletter/create_newsletter', 'token=' . $this->session->data['token'], 'SSL'));
		}
	}
	private function do_request($options) {
		$options = $options + array(
			'method' => 'GET',
			'content' => false,
			'header' => false,
			'async' => false,
		);

		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $options['url']);
		curl_setopt($ch, CURLOPT_HEADER, 1);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 60);
		curl_setopt($ch, CURLOPT_USERAGENT, 'PavNewsletter for Opencart');

		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);

		if ($options['header']) {
			curl_setopt($ch, CURLOPT_HTTPHEADER, $options['header']);
		}

		if ($options['async']) {
			curl_setopt($ch, CURLOPT_TIMEOUT, 1);
		} else {
			curl_setopt($ch, CURLOPT_TIMEOUT, 0);
		}

		switch ($options['method']) {
			case 'HEAD':
				curl_setopt($ch, CURLOPT_NOBODY, 1);
				break;
			case 'POST':
				curl_setopt($ch, CURLOPT_POST, 1);
				curl_setopt($ch, CURLOPT_POSTFIELDS, $options['content']);
				break;
			case 'PUT':
				curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'PUT');
				curl_setopt($ch, CURLOPT_POSTFIELDS, $options['content']);
				break;
			default:
				curl_setopt($ch, CURLOPT_CUSTOMREQUEST, $options['method']);
				if ($options['content'])
					curl_setopt($ch, CURLOPT_POSTFIELDS, $options['content']);
				break;
		}

		$result = curl_exec($ch);
		$info = curl_getinfo($ch);
		$status = curl_getinfo($ch, CURLINFO_HTTP_CODE);

		curl_close($ch);

		return array(
			'header' => substr($result, 0, $info['header_size']),
			'response' => substr($result, $info['header_size']),
			'status' => $status,
			'info' => $info
		);
	}
	public function save_draft(){
      if ($this->request->server['REQUEST_METHOD'] == 'POST') {
          $this->load->model('pavnewsletter/draft');
          $this->load->language('module/pavnewsletter');
          $this->model_pavnewsletter_draft->save($this->request->post);
          $this->session->data['success'] = $this->language->get('text_success_save');
      }

      $this->redirect($this->url->link('module/pavnewsletter/draft', 'token=' . $this->session->data['token'], 'SSL'));
	}

	protected function validateSend() {
		$post = array(
			'subject' => '',
			'message' => ''
		);
		$this->request->post = array_merge( $post, $this->request->post );
		
		if (!$this->user->hasPermission('modify', 'module/pavnewsletter')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if ((utf8_strlen($this->request->post['subject']) < 1)) {
			$this->error['subject'] = $this->language->get('error_newsletter_subject');
		}

		if ((utf8_strlen($this->request->post['message']) < 1)) {
			$this->error['message'] = $this->language->get('error_newsletter_message');
		}

		if ($this->error && !isset($this->error['warning'])) {
			$this->error['warning'] = $this->language->get('error_warning');
		}



		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
	
	public function create_newsletter(){
		$this->load->model('pavnewsletter/newsletter');
		$this->load->model('pavnewsletter/draft');

		if( isset($this->request->get['id']) ){
			$this->request->post = $this->model_pavnewsletter_draft->detail($this->request->get['id']);
		}
		if (isset($this->request->get['id']) && $this->request->server['REQUEST_METHOD'] != 'POST'  && $this->validateSend()) {
			
			$this->request->post = $this->model_pavnewsletter_draft->detail($this->request->get['id']);

			if (!$this->request->post) {
				$this->redirect($this->url->link('module/pavnewsletter/create_newsletter', 'token=' . $this->session->data['token'], 'SSL'));
			}
		}
	
		$this->initData();
		$this->setBreadcrumb();
		$this->load->model("pavnewsletter/template");
		$this->load->model("pavnewsletter/newsletter");
		$this->data["menu_active"] = "create_newsletter";
		$this->data['cancel'] = $this->url->link('module/pavnewsletter/templates', 'token=' . $this->session->data['token'], 'SSL');
		$this->data["templates"] = $this->model_pavnewsletter_template->getTemplates();

		$this->load->language('sale/contact');
		$this->load->model('localisation/language');
		$languages = $this->model_localisation_language->getLanguages();
		$this->data['languages'] = $languages;
		$this->data['token'] = $this->session->data['token'];
		$this->data['button_attach'] = $this->language->get('button_attach');
		$this->data['button_upload'] = $this->language->get('button_upload');
		$this->data['button_preview'] = $this->language->get('button_preview');
		$this->data['button_save_draft'] = $this->language->get('button_save_draft');
		$this->data['button_send'] = $this->language->get('button_send');
		$this->data['button_spam'] = $this->language->get('button_spam');
		$this->data['entry_template'] = $this->language->get('entry_template');
		$this->data['entry_yes'] = $this->language->get('entry_yes');
		$this->data['entry_no'] = $this->language->get('entry_no');
		$this->data['entry_defined'] = $this->language->get('entry_defined');
		$this->data['entry_latest'] = $this->language->get('entry_latest');
		$this->data['entry_popular'] = $this->language->get('entry_popular');
		$this->data['entry_special'] = $this->language->get('entry_special');
		$this->data['entry_product'] = $this->language->get('entry_product');
		$this->data['entry_attachments'] = $this->language->get('entry_attachments');
		$this->data['entry_store'] = $this->language->get('entry_store');
		$this->data['entry_language'] = $this->language->get('entry_language');
		$this->data['entry_to'] = $this->language->get('entry_to');
		$this->data['entry_customer_group'] = $this->language->get('entry_customer_group');
		$this->data['entry_customer'] = $this->language->get('entry_customer');
		$this->data['entry_affiliate'] = $this->language->get('entry_affiliate');
		$this->data['entry_product'] = $this->language->get('entry_product');
		$this->data['entry_subject'] = $this->language->get('entry_subject');
		$this->data['entry_message'] = $this->language->get('entry_message');
		$this->data['entry_marketing'] = $this->language->get('entry_marketing');
		$this->data['entry_defined_categories'] = $this->language->get('entry_defined_categories');
		$this->data['entry_section_name'] = $this->language->get('entry_section_name');
		$this->data['entry_currency'] = $this->language->get('entry_currency');

		$this->data['button_add_file'] = $this->language->get('button_add_file');
		$this->data['button_add_defined_section'] = $this->language->get('button_add_defined_section');
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_remove'] = $this->language->get('button_remove');
		$this->data['button_send'] = $this->language->get('button_send');
		$this->data['button_reset'] = $this->language->get('button_reset');
		$this->data['button_back'] = $this->language->get('button_back');
		$this->data['button_update'] = $this->language->get('button_update');
		$this->data['button_preview'] = $this->language->get('button_preview');
		$this->data['button_check'] = $this->language->get('button_check');

		$this->data['text_marketing'] = $this->language->get('text_marketing');
		$this->data['text_marketing_all'] = $this->language->get('text_marketing_all');
		$this->data['text_subscriber_all'] = $this->language->get('text_subscriber_all');
		$this->data['text_all'] = $this->language->get('text_all');
		$this->data['text_clear_warning'] = $this->language->get('text_clear_warning');
		$this->data['text_message_info'] = $this->language->get('text_message_info');
		$this->data['text_default'] = $this->language->get('text_default');
		$this->data['text_newsletter'] = $this->language->get('text_newsletter');
		$this->data['text_customer_all'] = $this->language->get('text_customer_all');
		$this->data['text_customer'] = $this->language->get('text_customer');
		$this->data['text_customer_group'] = $this->language->get('text_customer_group');
		$this->data['text_affiliate_all'] = $this->language->get('text_affiliate_all');
		$this->data['text_affiliate'] = $this->language->get('text_affiliate');
		$this->data['text_product'] = $this->language->get('text_product');
		$this->data['text_loading'] = $this->language->get('text_loading');
		$this->data['text_only_subscribers'] = $this->language->get('text_only_subscribers');
		$this->data['text_only_selected_language'] = $this->language->get('text_only_selected_language');
		$this->data['text_rewards'] = $this->language->get('text_rewards');
		$this->data['text_rewards_all'] = $this->language->get('text_rewards_all');

		$this->load->model('catalog/product');

		$this->data['defined_products'] = array();

		if (isset($this->request->post['defined_product']) && is_array($this->request->post['defined_product'])) {
			foreach ($this->request->post['defined_product'] as $product_id) {
				$product_info = $this->model_catalog_product->getProduct($product_id);

				if ($product_info) {
					$this->data['defined_products'][] = array(
						'product_id' => $product_info['product_id'],
						'name'       => $product_info['name']
					);
				}
			}
			unset($product_info);
			unset($product_id);
		}
		$this->data['defined_products_more'] = array();

		if (isset($this->request->post['defined_product_more']) && is_array($this->request->post['defined_product_more'])) {
			foreach ($this->request->post['defined_product_more'] as $dpm) {
				if (!isset($dpm['products'])) {
					$dpm['products'] = array();
				}
				if (!isset($dpm['text'])) {
					$dpm['text'] = '';
				}
				$defined_products_more = array('text' => $dpm['text'], 'products' => array());
				foreach ($dpm['products'] as $product_id) {
					$product_info = $this->model_catalog_product->getProduct($product_id);

					if ($product_info) {
						$defined_products_more['products'][] = array(
							'product_id' => $product_info['product_id'],
							'name'       => $product_info['name']
						);
					}
				}
				$this->data['defined_products_more'][] = $defined_products_more;
			}
			unset($defined_products_more);
			unset($product_info);
			unset($product_id);
		}

		$this->load->model('catalog/category');

		$this->data['categories'] = $this->model_catalog_category->getCategories(0);

		if (isset($this->request->get['id']) || isset($this->request->post['id'])) {
			$this->data['id'] = (isset($this->request->get['id']) ?$this->request->get['id'] : $this->request->post['id']);
		} else {
			$this->data['id'] = false;
		}

		if (isset($this->request->post['defined'])) {
			$this->data['defined'] = $this->request->post['defined'];
		} else {
			$this->data['defined'] = false;
		}

		if (isset($this->request->post['defined_categories'])) {
			$this->data['defined_categories'] = $this->request->post['defined_categories'];
		} else {
			$this->data['defined_categories'] = false;
		}

		if (isset($this->request->post['defined_category'])) {
			$this->data['defined_category'] = $this->request->post['defined_category'];
		} else {
			$this->data['defined_category'] = array();
		}

		if (isset($this->request->post['special'])) {
			$this->data['special'] = $this->request->post['special'];
		} else {
			$this->data['special'] = false;
		}

		if (isset($this->request->post['latest'])) {
			$this->data['latest'] = $this->request->post['latest'];
		} else {
			$this->data['latest'] = false;
		}

		if (isset($this->request->post['popular'])) {
			$this->data['popular'] = $this->request->post['popular'];
		} else {
			$this->data['popular'] = false;
		}

		if (isset($this->request->post['attachments'])) {
			$this->data['attachments'] = $this->request->post['attachments'];
		} else {
			$this->data['attachments'] = false;
		}

		$this->load->model('sale/customer_group');

		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}


		if (isset($this->error['subject'])) {
			$this->data['error_subject'] = $this->error['subject'];
		} else {
			$this->data['error_subject'] = array();
		}

		if (isset($this->error['message'])) {
			$this->data['error_message'] = $this->error['message'];
		} else {
			$this->data['error_message'] = array();
		}

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateSend()) { 
			$action = isset($this->request->post['action'])?$this->request->post['action']:"";
			set_time_limit(0);

			$emails = array();

			$this->load->model('localisation/language');
			$language = $this->model_localisation_language->getLanguage((isset($this->request->post['language_id']) ? $this->request->post['language_id'] : $this->config->get('config_language_id')));
			
			if($action == 'save_draft'){
				$this->save_draft();
			}
			elseif ($action =='check_spam') {
				$emails['check@isnotspam.com'] = array(
					'firstname' => 'John',
					'lastname' => 'Doe'
				);
			} else {
				switch ($this->request->post['to']) {
					case 'subscriber':
						$customer_data = array(
							'filter_newsletter' => 1
						);

						$results = $this->model_pavnewsletter_newsletter->getCustomers($customer_data);

						foreach ($results as $result) {
							/*if (isset($this->request->post['only_selected_language']) && $this->request->post['only_selected_language'] ) {
								continue;
							}*/
							if ($result['store_id'] == $this->request->post['store_id']) {
								$emails[$result['email']] = array(
									'firstname' => $result['firstname'],
									'lastname' => $result['lastname']
								);
							}
						}
						break;
					case 'all':

						$results = $this->model_pavnewsletter_newsletter->getCustomers();

						foreach ($results as $result) {
							/*if (isset($this->request->post['only_selected_language']) && $this->request->post['only_selected_language'] ) {
								continue;
							}*/
							if ($result['store_id'] == $this->request->post['store_id']) {
								$emails[$result['email']] = array(
									'firstname' => $result['firstname'],
									'lastname' => $result['lastname']
								);
							}
						}
						break;
					case 'newsletter':
							$this->load->model('pavnewsletter/subscribe');
							$customer_data = array(
								'filter_action' => 1
							);

							$results = $this->model_pavnewsletter_subscribe->getSubscribers($customer_data); 

							foreach ($results as $result) {
								// if (isset($this->request->post['only_selected_language']) && $this->request->post['only_selected_language'] ) {
								// 	continue;
								// }
								if ($result['store_id'] == $this->request->post['store_id']) {
									$emails[$result['email']] = array(
										'firstname' => 'Mr/Ms',
										'lastname' => 'Guest'
									);
								}
							}
						break;
					case 'customer_all':
						$results = $this->model_pavnewsletter_newsletter->getCustomers();
						
						foreach ($results as $result) {
							/*if (isset($this->request->post['only_selected_language']) && $this->request->post['only_selected_language'] ) {
								continue;
							}*/
							if (empty($result['store_id']) || ($result['store_id'] == $this->request->post['store_id'] )) {
								$emails[$result['email']] = array(
									'firstname' => $result['firstname'],
									'lastname' => $result['lastname']
								);
							}
						}
						break;
					case 'customer_group':
						$customer_data = array(
							'filter_customer_group_id' => $this->request->post['customer_group_id']
						);

						if (isset($this->request->post['customer_group_only_subscribers'])) {
							$customer_data['filter_newsletter'] = 1;
						}

						$results = $this->model_pavnewsletter_newsletter->getCustomers($customer_data);

						foreach ($results as $result) {
							/*if (isset($this->request->post['only_selected_language']) && $this->request->post['only_selected_language'] ) {
								continue;
							}*/
							if ($result['store_id'] == $this->request->post['store_id']) {
								$emails[$result['email']] = array(
									'firstname' => $result['firstname'],
									'lastname' => $result['lastname']
								);
							}
						}
						break;
					case 'customer':
						if (isset($this->request->post['customer']) && !empty($this->request->post['customer'])) {
							foreach ($this->request->post['customer'] as $customer_id) {
								$customer_info = $this->model_pavnewsletter_newsletter->getCustomer($customer_id);

								if ($customer_info) {
									/*if (isset($this->request->post['only_selected_language']) && $this->request->post['only_selected_language'] ) {
										continue;
									}*/
									$emails[$customer_info['email']] = array(
										'firstname' => $customer_info['firstname'],
										'lastname' => $customer_info['lastname']
									);
								}
							}
						}
						break;
					case 'affiliate_all':
						$results = $this->model_pavnewsletter_newsletter->getAffiliates();

						foreach ($results as $result) {
							/*if (isset($this->request->post['only_selected_language']) && $this->request->post['only_selected_language'] ) {
								continue;
							}*/
							$emails[$result['email']] = array(
								'firstname' => $result['firstname'],
								'lastname' => $result['lastname']
							);
						}
						break;
					case 'affiliate':
						if (isset($this->request->post['affiliate']) && !empty($this->request->post['affiliate'])) {
							foreach ($this->request->post['affiliate'] as $affiliate_id) {
								$affiliate_info = $this->model_pavnewsletter_newsletter->getAffiliate($affiliate_id);

								if ($affiliate_info) {
									/*if (isset($this->request->post['only_selected_language']) && (($language['code'] != $affiliate_info['language_code'] && $affiliate_info['language_code']) || (!$affiliate_info['language_code'] && $language['language_id'] != $this->config->get('config_language_id')))) {
										continue;
									}*/
									$emails[$affiliate_info['email']] = array(
										'firstname' => $affiliate_info['firstname'],
										'lastname' => $affiliate_info['lastname']
									);
								}
							}
						}
						break;
					case 'product':
						if (isset($this->request->post['product']) && $this->request->post['product']) {
							$results = $this->model_pavnewsletter_newsletter->getEmailsByProductsOrdered($this->request->post['product']);

							foreach ($results as $result) {
								/*if (isset($this->request->post['only_selected_language']) && $this->request->post['only_selected_language'] ) {
									continue;
								}*/
								if ($result['store_id'] == $this->request->post['store_id']) {
									$emails[$result['email']] = array(
										'firstname' => $result['firstname'],
										'lastname' => $result['lastname']
									);
								}
							}
						}
						break;
					case 'rewards_all':
						$results = $this->model_pavnewsletter_newsletter->getRecipientsWithRewardPoints();

						foreach ($results as $result) {
							/*if (isset($this->request->post['only_selected_language']) && $this->request->post['only_selected_language'] ) {
								continue;
							}*/
							$emails[$result['email']] = array(
								'firstname' => $result['firstname'],
								'lastname' => $result['lastname'],
								'reward' => $result['points'],
							);
						}
						break;
					case 'rewards':
						$results = $this->model_pavnewsletter_newsletter->getSubscribedRecipientsWithRewardPoints();

						foreach ($results as $result) {
							/*if (isset($this->request->post['only_selected_language']) && $this->request->post['only_selected_language'] ) {
								continue;
							}*/
							$emails[$result['email']] = array(
								'firstname' => $result['firstname'],
								'lastname' => $result['lastname'],
								'reward' => $result['points'],
							);
						}
						break;
				}
			}

			if ($emails) {
				$data = array(
					'emails' => $emails,
					'to' => $this->request->post['to'],
					'subject' => $this->request->post['subject'],
					'message' => $this->request->post['message'],
					'store_id' => $this->request->post['store_id'],
					'template_id' => $this->request->post['template_id'],
					'language_id' => $language['language_id'],
					'attachments_count' => $this->request->post['attachments_count'],
					'attachments_upload' => $this->request->files,
					'attachments' => false,
					'language_code' => $language['code']
				);
				
				$data_products = array();
				//get list products
				$this->load->model('pavnewsletter/product');
				$setting = array(
					'currency' => $this->request->post['currency'],
					'width' => 80,
					'height' => 80,
					'limit' => 5,
				);
			
				
				if($this->request->post['defined'] && isset($this->request->post['defined_product']) ) {
					$defined_product = $this->request->post['defined_product'];
					$selectedProducts = array();
					$products = $this->model_pavnewsletter_product->getProducts();
					foreach($products as $product) {
						if(in_array($product['product_id'],$defined_product)) {
							$selectedProducts[] = $product;
						}
					}
					$test = $this->getItemProducts($selectedProducts, $setting);
					$data_products['selected'] = $this->getItemProducts($selectedProducts, $setting);
				}
			
				if($this->request->post['special']) {
					$specialProducts = $this->model_pavnewsletter_product->getProductSpecials($setting['limit']);
					$data_products['special'] = $this->getItemProducts($specialProducts, $setting);
				}
				
				if($this->request->post['latest']) {
					$latestProducts = $this->model_pavnewsletter_product->getLatestProducts($setting['limit']);
					$data_products['latest'] = $this->getItemProducts($latestProducts, $setting);
				}
				
				if($this->request->post['popular']) {
					$popularProducts = $this->model_pavnewsletter_product->getPopularProducts($setting['limit']);
					$data_products['popular'] = $this->getItemProducts($popularProducts, $setting);
				}
				
				if( isset($this->request->post['defined_categories']) && isset($this->request->post['defined_category']) ) {
					


					$defined_category = $this->request->post['defined_category'];
					$categoriesProducts = array();
					$products = $this->model_pavnewsletter_product->getProducts();
					foreach($products as $product) {
						if(in_array($product['product_id'],$defined_category)) {
							$categoriesProducts[] = $product;
						}
					}
					$data_products['category'] = $this->getItemProducts($categoriesProducts, $setting);
				}
				$data['lstproduct'] = $data_products;
				$this->model_pavnewsletter_newsletter->send($data);
			} else {
				$this->error['warning'] = $this->language->get("text_error_empty_email");
			}
		}
		
		
		
		$this->data['token'] = $this->session->data['token'];

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

 		if (isset($this->error['subject'])) {
			$this->data['error_subject'] = $this->error['subject'];
		} else {
			$this->data['error_subject'] = '';
		}

		if (isset($this->error['message'])) {
			$this->data['error_message'] = $this->error['message'];
		} else {
			$this->data['error_message'] = '';
		}

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/pavnewsletter/create_newsletter', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);

		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$this->data['action'] = $this->url->link('module/pavnewsletter/create_newsletter', 'token=' . $this->session->data['token'], 'SSL');

    	$this->data['save'] = $this->url->link('module/pavnewsletter/save_draft', 'token=' . $this->session->data['token'], 'SSL');

    	if (isset($this->request->post['template_id'])) {
			$this->data['template_id'] = $this->request->post['template_id'];
		} else {
			$this->data['template_id'] = '';
		}

		$this->load->model('pavnewsletter/template');
		$this->data['templates'] = $this->model_pavnewsletter_template->getTemplates();

		if (isset($this->request->post['store_id'])) {
			$this->data['store_id'] = $this->request->post['store_id'];
		} else {
			$this->data['store_id'] = '';
		}

		$this->load->model('setting/store');

		$this->data['stores'] = $this->model_setting_store->getStores();

		if (isset($this->request->post['language_id'])) {
			$this->data['language_id'] = $this->request->post['language_id'];
		} else {
			$this->data['language_id'] = '';
		}

		$this->load->model('localisation/language');

		$this->data['languages'] = $this->model_localisation_language->getLanguages();

		if (isset($this->request->post['currency'])) {
			$this->data['currency'] = $this->request->post['currency'];
		} else {
			$this->data['currency'] = '';
		}

		$this->load->model('localisation/currency');

		$this->data['currencies'] = $this->model_localisation_currency->getCurrencies();

		if (isset($this->request->post['to'])) {
			$this->data['to'] = $this->request->post['to'];
		} else {
			$this->data['to'] = '';
		}

		if (isset($this->request->post['customer_group_id'])) {
			$this->data['customer_group_id'] = $this->request->post['customer_group_id'];
		} else {
			$this->data['customer_group_id'] = '';
		}

		if (isset($this->request->post['customer_group_only_subscribers'])) {
			$this->data['customer_group_only_subscribers'] = $this->request->post['customer_group_only_subscribers'];
		} else {
			$this->data['customer_group_only_subscribers'] = '';
		}

		if (isset($this->request->post['only_selected_language'])) {
			$this->data['only_selected_language'] = $this->request->post['only_selected_language'];
		} else {
			$this->data['only_selected_language'] = 1;
		}

		$this->data['customer_groups'] = $this->model_sale_customer_group->getCustomerGroups(0);

		$this->data['customers'] = array();

		if (isset($this->request->post['customer']) && is_array($this->request->post['customer'])) {
			foreach ($this->request->post['customer'] as $customer_id) {
				$customer_info = $this->model_pavnewsletter_newsletter->getCustomer($customer_id);

				if ($customer_info) {
					$this->data['customers'][] = array(
						'customer_id' => $customer_info['customer_id'],
						'name'        => $customer_info['firstname'] . ' ' . $customer_info['lastname']
					);
				}
			}
		}

    $this->data['affiliates'] = array();

      if (isset($this->request->post['affiliate']) && is_array($this->request->post['affiliate'])) {
          foreach ($this->request->post['affiliate'] as $affiliate_id) {
              $affiliate_info = $this->model_pavnewsletter_newsletter->getAffiliate($affiliate_id);

              if ($affiliate_info) {
                  $this->data['affiliates'][] = array(
                      'affiliate_id' => $affiliate_info['affiliate_id'],
                      'name'         => $affiliate_info['firstname'] . ' ' . $affiliate_info['lastname']
                  );
              }
          }
      }
		$this->load->model('catalog/product');

		$this->data['products'] = array();

		if (isset($this->request->post['product']) && is_array($this->request->post['product'])) {
			foreach ($this->request->post['product'] as $product_id) {
				$product_info = $this->model_catalog_product->getProduct($product_id);

				if ($product_info) {
					$this->data['products'][] = array(
						'product_id' => $product_info['product_id'],
						'name'       => $product_info['name']
					);
				}
			}
		}

		if (isset($this->request->post['subject'])) {
			$this->data['subject'] = $this->request->post['subject'];
		} else {
			$this->data['subject'] = '';
		}

		if (isset($this->request->post['message'])) {
			$this->data['message'] = $this->request->post['message'];
		} else {
			$this->data['message'] = '';
		}

		$this->template = 'module/pavnewsletter/form_newsletter.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}
	public function templates(){
		$this->initData();
		$this->setBreadcrumb();
		$this->load->model("pavnewsletter/template");
		$this->data["menu_active"] = "templates";
		if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
			$action = isset($this->request->post['action'])?$this->request->post['action']:"";
			switch ($action) {
				case 'copy_default':

					break;
				case 'copy':
					$templates = isset($this->request->post["templates"])?$this->request->post["templates"]:array();
					$check = false;
					if(!empty($templates)){
						$check = $this->model_pavnewsletter_template->copy($templates);
					}
					if($check){
						$this->data["success"] = $this->language->get("text_success_copy_template");
					}else{
						$this->data["error_warning"] = $this->language->get("text_error_cannot_copy_template");
					}
					break;
				case 'insert':
					return $this->template();
					break;
				case 'delete':
					$templates = isset($this->request->post["templates"])?$this->request->post["templates"]:array();
					$check = false;
					if(!empty($templates)){
						$check = $this->model_pavnewsletter_template->delete($templates);
					}
					if($check){
						$this->data["success"] = $this->language->get("text_delete_template");
					}else{
						$this->data["error_warning"] = $this->language->get("text_error_delete_template");
					}
					break;
				default:

					break;
			}
		}
		$templates = $this->model_pavnewsletter_template->getTemplates();
		$this->data["templates"] = $templates;
		$this->data["pagination"] = "";
		$this->data['token'] = $this->session->data['token'];
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		$this->data['insert_link'] = $this->url->link('module/pavnewsletter/template', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['action'] = $this->url->link('module/pavnewsletter/templates', 'token=' . $this->session->data['token'], 'SSL');
		$this->template = 'module/pavnewsletter/templates.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}
	public function upload() {
		$this->language->load('sale/order');

		$json = array();

		if (!$this->user->hasPermission('modify', 'module/pavnewsletter')) {
      		$json['error'] = $this->language->get('error_permission');
    	}

		if (!isset($json['error'])) {
			if (!empty($this->request->files['file']['name'])) {
				$filename = basename(html_entity_decode($this->request->files['file']['name'], ENT_QUOTES, 'UTF-8'));

				if ((utf8_strlen($filename) < 3) || (utf8_strlen($filename) > 128)) {
					$json['error'] = $this->language->get('error_filename');
				}

				// Allowed file extension types
				$allowed = array();

				$filetypes = explode("\n", $this->config->get('config_file_extension_allowed'));

				foreach ($filetypes as $filetype) {
					$allowed[] = trim($filetype);
				}

				if (!in_array(substr(strrchr($filename, '.'), 1), $allowed)) {
					$json['error'] = $this->language->get('error_filetype');
				}

				// Allowed file mime types
				$allowed = array();

				$filetypes = explode("\n", $this->config->get('config_file_mime_allowed'));

				foreach ($filetypes as $filetype) {
					$allowed[] = trim($filetype);
				}

				if (!in_array($this->request->files['file']['type'], $allowed)) {
					$json['error'] = $this->language->get('error_filetype');
				}

				if ($this->request->files['file']['error'] != UPLOAD_ERR_OK) {
					$json['error'] = $this->language->get('error_upload_' . $this->request->files['file']['error']);
				}

				if ($this->request->files['file']['error'] != UPLOAD_ERR_OK) {
					$json['error'] = $this->language->get('error_upload_' . $this->request->files['file']['error']);
				}
			} else {
				$json['error'] = $this->language->get('error_upload');
			}
		}

		if (!isset($json['error'])) {
			if (is_uploaded_file($this->request->files['file']['tmp_name']) && file_exists($this->request->files['file']['tmp_name'])) {
				$ext = md5(mt_rand());

				$json['filename'] = $filename . '.' . $ext;
				$json['mask'] = $filename;

				move_uploaded_file($this->request->files['file']['tmp_name'], DIR_DOWNLOAD .'pavnewsletter/'. $filename . '.' . $ext);
			}

			$json['success'] = $this->language->get('text_upload');
		}

		$this->response->setOutput(json_encode($json));
	}
	public function template_from_file(){
		$template = isset($this->request->post["template"])?$this->request->post["template"]:array();
		$template_file = isset($template["template_file"])?$template["template_file"]:"";
		$json = array();
		if(!empty($template_file)){
			$file_path = DIR_DOWNLOAD."pavnewsletter/".$template_file;
			$json["template"] = file_get_contents($file_path);
		}

		$this->response->setOutput(json_encode($json));
	}
	public function template(){
		$this->initData();
		$this->setBreadcrumb();
		$this->load->model("pavnewsletter/template");
		$this->data["menu_active"] = "templates";
		$this->data['cancel'] = $this->url->link('module/pavnewsletter/templates', 'token=' . $this->session->data['token'], 'SSL');
		$template_id = isset($this->request->get['id'])?$this->request->get['id']:0;
		if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
			$action = isset($this->request->post["action"])?$this->request->post["action"]:"";
			if($action == "get_template"){

			}else{
				$check = $this->model_pavnewsletter_template->insertTemplate($this->request->post);
				if($check)
				 	$this->session->data['success'] = $this->language->get('text_pavnewsletter_success');
				else
					$this->session->data['error_warning'] = $this->language->get('text_pavnewsletter_error_warning');

				$this->redirect($this->url->link('module/pavnewsletter/templates', 'token=' . $this->session->data['token'], 'SSL'));
			}

		}
		$template = $this->model_pavnewsletter_template->getTemplate($template_id);
		$this->load->model('localisation/language');
		$languages = $this->model_localisation_language->getLanguages();
		$this->data['languages'] = $languages;
		$this->data['template_id'] = $template_id;
		$this->data["template"] = $template;
		$this->data["template_description"] = isset($template["template_description"])?$template["template_description"]:array();
		$this->data['token'] = $this->session->data['token'];
		$this->data['button_upload'] = $this->language->get('button_upload');
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		if (isset($this->error['filename'])) {
			$this->data['error_filename'] = $this->error['filename'];
		} else {
			$this->data['error_filename'] = '';
		}

		$this->data['action'] = $this->url->link('module/pavnewsletter/template', 'token=' . $this->session->data['token'], 'SSL');
		$this->template = 'module/pavnewsletter/form_template.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}
	public function modules(){
		$this->initData();

		$model = $this->model_pavnewsletter_newsletter;

		$model->installModule();

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

			//$action = $this->request->post['pavnewsletter_module']['action'];
			$store_id = $this->request->post['pavnewsletter_module']['store_id'];
			$surl = isset($store_id)?'&store_id='.$store_id:'';

			//unset( $this->request->post['pavnewsletter_module']['action'] );
			unset( $this->request->post['pavnewsletter_module']['store_id']);
			unset( $this->request->post['pavnewsletter_module']['stores']);

			$this->model_setting_setting->editSetting('pavnewsletter', $this->request->post, $store_id);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->redirect($this->url->link('module/pavnewsletter/modules', 'token=' . $this->session->data['token'].$surl, 'SSL'));
		}

		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$this->data['token'] = $this->session->data['token'];
		$this->data['modules'] = array();

		if (isset($this->request->post['pavnewsletter_module'])) {
			$this->data['modules'] = $this->request->post['pavnewsletter_module'];
		} else {
			$setting = $this->model_setting_setting->getSetting("pavnewsletter", $this->data['store_id']);
			$this->data['modules'] = isset($setting['pavnewsletter_module'])?$setting['pavnewsletter_module']:array();
		}

		$this->load->model('design/layout');

		$this->data["menu_active"] = "modules";

		$this->data['layouts'] = array();
		$this->data['layouts'][] = array('layout_id'=>99999, 'name' => $this->language->get('all_page') );

		$this->data['layouts'] = array_merge($this->data['layouts'],$this->model_design_layout->getLayouts());

		$this->load->model('design/banner');

		$this->data['banners'] = $this->model_design_banner->getBanners();

		$this->setBreadcrumb();
    	$this->data['action'] = $this->url->link('module/pavnewsletter/modules', 'token=' . $this->session->data['token'], 'SSL');
		$this->template = 'module/pavnewsletter/frontend_modules.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}
	public function config(){
		$this->initData();
		$this->setBreadcrumb();

		$model = $this->model_pavnewsletter_newsletter;

		$model->installModule();

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('pavnewsletter_config', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->redirect($this->url->link('module/pavnewsletter/config', 'token=' . $this->session->data['token'], 'SSL'));
		}

		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$this->data['token'] = $this->session->data['token'];
    	$this->data["menu_active"] = "config";
    	$this->data["mail_protocals"] = array("mail"=>"Mail", "smtp"=>"SMTP");

		$this->data['general'] = array();

		if (isset($this->request->post['pavnewsletter_config'])) {
			$this->data['general'] = $this->request->post['pavnewsletter_config'];
		} elseif ($this->config->get('pavnewsletter_config')) {
			$this->data['general'] = $this->config->get('pavnewsletter_config');
		}


    	$this->data['action'] = $this->url->link('module/pavnewsletter/config', 'token=' . $this->session->data['token'], 'SSL');
		$this->template = 'module/pavnewsletter/config.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/pavnewsletter')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (isset($this->request->post['pavnewsletter_module'])) {

		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
	
	public function getItemProducts($results = array(), $setting){
	
		global $registry;	
		
		$this->load->model('pavnewsletter/product');		
		$this->load->model('tool/image'); 
		
		require_once( DIR_SYSTEM."/library/currency.php");
		$currency = new Currency($registry);
		$products = array();
		$i = 0;
		foreach ($results as $result) {
			if($i < $setting['limit']) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
				} else {
					$image = false;
				}
				
				$price = $currency->format($result['price'], $setting['currency']);
				
				if (isset($result['special'])) {
					$special = $currency->format((float)$result['special'], $setting['currency']);
				} else {
					$special = false;
				}		
				
				$products[] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'price'       => $price,
					'special'     => $special,
					'href'        => str_replace("/admin/","/",$this->url->link('product/product', 'product_id=' . $result['product_id']))
				);
			}
			$i++;
		}
		return $products;
	}
}
?>
