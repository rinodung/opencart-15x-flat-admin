<?php 
class ControllerProductAdvajaxfilter extends Controller {
	public function index() {
		$this->load->language('product/adv_ajaxfilter');

		$sort = 'p.sort_order';
		$order = 'ASC';
		$limit = $this->config->get('config_catalog_limit');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home'),
			'separator' => false
		);
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('product/adv_ajaxfilter'),
			'separator' => $this->language->get('text_separator')
		);

		$this->document->setTitle($this->language->get('heading_title'));
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_display'] = $this->language->get('text_display');
		$data['button_list'] = $this->language->get('button_list');
		$data['button_grid'] = $this->language->get('button_grid');
		$data['text_sort'] = $this->language->get('text_sort');
		$data['text_limit'] = $this->language->get('text_limit');
        $data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));

        $data['button_compare'] = $this->language->get('button_compare');

        $data['compare'] = $this->url->link('product/compare');

        $url = '';

		if(isset($this->request->get['limit'])) {
			$url .= '&limit=' . $this->request->get['limit'];
		}

		$data['sorts'] = array();

		$data['sorts'][] = array(
			'text' => $this->language->get('text_default'),
			'value' => 'p.sort_order-ASC',
			'href' => $this->url->link('product/adv_ajaxfilter', 'sort=p.sort_order&order=ASC' . $url)
		);

		$data['sorts'][] = array(
			'text' => $this->language->get('text_name_asc'),
			'value' => 'pd.name-ASC',
			'href' => $this->url->link('product/adv_ajaxfilter', 'sort=pd.name&order=ASC' . $url)
		);

		$data['sorts'][] = array(
			'text' => $this->language->get('text_name_desc'),
			'value' => 'pd.name-DESC',
			'href' => $this->url->link('product/adv_ajaxfilter', 'sort=pd.name&order=DESC' . $url)
		);

		$data['sorts'][] = array(
			'text' => $this->language->get('text_price_asc'),
			'value' => 'p.price-ASC',
			'href' => $this->url->link('product/adv_ajaxfilter', 'sort=p.price&order=ASC' . $url)
		);

		$data['sorts'][] = array(
			'text' => $this->language->get('text_price_desc'),
			'value' => 'p.price-DESC',
			'href' => $this->url->link('product/adv_ajaxfilter', 'sort=p.price&order=DESC' . $url)
		);

		if($this->config->get('config_review_status')) {
			$data['sorts'][] = array(
				'text' => $this->language->get('text_rating_desc'),
				'value' => 'rating-DESC',
				'href' => $this->url->link('product/adv_ajaxfilter', 'sort=rating&order=DESC' . $url)
			);

			$data['sorts'][] = array(
				'text' => $this->language->get('text_rating_asc'),
				'value' => 'rating-ASC',
				'href' => $this->url->link('product/adv_ajaxfilter', 'sort=rating&order=ASC' . $url)
			);
		}

		$data['sorts'][] = array(
			'text' => $this->language->get('text_model_asc'),
			'value' => 'p.model-ASC',
			'href' => $this->url->link('product/adv_ajaxfilter', 'sort=p.model&order=ASC' . $url)
		);

		$data['sorts'][] = array(
			'text' => $this->language->get('text_model_desc'),
			'value' => 'p.model-DESC',
			'href' => $this->url->link('product/adv_ajaxfilter', 'sort=p.model&order=DESC' . $url)
		);

		$url = '';

		if(isset($this->request->get['sort'])) {
			$url .= 'sort=' . $this->request->get['sort'];
		}

		if(isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$data['limits'] = array();

		$data['limits'][] = array(
			'text' => $this->config->get('config_catalog_limit'),
			'value' => $this->config->get('config_catalog_limit'),
			'href' => $this->url->link('product/adv_ajaxfilter',  $url . '&limit=' . $this->config->get('config_catalog_limit'))
		);

		$data['limits'][] = array(
			'text' => 25,
			'value' => 25,
			'href' => $this->url->link('product/adv_ajaxfilter',  $url . '&limit=25')
		);

		$data['limits'][] = array(
			'text' => 50,
			'value' => 50,
			'href' => $this->url->link('product/adv_ajaxfilter',  $url . '&limit=50')
		);

		$data['limits'][] = array(
			'text' => 75,
			'value' => 75,
			'href' => $this->url->link('product/adv_ajaxfilter',  $url . '&limit=75')
		);

		$data['limits'][] = array(
			'text' => 100,
			'value' => 100,
			'href' => $this->url->link('product/adv_ajaxfilter',  $url . '&limit=100')
		);

        if ($this->config->get('config_catalog_mode')) {
            $data['catalog_mode'] = true;
        } else {
            $data['catalog_mode'] = false;
        }

		$data['sort'] = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;

		$data['continue'] = $this->url->link('common/home');

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/adv_ajaxfilter.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/adv_ajaxfilter.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/product/adv_ajaxfilter.tpl', $data));
        }
	}
}

?>