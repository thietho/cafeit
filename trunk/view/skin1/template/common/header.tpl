<div id="ben-header">
	<div id="ben-searchform">
        	
            <img id="btn-search" src="<?php echo HTTP_SERVER.DIR_IMAGE?>btn-search.png" class="ben-right"/>
            <input type="text" class="ben-text-search ben-right"  id="txt_search"/>
        </div>	
    <div id="ben-top">
        <embed width="940" height="150" allowscriptaccess="always" loop="false" wmode="transparent" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" src="<?php echo HTTP_SERVER.DIR_IMAGE?>bannerheader.swf">
    
        
    	
        <div class="clearer">&nbsp;</div>
        
        
        
    </div>
    <div class="ben-navigation">
    
        <ul id="ben-main-nav">
            <li><a href="<?php echo HTTP_SERVER?>"><div class="main">Trang chủ</div><div class="sub">Homepage</div></a></li>
            <li><a href="<?php echo $this->document->createLink('gioi-thieu')?>" <?php echo ($sitemap['sitemapid']=='gioi-thieu')?'class="current-tab"':'' ?>><div class="main">Giới thiệu</div><div class="sub">About us</div></a></li>
            <li><a href="<?php echo $this->document->createLink('hoi-nhom')?>" <?php echo ($sitemap['sitemapid']=='hoi-nhom')?'class="current-tab"':'' ?>><div class="main">Hội nhóm</div><div class="sub">Community</div></a></li>
            <li><a href="<?php echo $this->document->createLink('san-pham')?>" <?php echo ($sitemap['sitemapid']=='san-pham')?'class="current-tab"':'' ?>><div class="main">Sản phẩm</div><div class="sub">Our products</div></a></li>
            <li><a href="<?php echo $this->document->createLink('tin-tuc-su-kien')?>" <?php echo ($sitemap['sitemapid']=='tin-tuc-su-kien')?'class="current-tab"':'' ?>><div class="main">Tin tức & sự kiện</div><div class="sub">News & Events</div></a></li>
            <li><a href="<?php echo $this->document->createLink('quyen-loi')?>" <?php echo ($sitemap['sitemapid']=='quyen-loi')?'class="current-tab"':'' ?>><div class="main">Quyền lợi</div><div class="sub"> Customer Services</div></a></li>
            <li><a href="<?php echo $this->document->createLink('lien-he')?>" <?php echo ($sitemap['sitemapid']=='lien-he')?'class="current-tab"':'' ?>><div class="main">Liên hệ</div><div class="sub">Contact us</div></a></li>
        </ul>

        <div class="clearer">&nbsp;</div>

    </div>
</div>

<script src="<?php echo HTTP_SERVER.DIR_JS?>menu.js" language="javascript"></script>
<script language="javascript">
$('#btn-search').click(function(e) {
    var keyword = trim($("#txt_search").val()," ");
	if(keyword!="")
		window.location = HTTP_SERVER+"search/keyword/"+keyword+".html";
});
</script>