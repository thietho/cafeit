<?php
class ControllerModuleContact extends Controller
{
	function index()
	{	
		$this->id='content';
		
		$this->data['output'] = $this->loadModule('core/postcontent');
		
		$this->template='common/output.tpl';
		
		$this->render();
	}
	
}
?>