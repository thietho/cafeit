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

	<div class="ben-section-title">Tỉ giá</div>
    
    <div class="ben-section-content">
    	 <?php echo $tygia?>
    	
    	
    </div>

</div>
<script language="javascript">
$(document).ready(function() {
	$('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
});
</script>