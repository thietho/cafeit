<div id="ben-header">
	<!--<div id="ben-searchform">
        <table>
        	<tr>
            	<td>
                	<input type="text" class="ben-text-search"  id="txt_search"/>
                	<img id="btn-search" src="<?php echo HTTP_SERVER.DIR_IMAGE?>bg-inputsearch.png"/>
                	
                </td>
                <td>
        			<img id="btn-search" src="<?php echo HTTP_SERVER.DIR_IMAGE?>btn-search.png"/>        
                </td>
            </tr>
        </table>
    </div>	-->
    <div id="ben-top">
        <embed width="940" height="150" allowscriptaccess="always" loop="false" wmode="transparent" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" src="<?php echo HTTP_SERVER.DIR_IMAGE?>bannerheader.swf">
    
        
    	
        <div class="clearer">&nbsp;</div>
        
        
        
    </div>
    <div class="ben-navigation">
    
        <ul id="ben-main-nav">
            <li><a href="<?php echo HTTP_SERVER?>" <?php echo (@$sitemap['sitemapid']=='')?'class="current-tab"':'' ?>><div class="main">Trang chủ</div><div class="sub">Homepage</div></a></li>
            <li><a href="<?php echo $this->document->createLink('gioi-thieu')?>" <?php echo (@$sitemap['sitemapid']=='gioi-thieu')?'class="current-tab"':'' ?>><div class="main">Giới thiệu</div><div class="sub">About us</div></a></li>
            <li><a href="<?php echo $this->document->createLink('dich-vu')?>" <?php echo (@$sitemap['sitemapid']=='dich-vu')?'class="current-tab"':'' ?>><div class="main">Dịch vụ</div><div class="sub">Services</div></a></li>
            <li><a href="<?php echo $this->document->createLink('san-pham')?>" <?php echo (@$sitemap['sitemapid']=='san-pham')?'class="current-tab"':'' ?>><div class="main">Sản phẩm</div><div class="sub">Our products</div></a></li>
            <li><a href="<?php echo $this->document->createLink('tin-tuc-su-kien')?>" <?php echo (@$sitemap['sitemapid']=='tin-tuc-su-kien')?'class="current-tab"':'' ?>><div class="main">Tin tức & sự kiện</div><div class="sub">News & Events</div></a></li>
            <li><a href="<?php echo $this->document->createLink('bao-hanh')?>" <?php echo (@$sitemap['sitemapid']=='bao-hanh')?'class="current-tab"':'' ?>><div class="main">Bảo hành</div><div class="sub"> Warranty</div></a></li>
            <li><a href="<?php echo $this->document->createLink('lien-he')?>" <?php echo (@$sitemap['sitemapid']=='lien-he')?'class="current-tab"':'' ?>><div class="main">Liên hệ</div><div class="sub">Contact us</div></a></li>
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