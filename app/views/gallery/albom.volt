{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<h1 class="gallery-header">Галерея</h1>
		<div class="row">
			{% for photo in photos %}
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
					<div class="gallery-item">
						<a href="{{ photo.getPicture() }}" data-fancybox="gallery" data-caption="{{ photo.text }}">
							<img src="{{ photo.getPicture() }}" alt="">
						</a>
					</div>
				</div>
			{% endfor %}
		</div>
	</div>
{% endblock %}