<link href="<?php echo HTTP_SERVER.DIR_CSS?>nivo-slider.css?v=20122303" rel="stylesheet" type="text/css" />
<script src="<?php echo HTTP_SERVER.DIR_JS?>jquery.nivo.slider.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    });
</script>
<div id="slider" class="nivoSlider">
	<?php foreach($medias as $key => $media) {?>
    <a href="<?php echo $media['link'] ?>"><img src="<?php echo $media['imagethumbnail'] ?>" width="652px" /></a>
    <?php }?>
   
</div>