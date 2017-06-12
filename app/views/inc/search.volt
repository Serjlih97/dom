<div class="search">
	<h3>Поиск</h3>
	<form action="/search/">
		<input type="text" name="search" value="{{ (search is defined) ? search : '' }}" onfocus="this.value=''" onblur="this.value=''">
		<input type="submit" value="">
	</form>
</div>