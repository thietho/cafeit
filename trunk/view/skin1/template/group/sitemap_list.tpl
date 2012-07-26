<?php if(count($data_sitemap)){ ?>
	<?php foreach($data_sitemap as $sitemap){ ?>
    <div class="sitemap-item ben-left">
    	<table>
        	<tr class="sitemap-image">
            	<td>
                	<a href="<?php echo $this->document->createLink($sitemap['sitemapid'])?>"><img src="<?php echo $sitemap['imagethumbnailpng']?>"></a>
                </td>
            </tr>
            <tr>
            	<td>
        			<a href="<?php echo $this->document->createLink($sitemap['sitemapid'])?>"><?php echo $sitemap['sitemapname']?></a>        
                </td>
            </tr>
        </table>
    	
        
    </div>
    <?php } ?>
<?php } ?>