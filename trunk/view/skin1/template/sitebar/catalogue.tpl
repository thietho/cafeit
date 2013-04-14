
<div class="ben-section">
    <div class="ben-section-title">
        <table>
            <tr>
                <td class="icon"><img src="<?php echo HTTP_SERVER.DIR_IMAGE?>icon-danhmuc.png"/></td>
                <td class="title"><?php echo $sitemap['sitemapname']?></td>
            </tr>
        </table>
        
        
    </div>
    <div class="ben-section-content">
        <ul id="menu" class="menu">
            <?php echo $menu?>
        </ul>
    </div>
    <img src="<?php echo HTTP_SERVER.DIR_IMAGE?>border-sitebar-content.png"/>
</div>
<script language="javascript">

$(document).ready(function(){
	<?php foreach($path as $item){ ?>
	
	$("#<?php echo $item['sitemapid']?>").show('slow',function(){
		
		if($(this).parent().children('div').children('span').hasClass('down'))
		{
			$(this).parent().children('div').children('span').removeClass('down');
			$(this).parent().children('div').children('span').addClass('up');
		}
		else
		{
			$(this).parent().children('div').children('span').removeClass('up');
			$(this).parent().children('div').children('span').addClass('down');
		}
	});
	<?php } ?>
});
</script>