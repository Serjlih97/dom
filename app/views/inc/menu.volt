<div class="banner-links">
	<ul>
		{% set page = (page is not defined) ? menu[0]['name'] : page %}
		{% for pageMenu in menu %}
			<li{{ (page is not defined or page == pageMenu['name']) ? ' class="active"' : '' }}>
				<a href="{{ pageMenu['url'] }}">{{ pageMenu['name'] }}</a>
			</li>
		{% endfor %}
		<div class="clearfix"></div>
	</ul>
</div>