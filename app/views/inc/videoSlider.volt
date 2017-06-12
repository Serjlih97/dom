<div class="slider">
	<div class="big-slider _video-big-slider">
		{% for video in videoSlider %}
			<div class="big-slider__item">
				<iframe width="100%" height="315" src="https://www.youtube.com/embed/{{ video }}" frameborder="0" allowfullscreen></iframe>
			</div>
		{% endfor %}
	</div>
	<div class="small-slider _video-small-slider">
		{% for video in videoSlider %}
			<div class="small-slider__item">
				<img src="//img.youtube.com/vi/{{ video }}/default.jpg" alt="">
			</div>
		{% endfor %}
	</div>
</div>