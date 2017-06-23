$(document).ready(function()
{
	main.init();
})

var main = {
	init: function()
	{
		this.fancyBox();
		this.initSlider({
			bigSlider: '._photo-big-slider',
			smallSlider: '._photo-small-slider'
		});
		this.initSlider({
			bigSlider: '._video-big-slider',
			smallSlider: '._video-small-slider'
		});
	},

	fancyBox: function()
	{
		if($('.fancy-box').length > 0)
			$('.fancy-box').fancyBox();
	},
	
	openTab: function(instance, event)
	{
		event.preventDefault();
		if(!$(instance).hasClass('active'))
		{
			var tabId = $(instance).data('tab-id');
			$(instance).siblings().removeClass('active');
			$(instance).addClass('active');
			$('.tab-' + tabId).siblings().removeClass('active');
			$('.tab-' + tabId).addClass('active');
		}
	},

	initSlider: function(sliders)
	{
		if($('.slider').length > 0)
		{
			$(sliders.bigSlider).slick({
				slidesToShow: 1,
				slidesToScroll: 1,
				arrows: true,
				fade: true,
				asNavFor: sliders.smallSlider,
				adaptiveHeight: true,
				responsive: [
				{
					breakpoint: 350,
					settings: {
						arrows: false
					}
				}]
			});

			$(sliders.smallSlider).slick(
			{
				slidesToShow: 4,
				slidesToScroll: 1,
				asNavFor: sliders.bigSlider,
				dots: false,
				centerMode: true,
				focusOnSelect: true,
				responsive: [
				{
					breakpoint: 931,
					settings: {
						slidesToShow: 4,
					}
				},
				{
					breakpoint: 769,
					settings: {
						slidesToShow: 3,
					}
				},
				{
					breakpoint: 350,
					settings: {
						slidesToShow: 2,
						arrows: false
					}
				}]
			})
		}
	},
	paginator: 
	{
		getNewsPage: function(page)
		{
			var action = '/ajax/getNews/';
			if(selectYear)
				action += '?year=' + selectYear;
			$.ajax({
				url      : action,
				type     : 'POST',
				dataType : 'json',
				data     : {page:page}
			}).done(function(e)
			{
				if(typeof e.success != 'undefined' && e.success)
				{
					$('._ajax-content').html(e.html);
					$(document).scrollTop($('.content-main').offset().top);
				}
			});
		},
		getHelpsPage: function(page)
		{
			var action = '/ajax/getHelps/';
			
			$.ajax({
				url      : action,
				type     : 'POST',
				dataType : 'json',
				data     : {page:page}
			}).done(function(e)
			{
				if(typeof e.success != 'undefined' && e.success)
					$('._ajax-content').html(e.html);
			});
		},
		getEventsPage: function(page)
		{
			var action = '/ajax/getEvents/';
			
			$.ajax({
				url      : action,
				type     : 'POST',
				dataType : 'json',
				data     : {page:page}
			}).done(function(e)
			{
				if(typeof e.success != 'undefined' && e.success)
					$('._ajax-content').html(e.html);
			});
		}
	}
}