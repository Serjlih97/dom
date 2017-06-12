{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<div class="content-grids">
			<div class="col-md-8 content-main">
				<div class="content-grid">
					<div class="content-grid-head">
						<h4>до {{ element.getDate() }}</h4>
						<div class="clearfix"></div>
					</div>
					<div class="content-grid-single">
						<h3>{{ element.name }}</h3>
						<img class="single-pic" src="{{ element.getPreview() }}" alt="{{ element.name }}"/>
						{{ element.text }}
					</div>
					{% if element.getPays() %}
						<div class="requisites">
							<div class="requisites-header">Счета для окозания помощи</div>
							<ul class="requisites-list">
								{% for pay in element.getPays() %}
									<li>{{ pay['Счет'] }}</li>
								{% endfor %}
							</ul>
						</div>
					{% endif %}
				</div>			 
			</div>
			 
			<div class="col-md-4 content-main-right">
				{% include '/inc/search.volt' %}
				{% include '/inc/aboutUs.volt' %}
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
{% endblock %}
