<?php
/******************************************************
 *  Leo Opencart Theme Framework for Opencart 2.0.x
 *
 * @package   leotempcp
 * @version   3.0
 * @author    http://www.leotheme.com
 * @copyright Copyright (C) October 2013 LeoThemes.com <@emai:leotheme@gmail.com>
 *               <info@leotheme.com>.All rights reserved.
 * @license   GNU General Public License version 2
 * ******************************************************/

class PtsWidgetGoogle_map extends PtsWidgetPageBuilder {

        public $name = 'google_map';


        public static function getWidgetInfo()
        {
            return array('label' =>  ('Google Map'), 'explain' => 'Create A Google Map', 'group' => 'others'  );
        }


        public function renderForm($args=null, $data)
        {
            $types = array();
            $types[] = array(
                'value' => 'ROADMAP',
                'text'  => $this->l('ROADMAP')
            );
            $types[] = array(
                'value' => 'SATELLITE',
                'text'  => $this->l('SATELLITE')
            );
            $types[] = array(
                'value' => 'HYBRID',
                'text'  => $this->l('HYBRID')
            );
            $types[] = array(
                'value' => 'TERRAIN',
                'text'  => $this->l('TERRAIN')
            );

            $helper = $this->getFormHelper();
            $this->fields_form[1]['form'] = array(
                'legend' => array(
                    'title' => $this->l('Widget Form.'),
                ),
                'input' => array(
                    array(
                        'type'  => 'text',
                        'label' => $this->l('Latitude'),
                        'name'  => 'latitude',
                        'default'=> 21.010904,
                    ),
                    array(
                        'type'  => 'text',
                        'label' => $this->l('Longitude'),
                        'name'  => 'longitude',
                        'default'=> 105.787736,
                    ),
                    array(
                        'type'  => 'text',
                        'label' => $this->l('Zoom'),
                        'name'  => 'zoom',
                        'default'=> 11,
                    ),
                    array(
                        'type'  => 'text',
                        'label' => $this->l('Width'),
                        'name'  => 'width',
                        'default'=> 250,
                    ),
                     array(
                        'type'  => 'text',
                        'label' => $this->l('Height'),
                        'name'  => 'height',
                        'default'=> 200,
                    ),
                    array(
                        'type'    => 'select',
                        'label'   => $this->l( 'Map Type' ),
                        'name'    => 'map_type',
                        'options' => array(  'query' => $types ,
                        'id'      => 'value',
                        'name'    => 'text' ),
                        'default' => "ROADMAP"
                    )
                ),
                 'submit' => array(
                    'title' => $this->l('Save'),
                    'class' => 'button'
                 )
            );


            $default_lang = (int)$this->config->get('config_language_id');

            $helper->tpl_vars = array(
                    'fields_value' => $this->getConfigFieldsValues( $data  ),
                    'id_language' => $default_lang
            );

            return  $helper->generateForm( $this->fields_form );
        }

        public function renderContent($args, $setting)
        {
            $t = array(
                'latitude' => "21.010904",
                'longitude' => '105.787736',
                'zoom'   =>  11,
                'width' => '250',
                'height'    => '200',
                'mapid' => 'map-'.(rand()+time()),
                'map_type' => 'ROADMAP'
            );


            $setting = array_merge( $t, $setting );

            $setting['height']  = $setting['height'].'px';
            $setting['width'] = $setting['width']=="100%"?"100%":$setting['width'].'px';


            $output = array('type'=>'map','data' => $setting );

            return $output;
        }

    }
?>