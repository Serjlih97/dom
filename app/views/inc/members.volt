<div class="members-list">
	<div class="row">
		<div class="col-md-12">
			<h1 class="members-list-header">Наши воспитанники</h1>
		</div>
	</div>
	<div class="clearfix members-list-wr">
		{% for inmate in inmates %}
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 member-card-bg">
				<div class="member-card">
					<div class="member-img">
						<img src="{{ inmate.getPicture() }}" alt="{{ inmate.name }}">
					</div>
					<div class="member-info">
						<div class="member-date">Дата рождения - {{ inmate.getDate() }}</div>
						<div class="member-name">{{ inmate.name }}</div>
						<div class="member-descr">{{ inmate.info }}</div>
					</div>
				</div>
			</div>
		{% endfor %}
	</div>
</div>