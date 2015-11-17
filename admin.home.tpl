<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-md-7">
		<!-- BEGIN: UPDATE -->
		<div class="block">
			<h3>{PHP.L.adminqv_update_notice}:</h3>
			<div>{ADMIN_HOME_UPDATE_REVISION} {ADMIN_HOME_UPDATE_MESSAGE}</div>
		</div>
		<!-- END: UPDATE -->
		{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<!-- BEGIN: MAINPANEL -->
		{ADMIN_HOME_MAINPANEL}
		<!-- END: MAINPANEL -->

			<h3>Cotonti:</h3>

			<div class="list-group list-striped">
				<div class="list-group-item">
					{PHP.L.Version}
					<div class="pull-right">{ADMIN_HOME_VERSION}</div>
				</div>
				<div class="list-group-item">
					{PHP.L.Database}
					<div class="pull-right">{ADMIN_HOME_DB_VERSION}</div>
				</div>
				<div class="list-group-item">
					{PHP.L.home_db_rows}
					<div class="pull-right">{ADMIN_HOME_DB_TOTAL_ROWS}</div>
				</div>
				<div class="list-group-item">
					{PHP.L.home_db_indexsize}
					<div class="pull-right">{ADMIN_HOME_DB_INDEXSIZE}</div>
				</div>
				<div class="list-group-item">
					{PHP.L.home_db_datassize}
					<div class="pull-right">{ADMIN_HOME_DB_DATASSIZE}</div>
				</div>
				<div class="list-group-item">
					{PHP.L.home_db_totalsize}
					<div class="pull-right">{ADMIN_HOME_DB_TOTALSIZE}</div>
				</div>
				<div class="list-group-item">
					{PHP.L.Plugins}
					<div class="pull-right">{ADMIN_HOME_TOTALPLUGINS}</div>
				</div>
				<div class="list-group-item">
					{PHP.L.Hooks}
					<div class="pull-right">{ADMIN_HOME_TOTALHOOKS}</div>
				</div>
			</div>

	</div>

	<div class="col-md-5">
		<div class="block">
			<h3>{PHP.L.Core}</h3>
			<div class="list-group">
					<a href="{PHP|cot_url('admin','m=cache')}"  class="ajax list-group-item">{PHP.L.adm_internalcache}</a>
					<a href="{PHP|cot_url('admin','m=cache&s=disk')}" class="ajax list-group-item">{PHP.L.adm_diskcache}</a>
					<a href="{PHP|cot_url('admin','m=log')}"  class="ajax list-group-item">{PHP.L.Log}</a>
					<a href="{PHP|cot_url('admin','m=infos')}"  class="ajax list-group-item">{PHP.L.adm_infos}</a>
			</div>
		</div>
		<!-- BEGIN: SIDEPANEL -->
		<div class="block">
			{ADMIN_HOME_SIDEPANEL}
		</div>
		<!-- END: SIDEPANEL -->

	</div>
</div>
<div class="clearfix"></div>
<!-- END: MAIN -->