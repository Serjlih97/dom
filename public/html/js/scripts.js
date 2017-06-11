$(document).ready(function()
{
	main.init();
})

var main = {
	init: function()
	{
		this.fancyBox();
	},

	fancyBox: function()
	{
		if($('.fancy-box').length > 0)
			$('.fancy-box').fancyBox();
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
					$('._ajax-content').html(e.html);
			});
		}
	}
}