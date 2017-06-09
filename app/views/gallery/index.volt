{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<div class="members-list">
			<div class="row">
				<div class="col-md-12">
					<h1 class="members-list-header">Альбомы</h1>
				</div>
			</div>
			<div class="clearfix members-list-wr">
				{% for albom in alboms %}
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 member-card-bg">
						<div class="member-card">
							<div class="member-img">
								<a href="{{ albom.getUrl() }}"><img src="{{ albom.photo.getPicture() }}" alt="{{ albom.name }}"></a>
							</div>
							<div class="member-info">
								<div class="member-name"><a href="{{ albom.getUrl() }}">{{ albom.name }}</a></div>
								<div class="member-date album-date">Фотографий {{ albom.photos|length }}</div>
							</div>
						</div>
					</div>
				{% endfor %}
			</div>
		</div>
	</div>
{% endblock %}
