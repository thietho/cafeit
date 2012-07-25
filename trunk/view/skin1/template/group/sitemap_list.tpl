<?php if(count($data_sitemap)){ ?>
	<?php foreach($data_sitemap as $sitemap){ ?>
    <div class="sitemap-item">
    	<a href="<?php echo $this->document->createLink($sitemap['sitemapid'])?>"><img src="<?php echo $sitemap['imagethumbnailpng']?>"></a>
        <a href="<?php echo $this->document->createLink($sitemap['sitemapid'])?>"><?php echo $sitemap['sitemapname']?></a>
    </div>
    <?php } ?>
<?php } ?>