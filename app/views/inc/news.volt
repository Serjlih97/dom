<div class="content-grids">
	<div class="col-md-8 content-main">
		{% for news in newsPaginator.items %}
			{% if loop.index == 1 %}
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
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>
					<li><a href="#">Предыдущая</a></li>
					<li><a href="#">Следущая</a></li>
				</ul>
			</div>
		{% endif %}
	</div>

	<div class="col-md-4 content-main-right">
		<div class="search">
				<h3>Поиск</h3>
				<form>
					<input type="text" value="" onfocus="this.value=''" onblur="this.value=''">
					<input type="submit" value="">
				</form>
		</div>
		<div class="archives">
			<h3>Новости по годам</h3>
			<li class="active"><a href="#">2017</a></li>
			<li><a href="#">2016</a></li>
			<li><a href="#">2015</a></li>
		</div>
	</div>
	<div class="clearfix"></div>
</div>