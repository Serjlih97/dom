{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<div class="_ajax-content">
			{% include '/inc/news.volt' %}
		</div>
	</div>
{% endblock %}

{% block unicSctipts %}
	<script type="text/javascript">
		var selectYear = {{ (selectYear is defined) ? selectYear : 'false' }};
	</script>
{% endblock %}
