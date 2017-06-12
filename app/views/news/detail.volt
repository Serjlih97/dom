{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<div class="content-grids">
			<div class="col-md-8 content-main">
				<div class="content-grid">
					<div class="content-grid-head">
						<h4>{{ element.getDate() }}</h4>
						<div class="clearfix"></div>
					</div>
					<div class="content-grid-single">
						<h3>{{ element.name }}</h3>
						<img class="single-pic" src="{{ element.getPreview() }}" alt="{{ element.name }}"/>
						{{ element.html }}
						<div class="requisites">
							<div class="requisites-header">Счета для окозания помощи</div>
							<ul class="requisites-list">
								<li>Qiwi: 79627444412</li>
								<li>Qiwi: 79627444412</li>
								<li>Qiwi: 79627444412</li>
								<li>Qiwi: 79627444412</li>
								<li>Qiwi: 79627444412</li>
								<li>Qiwi: 79627444412</li>
							</ul>
						</div>

						<div class="file">
							<a href="#">Файл наме</a>
						</div>
						<div class="file">
							<a href="#">Файл наме</a>
						</div>
						<div class="file">
							<a href="#">Файл наме</a>
						</div>
						<div class="file">
							<a href="#">Файл наме</a>
						</div>
						<div class="slider">
							<div class="big-slider _photo-big-slider">
								<div class="big-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
								<div class="big-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
								<div class="big-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
								<div class="big-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
								<div class="big-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
								<div class="big-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
							</div>
							<div class="small-slider _photo-small-slider">
								<div class="small-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
								<div class="small-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
								<div class="small-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
								<div class="small-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
								<div class="small-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
							</div>
						</div>
						<div class="slider">
							<div class="big-slider _video-big-slider">
								<div class="big-slider__item">
									<iframe width="100%" height="315" src="https://www.youtube.com/embed/jeJGNo1ZEko?ecver=1" frameborder="0" allowfullscreen></iframe>
								</div>
								<div class="big-slider__item">
									<iframe width="100%" height="315" src="https://www.youtube.com/embed/jeJGNo1ZEko?ecver=1" frameborder="0" allowfullscreen></iframe>
								</div>
								<div class="big-slider__item">
									<iframe width="100%" height="315" src="https://www.youtube.com/embed/jeJGNo1ZEko?ecver=1" frameborder="0" allowfullscreen></iframe>
								</div>
								<div class="big-slider__item">
									<iframe width="100%" height="315" src="https://www.youtube.com/embed/jeJGNo1ZEko?ecver=1" frameborder="0" allowfullscreen></iframe>
								</div>
								<div class="big-slider__item">
									<iframe width="100%" height="315" src="https://www.youtube.com/embed/jeJGNo1ZEko?ecver=1" frameborder="0" allowfullscreen></iframe>
								</div>
								<div class="big-slider__item">
									<iframe width="100%" height="315" src="https://www.youtube.com/embed/jeJGNo1ZEko?ecver=1" frameborder="0" allowfullscreen></iframe>
								</div>
							</div>
							<div class="small-slider _video-small-slider">
								<div class="small-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
								<div class="small-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
								<div class="small-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
								<div class="small-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
								<div class="small-slider__item">
									<img src="/element/public/upload/20170605/o_el5935491b198ee.jpg" alt="">
								</div>
							</div>
						</div>	 			 
					</div>
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
