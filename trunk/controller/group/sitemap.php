<?php
class ControllerGroupSiteMap extends Controller
{
	private $error = array();
	public function index($sitemapid,$template)
	{
		$this->load->model("core/sitemap");
		$this->load->helper('image');
		
		
		
		$sitemap = $this->model_core_sitemap->getItem($sitemapid,$this->member->getSiteId());
		
		$this->data['data_sitemap'] = $this->model_core_sitemap->getListByParent($sitemap['sitemapid'], $this->member->getSiteId(),$sitemap['status'] );
		foreach($this->data['data_sitemap'] as $key => $sitemap)
		{
			$this->data['data_sitemap'][$key]['imagethumbnailpng'] = HelperImage::resizePNG($sitemap['imagepath'], $template['width'], $template['height']);	
		}
		
		$this->id="content";
		$this->template=$template['template'];
		$this->render();
	}
	
}
?>