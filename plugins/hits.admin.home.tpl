<!-- BEGIN: MAIN -->

<!-- BEGIN: STAT -->
<h3>{PHP.L.hits_hits}</h3>
<div class="panel panel-default">
	<div class="panel-body">
<!-- BEGIN: ADMIN_HOME_ROW -->
		<div>{ADMIN_HOME_DAY}
			<div class="pull-right">
				{ADMIN_HOME_HITS}
			</div>
			<div class="progress">
				<div class="progress-bar" style="width: {ADMIN_HOME_PERCENTBAR}%;"></div>
			</div>
		</div>	
<!-- END: ADMIN_HOME_ROW -->
	
	</div>
</div>
<div class="text-right"><a class="btn btn-info" href="{ADMIN_HOME_MORE_HITS_URL}">{PHP.L.ReadMore}</a></div>		

<!-- END: STAT -->

<!-- BEGIN: ACTIVITY -->
<h3>{PHP.L.hits_activity}</h3>
<div class="panel panel-default">
	<div class="panel-body">
			<div>
				<a href="{ADMIN_HOME_NEWUSERS_URL}">{PHP.L.home_newusers}</a>
				<div class="pull-right">{ADMIN_HOME_NEWUSERS}</div>
			</div>
			<div>
				<a href="{ADMIN_HOME_NEWPAGES_URL}">{PHP.L.home_newpages}</a>
				<div class="pull-right">{ADMIN_HOME_NEWPAGES}</div>
			</div>
			<div>
				<a href="{ADMIN_HOME_NEWTOPICS_URL}">{PHP.L.home_newtopics}</a>
				<div class="pull-right">{ADMIN_HOME_NEWTOPICS}</div>
			</div>
			<div>
				<a href="{ADMIN_HOME_NEWPOSTS_URL}">{PHP.L.home_newposts}</a>
				<div class="pull-right">{ADMIN_HOME_NEWPOSTS}</div>
			</div>
			<div>
				{PHP.L.home_newpms}
				<div class="pull-right">{ADMIN_HOME_NEWPMS}</div>
			</div>
	</div>
</div>
<!-- END: ACTIVITY -->

<!-- END: MAIN -->