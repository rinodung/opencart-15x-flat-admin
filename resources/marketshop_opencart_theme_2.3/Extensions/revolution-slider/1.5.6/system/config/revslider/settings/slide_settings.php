<?php

	//set Slide settings
	$arrTransitions = $operations->getArrTransition();
	$arrPremiumTransitions = $operations->getArrTransition(true);
	$defaultTransition = $operations->getDefaultTransition();

	$arrSlideNames = array();
	if(isset($slider) && $slider->isInited())
		$arrSlideNames = $slider->getArrSlideNames();

	$slideSettings = new UniteSettingsAdvancedRev();

	//title
	$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['shown_slides_list'],"class"=>"medium");
	$slideSettings->addTextBox("title",ControllerModulerevslideropencart::$lang_var

['Slide'],ControllerModulerevslideropencart::$lang_var

['Slide_Title'], $params);

	//state
	$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['excluded_slider']);
	$slideSettings->addSelect("state",array("published"=>ControllerModulerevslideropencart::$lang_var

['Published'],"unpublished"=>ControllerModulerevslideropencart::$lang_var

['Unpublished']),ControllerModulerevslideropencart::$lang_var

['State'],"published",$params);

	if(isset($slider) && $slider->isInited()){
		$isWpmlExists = UniteWpmlRev::isWpmlExists();
		$useWpml = $slider->getParam("use_wpml","off");

		if($isWpmlExists && $useWpml == "on"){
			$arrLangs = UniteWpmlRev::getArrLanguages();
			$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['language_slide']);
			$slideSettings->addSelect("lang",$arrLangs,ControllerModulerevslideropencart::$lang_var

['Language'],"all",$params);
		}
	}

	$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['slide_visible']);
	$slideSettings->addDatePicker("date_from","",ControllerModulerevslideropencart::$lang_var

['Visible_from'],$params);

	$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['slide_visible_reached']);
	$slideSettings->addDatePicker("date_to","",ControllerModulerevslideropencart::$lang_var

['Visible_until'], $params);

	$slideSettings->addHr("");

	//transition
	$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['appearance_transitions_slide'],"minwidth"=>"250px");
	$slideSettings->addChecklist("slide_transition",$arrTransitions,ControllerModulerevslideropencart::$lang_var

['Transitions'],$defaultTransition,$params);

	//slot amount
	$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['slide_divided']
		,"class"=>"small","datatype"=>"number"
	);
	$slideSettings->addTextBox("slot_amount","7",ControllerModulerevslideropencart::$lang_var

['Slot_Amount'], $params);

	//rotation:
	$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['Simple_Transitions']
		,"class"=>"small","datatype"=>"number"
	);
	$slideSettings->addTextBox("transition_rotation","0",ControllerModulerevslideropencart::$lang_var

['Rotation'], $params);

	//transition speed
	$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['duration_transition']
		,"class"=>"small","datatype"=>"number"
	);
	$slideSettings->addTextBox("transition_duration","300",ControllerModulerevslideropencart::$lang_var

['Transition_Duration'], $params);
	

	if(!isset($sliderDelay))
		$sliderDelay = 0;

	//delay
	$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['start_delay_value']. $sliderDelay .ControllerModulerevslideropencart::$lang_var

['end_delay_value']
		,"class"=>"small","datatype"=>UniteSettingsRev::DATATYPE_NUMBEROREMTY
	);
	$slideSettings->addTextBox("delay","",ControllerModulerevslideropencart::$lang_var

['Delay'], $params);

	$params = array("description"=>""
		,"class"=>"small"
	);
	$slideSettings->addRadio("save_performance", array("on"=>ControllerModulerevslideropencart::$lang_var

['On'],"off"=>ControllerModulerevslideropencart::$lang_var

['off']), ControllerModulerevslideropencart::$lang_var

['Save_Performance'],"off", $params);
	
	$slideSettings->addHr("");

	//-----------------------

	//enable link
	$slideSettings->addSelect_boolean("enable_link", ControllerModulerevslideropencart::$lang_var

['Enable_Link'], false, ControllerModulerevslideropencart::$lang_var

['Enable'],ControllerModulerevslideropencart::$lang_var

['Disable']);

	$slideSettings->startBulkControl("enable_link", UniteSettingsRev::CONTROL_TYPE_SHOW, "true");

		//link type
		$slideSettings->addRadio("link_type", array("regular"=>ControllerModulerevslideropencart::$lang_var

['Regular'],"slide"=>ControllerModulerevslideropencart::$lang_var

['To_Slide']), ControllerModulerevslideropencart::$lang_var

['Link_Type'],"regular");

		//link
		$params = array('id'=>'rev_link', "description"=>ControllerModulerevslideropencart::$lang_var

['template_sliders_link']);
		$slideSettings->addTextBox("link","",ControllerModulerevslideropencart::$lang_var

['Slide_Link'], $params);

		//link target
		$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['Target_slide_link']);
		$slideSettings->addSelect("link_open_in",array("same"=>ControllerModulerevslideropencart::$lang_var

['Same_Window'],"new"=>ControllerModulerevslideropencart::$lang_var

['New_Window']),ControllerModulerevslideropencart::$lang_var

['Link_Open'],"same",$params);

		//num_slide_link
		$arrSlideLink = array();
		$arrSlideLink["nothing"] = ControllerModulerevslideropencart::$lang_var

['Not_Chosen'];
		$arrSlideLink["next"] = ControllerModulerevslideropencart::$lang_var

['Next_Slide'];
		$arrSlideLink["prev"] = ControllerModulerevslideropencart::$lang_var

['Previous_Slide'];

		$arrSlideLinkLayers = $arrSlideLink;
		$arrSlideLinkLayers["scroll_under"] = ControllerModulerevslideropencart::$lang_var

['Scroll_Below_Slider'];

		foreach($arrSlideNames as $slideNameID=>$arr){
			$slideName = $arr["title"];
			$arrSlideLink[$slideNameID] = $slideName;
			$arrSlideLinkLayers[$slideNameID] = $slideName;
		}

		$slideSettings->addSelect("slide_link", $arrSlideLink, "Link To Slide","nothing");

		$params = array("description"=>"The position of the link related to layers");
		$slideSettings->addRadio("link_pos", array("front"=>"Front","back"=>"Back"), "Link Position","front",$params);

		//$slideSettings->addHr("link_sap");

	$slideSettings->endBulkControl();

		$slideSettings->addControl("link_type", "slide_link", UniteSettingsRev::CONTROL_TYPE_ENABLE, "slide");
		$slideSettings->addControl("link_type", "link", UniteSettingsRev::CONTROL_TYPE_DISABLE, "slide");
		$slideSettings->addControl("link_type", "link_open_in", UniteSettingsRev::CONTROL_TYPE_DISABLE, "slide");

	//-----------------------

	$slideSettings->addHr("");

	$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['Slide_Thumbnail_Image']);
	$slideSettings->addImage("slide_thumb", "",ControllerModulerevslideropencart::$lang_var

['Thumbnail'] , $params);




	//add background type (hidden)
	$slideSettings->addTextBox("background_type","image",ControllerModulerevslideropencart::$lang_var

['Background_Type'], array("hidden"=>true));
	//store settings
	
	$slideSettings->addHr("");
	
	$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['rev_special_class']);
	$slideSettings->addTextBox("class_attr","",ControllerModulerevslideropencart::$lang_var

['Class'], $params);
	
	$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['rev_special_id']);
	$slideSettings->addTextBox("id_attr","",ControllerModulerevslideropencart::$lang_var

['ID'], $params);
	
	$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['rev_special_attr']);
	$slideSettings->addTextBox("attr_attr","",ControllerModulerevslideropencart::$lang_var

['Attribute'], $params);
	
	$params = array("description"=>ControllerModulerevslideropencart::$lang_var

['Attributes_data_custom']);
	$slideSettings->addTextArea("data_attr","",ControllerModulerevslideropencart::$lang_var

['Custom_Fields'], $params);
	
	self::storeSettings("slide_settings",$slideSettings);

?>
