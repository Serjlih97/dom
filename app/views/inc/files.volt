{% for file in files %}
	<div class="file">
		<a href="{{ file.path }}"  target="_blank">{{ file.name }}</a>
	</div>
{% endfor %}