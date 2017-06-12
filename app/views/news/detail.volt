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
