<div class="archives archives--links">
	<h3>О нас писали</h3>
	<ul>
		{% for about in aboutUs %}
			<li>
				<a href="{{ about.link }}" target="_blanck">{{ about.name }}</a>
			</li>
		{% endfor %}
	</ul>
</div>