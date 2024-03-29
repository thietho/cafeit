<?php
class ControllerPageHome extends Controller
{
	function __construct() 
	{
		//$this->iscache = true;
	 	$arr=array();
		foreach($_GET as $key => $val)
			$arr[] = $key."=".$val;
	 	$this->name ="PageHome".implode("_",$arr);
   	}
	public function index()
	{
		if($this->cachehtml->iscacht($this->name) == false)
		{
			//Banner home
			$template = array(
						  'template' => "home/bannerhome.tpl",
						  'width' => 920,
						  'height' =>300
						  );
		
			$arr = array("bannerhome",0,"",$template);
			$this->data['bannerhome'] = $this->loadModule('module/block','getList',$arr);
			
			$template = array(
						  'template' => "home/weblink.tpl",
						  'width' => 284,
						  'height' =>187
						  );
		
			$arr = array("weblink",0,"",$template);
			$this->data['weblink'] = $this->loadModule('module/block','getLink',$arr);
			//San pham moi
			$template = array(
						  'template' => "home/product_list.tpl",
						  'width' => 147,
						  'height' =>147,
						  'widthpreview' => 280,
						  'heightpreview' => 280,
						  'paging' => false,
						  'sorting' =>false
						  );
			
			$medias = $this->getProduct('sanphammoi');
			
			$arr = array("",0,"",$template,$medias);
			if(count($medias))
				$this->data['sanphammoi'] = $this->loadModule('module/productlist','getAll',$arr);
				
			//San pham hot
			$template = array(
						  'template' => "home/product_list.tpl",
						  'width' => 147,
						  'height' =>147,
						  'widthpreview' => 280,
						  'heightpreview' => 280,
						  'paging' => false,
						  'sorting' =>false
						  );
			
			$medias = $this->getProduct('sanphamhot');
			
			$arr = array("",0,"",$template,$medias);
			if(count($medias))
				$this->data['sanphamhot'] = $this->loadModule('module/productlist','getAll',$arr);
			
			//San pham khuyen mai
			$template = array(
						  'template' => "home/product_list.tpl",
						  'width' => 147,
						  'height' =>147,
						  'widthpreview' => 280,
						  'heightpreview' => 280,
						  'paging' => false,
						  'sorting' =>false
						  );
			
			$medias = $this->getProduct('sanphamkhuyenmai');
			
			$arr = array("",0,"",$template,$medias);
			if(count($medias))
				$this->data['sanphamkhuyenmai'] = $this->loadModule('module/productlist','getAll',$arr);
			
			$template = array(
						  'template' => "home/news_list.tpl",
						  
						  );
		
			$arr = array("tin-tuc-su-kien",2,"Tin tức mới",$template);
			$this->data['tintucmoi'] = $this->loadModule('module/block','getList',$arr);
			
			$template = array(
						  'template' => "home/gioithieu.tpl",
						  
						  );
			$arr = array($this->member->getSiteId()."gioi-thieu",$template);
			$this->data['gioithieu'] = $this->loadModule('module/block','showContent',$arr);
			//
			//$this->loadSiteBar();
			$this->document->title = $this->document->setup['Title'] ." - ". $this->document->setup['Slogan'];
		}
		
		$this->id="content";
		$this->template="page/home.tpl";
		$this->layout="layout/home";
		$this->render();
	}
	
	private function loadSiteBar()
	{
		//Left sitebar
		$arr = array('sanpham');
		$this->data['leftsitebar']['produtcategory'] = $this->loadModule('sitebar/catalogue','index',$arr);
		$this->data['leftsitebar']['supportonline'] = $this->loadModule('sitebar/supportonline');
		$this->data['leftsitebar']['exchange'] = $this->loadModule('sitebar/exchange');
		$this->data['leftsitebar']['weblink'] = $this->loadModule('sitebar/weblink');
		$this->data['leftsitebar']['hitcounter'] = $this->loadModule('sitebar/hitcounter');
		
		//Rigth sitebar
		$this->data['rightsitebar']['login'] = $this->loadModule('sitebar/login');
		$this->data['rightsitebar']['search'] = $this->loadModule('sitebar/search');
		$this->data['rightsitebar']['cart'] = $this->loadModule('sitebar/cart');
		$this->data['rightsitebar']['banner'] = $this->loadModule('sitebar/banner');
		$this->data['rightsitebar']['question'] = $this->loadModule('sitebar/question');
	}
	
	function getProduct($status)
    {
        $this->load->model('core/media');
        //$siteid = $this->member->getSiteId();
        //$sitemaps = $this->model_core_sitemap->getListByModule("module/product", $siteid);
        //$arrsitemapid = $this->string->matrixToArray($sitemaps,"sitemapid");
        $queryoptions = array();
        $queryoptions['mediaparent'] = '';
        $queryoptions['mediatype'] = 'module/product';
        $queryoptions['refersitemap'] = '%';
        $queryoptions['groupkeys'] = $status;
        $data = $this->model_core_media->getPaginationList($queryoptions, $step = 0, $to = 20);

        return $data;
    }
}
?>