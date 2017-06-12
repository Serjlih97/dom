{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<div class="content-grids">
			<div class="col-md-8 content-main">
				<div class="content-grid">
					<div class="content-grid-head">
						<h3>Последняя новость</h3>
						<h4>{{ news.getDate() }}</h4>
						<div class="clearfix"></div>
					</div>
					<div class="content-grid-info">
						<h3>
							<a href="{{ news.getUrl() }}">{{ news.name }}</a>
						</h3>
						<p>{{ news.html|striptags }}</p>
						<img src="{{ news.getPreview() }}" alt="{{ news.name }}"/>
						<a class="bttn" href="{{ news.getUrl() }}">Читать</a>
					</div>
				</div>
				<div class="content-grid-sec">
					<div class="content-sec-info">
						<h3><a href="single.html">{{ news.name }}</a></h3>
						<h4>{{ news.getDate() }}</h4>
						<p>{{ news.html|striptags }}</p>
						<img src="{{ news.getPreview() }}" alt="{{ news.name }}"/>
						<a class="bttn" href="{{ news.getUrl() }}">Читать</a>
					</div>
				</div>

				<div class="pages">
					<ul>
						{% set paginator = newsPaginator %}
						{% set functionName = 'main.paginator.getNewsPage' %}
						{% include '/inc/paginator.volt' %}
					</ul>
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
