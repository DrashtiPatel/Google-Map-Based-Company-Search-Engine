<div class="col-md-3 col-sm-6 bottom-sm-30">

<div class="widget widget-twitter">
<h5 class="widget-title">
<span>Twitter</span>
</h5> 
<div id="footer-tweet" class="tweet-feed"></div>
</div> 
<script type="text/javascript">
							jQuery(document).ready(function(){
								jQuery("#footer-tweet").tweet({
									modpath:"js/twitter/",
									count:2,
									username:"everislabs",
									loading_text:"loading twitter feed...",
									template:"{text}{time}{join}"
								});
							})
						</script>

						
</div> 
