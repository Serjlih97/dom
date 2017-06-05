<!DOCTYPE HTML>
<html>
<head>
	<title>{{ title }}</title>

	<link href="/html/css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="/html/css/style.css" rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,300italic,400italic,600italic' rel='stylesheet' type='text/css'>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }</script>

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="/html/js/move-top.js"></script>
	<script type="text/javascript" src="/html/js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
			});
		});
	</script>
</head>
<body>
	<div class="banner">
		{% block header %}
			<div class="header">
				{% include '/inc/header.volt' %}
			</div>
		{% endblock %}
		<div class="container">
			{% block banner %}
				{% include '/inc/banner.volt' %}
			{% endblock %}
			{% block menu %}
				{% include '/inc/menu.volt' %}
			{% endblock %}
		</div>
	</div>

	<div class="content">
		{% block content %}
		{% endblock %}
	</div>

	{% block footer %}
		<div class="fotter">
			{% include '/inc/footer.volt' %}
		</div>
	{% endblock %}
	<div class="copywrite">
		<div class="container">
		<p>Сайт создан при поддержке <a href="http://vke-edu.ru" target="_black">Владикавказского колледжа электроники</a></p>
	</div>
	</div>
	{% block footerScripts %}
		<script type="text/javascript">
				$(document).ready(function() {
						/*
						var defaults = {
						containerID: 'toTop', // fading element id
						containerHoverID: 'toTopHover', // fading element hover id
						scrollSpeed: 1200,
						easingType: 'linear'
						};
						*/
				$().UItoTop({ easingType: 'easeOutQuart' });
			});
		</script>
		<script type="text/javascript" src="/html/js/scripts.js"></script>
	{% endblock %}
	<a href="#to-top" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
</body>
</html>
