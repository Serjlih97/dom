{% extends "layouts/main.volt" %}

{% block content %}
	
	<div class="content">
		<div class="container">
			<div class="members-list">
				<div class="row">
					<div class="col-md-12">
						<h1 class="members-list-header">{{ (event is defined) ? event.name : albom.name }}</h1>
					</div>
				</div>
				{% if event is defined %}
					<div class="row event-descr">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							{{ event.text }}
						</div>
					</div>
				{% endif %}
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<h2 class="event-gallery-header">Фотографии с мероприятия {{ (event is defined) ? event.name : albom.name }}</h2>
					</div>
				</div>
				<div class="row">
					{% for photo in photos %}
						<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 gallery-card">
							<a href="{{ photo.getPicture() }}" data-fancybox="gallery" data-caption="{{ photo.text }}">
								<img src="{{ photo.getPicture() }}" alt="{{ photo.text }}">
							</a>
						</div>
					{% endfor %}
					
				</div>
			</div>
		</div>
	</div>
{% endblock %}