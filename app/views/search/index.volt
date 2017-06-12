{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<div class="content-grids">
			<div class="col-md-8 content-main">
				<div class="search-tabs clearfix">
					<div class="tab {{ (newsList|length == 0 ) ? 'disable' : '' }}" data-tab-id="1" onclick="main.openTab(this, event);">Новости {{ newsList|length }}</div>
					<div class="tab {{ (helps|length == 0 ) ? 'disable' : '' }}" data-tab-id="2" onclick="main.openTab(this, event);">Нужна помощь {{ helps|length }}</div>
					<div class="tab {{ (events|length == 0 ) ? 'disable' : '' }}" data-tab-id="3" onclick="main.openTab(this, event);">Мероприятия {{ events|length }}</div>
				</div>
				{% if newsList|length > 0 or helps|length > 0 or events|length > 0 %}
					{% if newsList|length > 0 %}
						<div class="tab-content tab-1 active">
							{% for news in newsList %}
								<div class="content-grid-sec">
									<div class="content-sec-info">
										<h3><a href="{{ news.getUrl() }}">{{ news.name }}</a></h3>
										<h4>{{ news.getDate() }}</h4>
										<p>{{ news.html|striptags }}</p>
										<img src="{{ news.getPreview() }}" alt="{{ news.name }}"/>
										<a class="bttn" href="{{ news.getUrl() }}">Читать</a>
									</div>
								</div>
							{% endfor %}
						</div>
					{% endif %}
					{% if helps|length > 0 %}
						<div class="tab-content tab-2">
							{% for help in helps %}
								<div class="content-grid-sec">
									<div class="content-sec-info">
										<h3><a href="{{ help.getUrl() }}">{{ help.name }}</a></h3>
										<h4>до {{ help.getDate() }}</h4>
										<p>{{ help.text|striptags }}</p>
										<img src="{{ help.getPreview() }}" alt="{{ help.name }}"/>
										<a class="bttn" href="{{ help.getUrl() }}">Читать</a>
									</div>
								</div>
							{% endfor %}
						</div>
					{% endif %}

					{% if events|length > 0 %}
						<div class="tab-content tab-3">
							{% for event in events %}
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
						</div>
					{% endif %}
				{% else %}
				    <h1>По данному запросу ничего не найдено</h1>
				{% endif %}
			</div>

			<div class="col-md-4 content-main-right">
				{% include '/inc/search.volt' %}
				{% include '/inc/aboutUs.volt' %}
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
{% endblock %}
