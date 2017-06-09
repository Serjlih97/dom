<div class="container">
	<div class="logo">
		<a href="/"><img src="/html/images/logo.svg" title="soup" width="65%" /></a>
	</div>
	<div class="top-menu">
		<span class="menu"></span>
		<ul>
			<li{{ (section is not defined or section == 'index') ? ' class="active"' : '' }}>
				<a href="/">Главная</a>
			</li>
			<li{{ (section is defined and section == 'contacts') ? ' class="active"' : '' }}>
				<a href="/contacts/">Контакты</a>
			</li>
			<li{{ (section is defined and section == 'about') ? ' class="active"' : '' }}>
				<a href="/about/">О нас</a>
			</li>
			<div class="clearfix"></div>
		</ul>
	</div>
	<div class="clearfix"></div>
	<script>
		$("span.menu").click(function()
		{
			$(".top-menu ul").slideToggle("slow" , function()
			{
			});
		});
	</script>
</div>