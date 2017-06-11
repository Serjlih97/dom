{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<div class="_ajax-content">
			{% include '/events/inc/events.volt' %}
		</div>
	</div>
{% endblock %}
