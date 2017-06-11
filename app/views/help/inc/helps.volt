<div class="content-grids">
	<div class="col-md-8 content-main">
		{% for help in helpsPaginator.items %}
			<div class="content-grid-sec">
				<div class="content-sec-info">
					<h3><a href="single.html">{{ help.name }}</a></h3>
					<h4>до {{ help.getDate() }}</h4>
					<p>{{ help.text|striptags }}</p>
					<img src="{{ help.getPreview() }}" alt="{{ help.name }}"/>
					<a class="bttn" href="{{ help.getUrl() }}">Читать</a>
				</div>
			</div>
		{% endfor %}

		{% if helpsPaginator.total_pages > 1 %}
			<div class="pages">
				<ul>
					{% set paginator = helpsPaginator %}
					{% set functionName = 'main.paginator.getHelpsPage' %}
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