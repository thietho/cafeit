<div id="ben-header">
    <div id="ben-top">
        <div class="ben-left" id="ben-logo">
            <img src="<?php echo HTTP_SERVER.DIR_IMAGE?>logo.png" alt="" />
        </div>
    
        <div class="ben-right" id="ben-searchform">
            <img src="<?php echo HTTP_SERVER.DIR_IMAGE?>seach.png" alt="" />
        </div>
    
        <div class="clearer">&nbsp;</div>
        
        
        
    </div>
    <div class="ben-navigation">
    
        <ul id="ben-main-nav">
            <li><a href="<?php echo HTTP_SERVER?>"><div class="main">Trang chủ</div><div class="sub">Homepage</div></a></li>
            <li><a href="<?php echo $this->document->createLink('gioi-thieu')?>"><div class="main">Giới thiệu</div><div class="sub">About us</div></a></li>
            <li><a href="<?php echo $this->document->createLink('hoi-nhom')?>"><div class="main">Hội nhóm</div><div class="sub">Community</div></a></li>
            <li><a href="<?php echo $this->document->createLink('san-pham')?>"><div class="main">Sản phẩm</div><div class="sub">Our products</div></a></li>
            <li><a href="<?php echo $this->document->createLink('tin-tuc-su-kien')?>"><div class="main">Tin tức & sự kiện</div><div class="sub">News & Events</div></a></li>
            <li><a href="<?php echo $this->document->createLink('quyen-loi')?>"><div class="main">Quyền lợi</div><div class="sub"> Customer Services</div></a></li>
            <li><a href="<?php echo $this->document->createLink('lien-he')?>"><div class="main">Liên hệ</div><div class="sub">Contact us</div></a></li>
        </ul>

        <div class="clearer">&nbsp;</div>

    </div>
</div>

<script src="<?php echo HTTP_SERVER.DIR_JS?>menu.js" language="javascript"></script>
