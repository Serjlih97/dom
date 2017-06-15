{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<div class="contact-head">
			<h3>Контакты</h3>
			
			<div class="money-info">
				{{ siteInfo.text_contacts }}
			</div>
		</div>
		<div class="address">
			<h3>Где мы находимся</h3>
			<div class="row">
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
								</div>
							</li>
						</ul>
					{% endfor %}
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Ace309e0479f2f5ea068c378467f832eb45cc88696fd84f921b4cfb32277b139a&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;scroll=true"></script>
				</div>
			</div>
		</div>
		<br>
	</div>
{% endblock %}

{% block menu %}
{% endblock %}