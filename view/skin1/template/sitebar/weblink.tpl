<div class="ben-section">

	<div class="ben-section-title"><?php echo $sitemap['sitemapname']?></div>
    
    <div class="ben-section-content">
    	
    	<?php foreach($medias as $media) {?>
            <a href="<?php echo $media['weblink']?>" target="_blank"><img class="ben-quangcao" src="<?php echo $media['imagethumbnail']?>" /></a>
            
        <?php } ?>
    </div>

</div>