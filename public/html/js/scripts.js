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
}