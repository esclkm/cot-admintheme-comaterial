<!-- BEGIN: MAIN -->
<h3>{PHP.L.Pages}</h3>
<div class="list-group">
	<a class="list-group-item" href="{ADMIN_HOME_URL}">{PHP.L.adm_valqueue}: {ADMIN_HOME_PAGESQUEUED}</a>
	<a class="list-group-item" href="{PHP|cot_url('page','m=add')}">{PHP.L.Add}</a>
	<a class="list-group-item" href="{PHP.db_pages|cot_url('admin','m=extrafields&n=$this')}">{PHP.L.home_ql_b2_2}</a>
</div>
<!-- END: MAIN -->