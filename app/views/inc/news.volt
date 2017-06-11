<div class="content-grids">
	<div class="col-md-8 content-main">
		{% for news in newsPaginator.items %}
			{% if loop.index == 1 and newsPaginator.current == 1 %}
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
			{% else %}
				<div class="content-grid-sec">
					<div class="content-sec-info">
						<h3><a href="single.html">{{ news.name }}</a></h3>
						<h4>{{ news.getDate() }}</h4>
						<p>{{ news.html|striptags }}</p>
						<img src="{{ news.getPreview() }}" alt="{{ news.name }}"/>
						<a class="bttn" href="{{ news.getUrl() }}">Читать</a>
					</div>
				</div>
			{% endif %}
		{% endfor %}

		{% if newsPaginator.total_pages > 1 %}
			<div class="pages">
				<ul>
					{% set paginator = newsPaginator %}
					{% set functionName = 'main.paginator.getNewsPage' %}
					{% include '/inc/paginator.volt' %}
				</ul>
			</div>
		{% endif %}
	</div>

	<div class="col-md-4 content-main-right">
		{% include '/inc/search.volt' %}
		{% include '/inc/aboutUs.volt' %}
		
		<div class="archives">
			<h3>Новости по годам</h3>
			<ul>
				{% for year in elements.getNewsYears() %}
					<li{{ (selectYear is defined and selectYear == year) ? ' class="active"' : '' }}><a href="/?year={{ year }}">{{ year }}</a></li>
				{% endfor %}
			</ul>
		</div>
	</div>
	<div class="clearfix"></div>
</div>