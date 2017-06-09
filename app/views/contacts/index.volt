{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<div class="contact-head">
			<h3>Контакты</h3>
			{{ siteInfo.text_contacts }}
			<br>
		</div>
		<div class="address">
			<h3>Где мы находимся</h3>
			<div class="col-md-6 locations">
				{% for contact in contacts %}
					<ul>
						<li><span></span></li>
						<li>
							<div class="address-info">
								<h4>{{ contact.city }}</h4>
								<p>{{ contact.street }}</p>
								<p>Телефон: {{ contact.phone }}</p>
								<p>Email:<a href="mailto:{{ contact.email }}">{{ contact.email }}</a></p>
								<h5><a href="{{ contact.map }}" target="_blank">Посмотреть на карте>></a></h5>
							</div>
						</li>
					</ul>
				{% endfor %}
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
{% endblock %}

{% block menu %}
{% endblock %}