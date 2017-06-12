{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<div class="content-grids">
			<div class="col-md-8 content-main">
				<div class="content-grid">
					<div class="content-grid-head">
						<h4>{{ element.getDate() }}</h4>
						<div class="clearfix"></div>
					</div>
					<div class="content-grid-single">
						<h3>{{ element.name }}</h3>
						<img class="single-pic" src="{{ element.getPreview() }}" alt="{{ element.name }}"/>
						{{ element.html }}

						{% if element.getFiles() %}
							{% set files = element.getFiles() %}
							{% include '/inc/files.volt' %}
						{% endif %}

						{% set slider = element.getPhotoSlider() %}
						{% if element.show_photo_slider and slider %}
							{% include '/inc/slider.volt' %}
						{% endif %}

						{% set videoSlider = element.getVideoSlider() %}
						{% if element.show_video_slider and videoSlider %}
							{% include '/inc/videoSlider.volt' %}
						{% endif %}
					</div>
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
