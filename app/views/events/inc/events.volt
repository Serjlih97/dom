<div class="content-grids">
	<div class="col-md-8 content-main">
		{% for event in eventsPaginator.items %}
			<div class="content-grid-sec">
				<div class="content-sec-info">
					<h3><a href="{{ event.getUrl() }}">{{ event.name }}</a></h3>
					<h4>{{ event.getDate() }}</h4>
					<p>{{ event.text|striptags }}</p>
					<img src="{{ event.getPreview() }}" alt="{{ event.name }}"/>
					<a class="bttn" href="{{ event.getUrl() }}">Читать</a>
				</div>
			</div>
		{% endfor %}

		{% if eventsPaginator.total_pages > 1 %}
			<div class="pages">
				<ul>
					{% set paginator = eventsPaginator %}
					{% set functionName = 'main.paginator.getEventsPage' %}
					{% include '/inc/paginator.volt' %}
				</ul>
			</div>
		{% endif %}
	</div>

	<div class="col-md-4 content-main-right">
		{% include '/inc/search.volt' %}
		{% include '/inc/aboutUs.volt' %}
	</div>
	<div class="clearfix"></div>
</div>