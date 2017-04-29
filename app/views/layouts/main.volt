<!doctype html>
<html class="no-js" lang="">
	<head>
		<meta charset="utf-8">
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>index</title>
	</head>
	<body>
		{% block header %}
			<section class="header">
				{% include '/inc/header.volt' %}
			</section>
		{% endblock %}

		<section class="content">
			{% block content %}
			{% endblock %}
		</section>

		{% block footer %}
			<section class="footer">
				{% include '/inc/footer.volt' %}
			</section>
		{% endblock %}

		{% block footerScripts %}
		{% endblock %}
	</body>
</html>
