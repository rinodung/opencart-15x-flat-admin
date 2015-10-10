<?php
	$generalSettings = new UniteSettingsRev();

	$generalSettings->addRadio("show_dev_export", 
							   array("on"=>ControllerModulerevslideropencart::$lang_var['On'],"off"=>ControllerModulerevslideropencart::$lang_var['Off']),
							   ControllerModulerevslideropencart::$lang_var['Export_option'],
							   "off",
							   array("description"=>ControllerModulerevslideropencart::$lang_var['export_Slider']));
		
	$generalSettings->addRadio("enable_logs", 
							   array("on"=>ControllerModulerevslideropencart::$lang_var['On'],"off"=>ControllerModulerevslideropencart::$lang_var['Off']),
							   ControllerModulerevslideropencart::$lang_var['Enable_Logs'],
							   "off",
							   array("description"=>ControllerModulerevslideropencart::$lang_var['Enable_console']));

	$operations = new RevOperations();
	$arrValues = $operations->getGeneralSettingsValues();
	$generalSettings->setStoredValues($arrValues);
	self::storeSettings("general", $generalSettings);
?>