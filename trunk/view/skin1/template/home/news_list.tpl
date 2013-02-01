					<div class="ben-home-tintucmoi ben-left">
                        <h3>Tin tức mới</h3>
                        <div class="ben-line">&nbsp;</div>
                        <?php foreach($medias as $key => $media) {?>
                        <div class="ben-home-news-item">
                            <a href="<?php echo $media['link']?>"><?php echo $media['title']?></a>
    						<a href="<?php echo $media['link']?>" class="ben-viewmore ben-right">Xem chi tiết</a>
                            <div class="clearer"></div>
                        </div>
                        <div class="ben-line">&nbsp;</div>
                        <?php } ?>
                       	
                    </div>

				
                
							