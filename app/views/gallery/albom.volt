{% extends "layouts/main.volt" %}

{% block content %}
	
	<div class="content">
		<div class="container">
			<div class="members-list">
				<div class="row">
					<div class="col-md-12">
						<h1 class="members-list-header">Название мероприятия</h1>
					</div>
				</div>
				<div class="row event-descr">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo, nostrum nam similique a veniam cum? Mollitia facilis labore, sit cumque quae. Odio quos quae explicabo provident cumque maiores, placeat deserunt!</p>
						<p>Далеко-далеко за словесными <a href="#">горами</a> в <b>стране</b>, гласных и согласных живут рыбные тексты. От всех диких даже страну если повстречался, которое подпоясал гор, рыбного, грамматики проектах, ручеек там алфавит единственное своего себя океана агенство.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque inventore vitae vero consequatur, sequi officia, perferendis vel laborum aspernatur numquam facere repellendus quia tempore dignissimos temporibus corrupti ratione perspiciatis. Quam.</p>
						<ul>
							<li>Lorem ipsum.</li>
							<li>Animi, natus.</li>
							<li>Vero, modi?</li>
							<li>Cumque, accusantium!</li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<h2 class="event-gallery-header">Фотографии с мероприятия ТУТ НАЗВАНИЕ МЕРОПРИЯТИЯ</h2>
					</div>
				</div>
				<div class="row">
					{% for photo in photos %}
						<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 gallery-card">
							<a href="{{ photo.getPicture() }}" data-fancybox="gallery" data-caption="{{ photo.text }}">
								<img src="{{ photo.getPicture() }}" alt="{{ photo.text }}">
							</a>
						</div>
					{% endfor %}
					
				</div>
			</div>
		</div>
	</div>
{% endblock %}