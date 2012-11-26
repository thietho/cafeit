<style>
#container td
{
	border:thin solid;
	padding:2px;
	text-align:right;
}
#container th
{
	border:thin solid;
	padding:2px;
}
</style>
</style>
<div class="ben-section">

	<div class="ben-section-title">
    	<table>
            <tr>
                <td class="icon"><img src="<?php echo HTTP_SERVER.DIR_IMAGE?>icon-tigia.png"/></td>
                <td class="title">Tỉ giá</td>
            </tr>
        </table>
    	
    </div>
    
    <div class="ben-section-content">
    	 <?php echo $tygia?>
    	
    	
    </div>
	<img src="<?php echo HTTP_SERVER.DIR_IMAGE?>border-sitebar-content.png"/>
</div>
<script language="javascript">
$(document).ready(function() {
	$('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
});
</script>