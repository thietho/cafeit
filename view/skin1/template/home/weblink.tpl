					<div class="ben-home-quangcao ben-right">
                    	
                    </div>
                    <div style="display:none">
                    	<?php foreach($medias as $key => $media) {?>
                        <div id="ben-home-quancao-<?php echo $key?>">
                        	<a href="<?php echo $media['link']?>" target="_blank"><img class="ben-quangcao" src="<?php echo $media['imagethumbnailpng']?>" /></a>
                        </div>    
                        <?php } ?>
                    </div>
<script language="javascript">
function QuangCao()
{
	this.index = 0;
	this.count = <?php echo count($medias)?>;
	this.show = function(pos)
	{
		$('.ben-home-quangcao').html($('#ben-home-quancao-'+pos).html());
	}
	
	this.run = function()
	{
		this.show(this.index);
		this.index++;
		if(this.index >= this.count)
			this.index=0;
		setTimeout('qc.run()',5000);
	}
}
var qc = new QuangCao();
qc.run();
</script>