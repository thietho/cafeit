<div class="ben-section">

	<div class="ben-section-title">
    	<table>
            <tr>
                <td class="icon"><img src="<?php echo HTTP_SERVER.DIR_IMAGE?>icon-weblink.png"/></td>
                <td class="title"><?php echo $sitemap['sitemapname']?></td>
            </tr>
        </table>
    </div>
    
    <div class="ben-section-content">
    	
    	<?php foreach($medias as $media) {?>
            <a href="<?php echo $media['weblink']?>" target="_blank"><img class="ben-quangcao" src="<?php echo $media['imagethumbnail']?>" /></a>
            
        <?php } ?>
    </div>
	<img src="<?php echo HTTP_SERVER.DIR_IMAGE?>border-sitebar-content.png"/>
</div>