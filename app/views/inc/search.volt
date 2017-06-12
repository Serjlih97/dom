<div class="search">
	<h3>Поиск</h3>
	<form action="/search/" method="GET">
		<input type="text" name="search" value="{{ (search is defined) ? search : '' }}" placeholder="Поиск">
		<input type="submit" value="">
	</form>
</div>