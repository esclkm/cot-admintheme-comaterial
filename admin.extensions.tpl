<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: DETAILS -->

<div class="panel panel-default margintop20">
	<div class="panel-body">
		<div class="row">

			<div class="col-xs-11 col-md-1 text-center">
			<!-- IF {ADMIN_EXTENSIONS_ICO} -->
			<img src="{ADMIN_EXTENSIONS_ICO}" />
			<!-- ELSE -->
			<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
			<!-- ENDIF -->		
			</div>
			<div class="col-xs-11 col-md-11">
				<dl class="dl-horizontal">

                        <dt>{PHP.L.Code}:</dt>
                        <dd>{ADMIN_EXTENSIONS_CODE}</dd>

                        <dt>{PHP.L.Type}:</dt>
                        <dd>{ADMIN_EXTENSIONS_TYPE}</dd>

                        <dt>{PHP.L.Description}:</dt>
                        <dd>{ADMIN_EXTENSIONS_DESCRIPTION}</dd>

                        <dt>{PHP.L.Version}:</dt>
                        <dd>
                            <!-- IF {PHP.isinstalled} AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
                            <span class="highlight_red">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span> / <span class="highlight_green">{ADMIN_EXTENSIONS_VERSION}</span>
                            <!-- ELSE -->
                            {ADMIN_EXTENSIONS_VERSION}
                            <!-- ENDIF -->
                        </dd>

                        <dt>{PHP.L.Date}:</dt>
                        <dd>{ADMIN_EXTENSIONS_DATE}</dd>

                        <dt>{PHP.L.Author}:</dt>
                        <dd>{ADMIN_EXTENSIONS_AUTHOR}</dd>

                        <dt>{PHP.L.Copyright}:</dt>
                        <dd>{ADMIN_EXTENSIONS_COPYRIGHT}</dd>

                        <dt>{PHP.L.Notes}:</dt>
                        <dd>{ADMIN_EXTENSIONS_NOTES}</dd>

                    <!-- BEGIN: DEPENDENCIES -->

                        <dt>{ADMIN_EXTENSIONS_DEPENDENCIES_TITLE}:</dt>
                        <dd>
                            <!-- BEGIN: DEPENDENCIES_ROW -->
                            <a href="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_URL}" 
							   class="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_CLASS} <!-- IF {ADMIN_EXTENSIONS_DEPENDENCIES_ROW_CLASS} != 'highlight_red' -->label-info<!-- ELSE -->label-danger<!-- ENDIF --> label">
								{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_NAME}</a>&nbsp; 
                            <!-- END: DEPENDENCIES_ROW -->
                        </dd>

                    <!-- END: DEPENDENCIES -->

				</dl>
			</div>
		</div>
		<div class="text-right">
			<!-- IF !{PHP.isinstalled} AND {PHP.dependencies_satisfied} -->
			<a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_INSTALL_URL}" class="btn btn-success"
			   data-toggle="tooltip"><span class="fa fa-check"></span> {PHP.L.adm_opt_install}</a>
			<!-- ENDIF -->
			<!-- IF {PHP.isinstalled} -->
			<!-- IF {PHP.exists} -->
			<a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_UPDATE_URL}" class="btn btn-primary"
			   data-toggle="tooltip"><span class="fa fa-refresh"></span> {PHP.L.adm_opt_update}</a>
			<!-- ENDIF -->

			<a title="{PHP.L.adm_opt_uninstall_explain}" href="{ADMIN_EXTENSIONS_UNINSTALL_URL}" class="btn btn-danger"
			   data-toggle="tooltip"><span class="fa fa-trash-o"></span> {PHP.L.adm_opt_uninstall}</a>
			<!-- ENDIF -->
		</div>
	</div>
</div>
							

<!-- IF {PHP.isinstalled} AND {PHP.exists} -->
<ul class="marginbottom20 nav nav-pills nav-extpanel">
		<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL} -->
		<li><a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="">
				<span class="fa fa-folder-open"></span> {PHP.L.Open}</a></li>
		<!-- ENDIF -->
		<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS} -->
		<li><a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="">
			<span class="fa fa-cogs"></span> {PHP.L.Administration}</a></li>
		<!-- ENDIF -->
		<!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} > 0 -->
		<li><a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_CONFIG_URL}" class="">
			<span class="fa fa-wrench"></span> {PHP.L.Configuration} ({ADMIN_EXTENSIONS_TOTALCONFIG})</a></li>
		<!-- ENDIF -->
		<li><a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS}" class="">
			<span class="fa fa-users"></span> {PHP.L.short_rights}</a></li>
		<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT} -->
		<li><a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="">
			<span class="fa fa-sitemap"></span> {PHP.L.Structure}</a></li>
		<!-- ENDIF -->
		<!-- FOR {INDEX} IN {ADMIN_EXTENSIONS_CODE|get_db_extrafields} -->
		<li><a title="{PHP.L.adm_extrafields_table}" href="{INDEX.url}" class="">
			<span class="fa fa-database"></span> {PHP.L.adm_extrafields_table} {INDEX.name}</a></li>
		<!-- ENDFOR -->
</ul>
<!-- ENDIF -->


			
	<!-- IF {ADMIN_EXTENSIONS_TYPE} == {PHP.L.Module} -->
		<!-- IF {ADMIN_EXTENSIONS_CODE|get_readmemd($this, true)} -->
		<h4>readme.md:</h4>
		<div class="panel panel-default margintop20">
            <div class="panel-body">
				{ADMIN_EXTENSIONS_CODE|get_readmemd($this, true)}
			</div>
		</div>
		<!-- ENDIF -->
	<!-- ELSE -->	
		<!-- IF {ADMIN_EXTENSIONS_CODE|get_readmemd} -->
		<h4>readme.md:</h4>
		<div class="panel panel-default margintop20">
            <div class="panel-body">
				{ADMIN_EXTENSIONS_CODE|get_readmemd}
			</div>
		</div>
		<!-- ENDIF -->
	<!-- ENDIF -->


	<div class="visible-md visible-lg">
		<h4>{PHP.L.Parts}:</h4>
		<div class="panel panel-default margintop20">
			<table class="table table-hover">
				<thead>
					<tr>
						<th class="col-sm-1 text-right">#</th>
						<th class="col-sm-2">{PHP.L.Part}</th>
						<th class="col-sm-2">{PHP.L.File}</th>
						<th class="col-sm-2">{PHP.L.Hooks}</th>
						<th class="col-sm-1 text-center">{PHP.L.Order}</th>
						<th class="col-sm-2">{PHP.L.Status}</th>
						<th class="col-sm-2">{PHP.L.Action}</th>
					</tr>
				</thead>
				<!-- BEGIN: ROW_ERROR_PART -->
				<tr class="danger">
					<td class="text-right">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
					<td class="word-break">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
					<td class="text-danger word-break">{ADMIN_EXTENSIONS_DETAILS_ROW_FILE}</td>
					<td class="word-break">{ADMIN_EXTENSIONS_DETAILS_ROW_HOOKS}</td>
					<td colspan="3">{ADMIN_EXTENSIONS_DETAILS_ROW_ERROR}</td>
				</tr>
				<!-- END: ROW_ERROR_PART -->
				<!-- BEGIN: ROW_PART -->
				<tr class="<!-- IF {PHP.info_file.Status} == 0 -->info<!-- ENDIF --><!-- IF {PHP.info_file.Status} == 3 -->warning<!-- ENDIF -->">
					<td class="text-right">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
					<td class="word-break">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
					<td class="word-break">{ADMIN_EXTENSIONS_DETAILS_ROW_FILE}</td>
					<td class="word-break">{ADMIN_EXTENSIONS_DETAILS_ROW_HOOKS}</td>
					<td class="text-center">{ADMIN_EXTENSIONS_DETAILS_ROW_ORDER}</td>
					<td class="">{ADMIN_EXTENSIONS_DETAILS_ROW_STATUS}</td>
					<td class="text-right">
						<!-- BEGIN: ROW_PART_NOTINSTALLED -->
						&ndash;
						<!-- END: ROW_PART_NOTINSTALLED -->
						<!-- BEGIN: ROW_PART_PAUSE -->
						<a href="{ADMIN_EXTENSIONS_DETAILS_ROW_PAUSEPART_URL}" class="ajax btn btn-warning btn-sm">
							<span class="fa fa-pause"></span> {PHP.L.adm_opt_pause}</a>
						<!-- END: ROW_PART_PAUSE -->
						<!-- BEGIN: ROW_PART_UNPAUSE -->
						<a href="{ADMIN_EXTENSIONS_DETAILS_ROW_UNPAUSEPART_URL}" class="ajax btn btn-info btn-sm">
							<span class="fa fa-play"></span> {PHP.L.adm_opt_unpause}</a>
						<!-- END: ROW_PART_UNPAUSE -->
					</td>
				</tr>
				<!-- END: ROW_PART -->
			</table>
			<div class="panel-footer">
				<div class="text-right">
					<!-- IF {PHP.isinstalled} -->
					<a title="{PHP.L.adm_opt_pauseall_explain}" href="{ADMIN_EXTENSIONS_PAUSE_URL}" class="btn btn-warning marginbottom10"
					   data-toggle="tooltip"><span class="fa fa-pause"></span> {PHP.L.adm_opt_pauseall}</a>

					<!-- IF {PHP.exists} -->
					<a title="{PHP.L.adm_opt_unpauseall_explain}" href="{ADMIN_EXTENSIONS_UNPAUSE_URL}" class="btn btn-primary marginbottom10"
					   data-toggle="tooltip"><span class="fa fa-play"></span> {PHP.L.adm_opt_unpauseall}</a>
					<!-- ENDIF -->
					<!-- ENDIF -->
				</div>							
			</div>
		</div>

	</div>
<!-- IF {ADMIN_EXTENSIONS_DETAILS_ROW_LISTTAGS} -->
<div class="visible-md visible-lg">
    <h4>{PHP.L.Tags}:</h4>
	<div class="panel panel-default margintop20">
		<table class="table table-hover">
			<thead>
				<tr>
					<th class="col-sm-4">{PHP.L.Part}</th>
					<th class="col-sm-8">{PHP.L.Files} / {PHP.L.Tags}</th>
				</tr>
			</thead>
			<!-- BEGIN: ROW_ERROR_TAGS -->
			<!-- END: ROW_ERROR_TAGS -->
			<!-- BEGIN: ROW_TAGS -->
			<tr>
				<td>{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
				<td>{ADMIN_EXTENSIONS_DETAILS_ROW_LISTTAGS}</td>
			</tr>
			<!-- END: ROW_TAGS -->
		</table>
	</div>
</div>
<!-- ENDIF -->

<!-- END: DETAILS -->

<!-- BEGIN: HOOKS -->
<h2>{PHP.L.Hooks} ({ADMIN_EXTENSIONS_CNT_HOOK}):</h2>
<div class="panel panel-default">
    <div class="panel-body">
		<div class="row">
			<div class="col-xs-4"><strong>{PHP.L.Hooks}</strong></div>
			<div class="col-xs-4"><strong>{PHP.L.Plugin}</strong></div>
			<div class="col-xs-2 text-center"><strong>{PHP.L.Order}</strong></div>
			<div class="col-xs-2 text-center"><strong>{PHP.L.Active}</strong></div>
		</div>
<!-- BEGIN: HOOKS_ROW -->
		<div class="row line">
			<div class="col-xs-4">{ADMIN_EXTENSIONS_HOOK}</div>
			<div class="col-xs-4">{ADMIN_EXTENSIONS_CODE}</div>
			<div class="col-xs-2 text-center">{ADMIN_EXTENSIONS_ORDER}</div>
			<div class="col-xs-2 text-center <!-- IF {ADMIN_EXTENSIONS_ACTIVE} == {PHP.L.No} -->text-danger<!-- ENDIF -->">{ADMIN_EXTENSIONS_ACTIVE}</div>
		</div>
<!-- END: HOOKS_ROW -->
	</div>
</div>		
<!-- END: HOOKS -->

<!-- BEGIN: DEFAULT -->

<ul class="nav nav-pills">
	<li class="<!-- IF {ADMIN_EXTENSIONS_SORT_ALP_SEL} -->active<!-- ENDIF -->"><a
       href="{ADMIN_EXTENSIONS_SORT_ALP_URL}"><span class="fa fa-sort-alpha-asc"></span> {PHP.L.adm_sort_alphabet}</a></li>
	<li class="<!-- IF {ADMIN_EXTENSIONS_SORT_CAT_SEL} -->active<!-- ENDIF -->"><a
       href="{ADMIN_EXTENSIONS_SORT_CAT_URL}"><span class="fa fa-sort-amount-asc"></span> {PHP.L.adm_sort_category}</a></li>
	<li class="<!-- IF {ADMIN_EXTENSIONS_ONLY_INSTALLED_SEL} -->active<!-- ENDIF -->"><a
       href="{ADMIN_EXTENSIONS_ONLY_INSTALLED_URL}"><span class="fa fa-cube"></span> {PHP.L.adm_only_installed}</a></li>
	<li><a href="{ADMIN_EXTENSIONS_HOOKS_URL}"><span class="fa fa-plug"></span> {PHP.L.Hooks}</a></li>
</ul>

<!-- BEGIN: SECTION-->
<h2>{ADMIN_EXTENSIONS_SECTION_TITLE} ({ADMIN_EXTENSIONS_CNT_EXTP})</h2>
<div class="panel panel-default">
    <div class="panel-body panel-nopadding extenions-list">
            <!-- BEGIN: ROW -->
            <!-- BEGIN: ROW_CAT -->
	</div>
</div>
<h3>{ADMIN_EXTENSIONS_CAT_TITLE}</h3>
<div class="panel panel-default">			
	<div class="panel-body panel-nopadding extenions-list">		
		<!-- END: ROW_CAT -->

		<div class="extension <!-- IF {ADMIN_EXTENSIONS_STATUS} == {PHP.R.admin_code_notinstalled} -->extnotinstalled <!--ENDIF--> <!-- IF {ADMIN_EXTENSIONS_STATUS} == {PHP.R.admin_code_missing} -->extdanger <!--ENDIF--> <!-- IF {ADMIN_EXTENSIONS_STATUS} == {PHP.R.admin_code_paused} OR {ADMIN_EXTENSIONS_STATUS} == {PHP.R.admin_code_partrunning} -->extwarning<!-- ENDIF -->">

			<!-- IF {ADMIN_EXTENSIONS_ICO} -->
			<img class="exticon" src="{ADMIN_EXTENSIONS_ICO}" />
			<!-- ELSE -->
			<img class="exticon" src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
			<!-- ENDIF -->
			<div class="extbody">
				<h4>
					<a href="{ADMIN_EXTENSIONS_DETAILS_URL}">{ADMIN_EXTENSIONS_NAME}</a> 
					<!-- IF {PHP.part_status} != 3 AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
					<span class="text-danger">{ADMIN_EXTENSIONS_VERSION_INSTALLED} -> {ADMIN_EXTENSIONS_VERSION}</span>
					<!-- ELSE -->
					<span class="text-info">{ADMIN_EXTENSIONS_VERSION}</span>
					<!-- ENDIF -->
					<small>{ADMIN_EXTENSIONS_CODE_X}</small>
					<small class="pull-right">

						{ADMIN_EXTENSIONS_STATUS}
					</small>

				</h4>
				<div class="extoptions">
					<div class="help-block">{ADMIN_EXTENSIONS_DESCRIPTION|cot_string_truncate($this,150,1,0,'...')}</div>
					<!-- BEGIN: ROW_ERROR_EXT -->
					<div class="alert alert-danger" role="alert">
						<strong>{ADMIN_EXTENSIONS_X_ERR}</strong> {ADMIN_EXTENSIONS_ERROR_MSG}
					</div>
					<!-- END: ROW_ERROR_EXT -->
					<!-- IF {ADMIN_EXTENSIONS_STATUS} == {PHP.R.admin_code_running} -->
					<div class="optionsbar">
						<!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} -->
						<a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_EDIT_URL}" class="btn btn-link btn-sm marginbottom10">
							<span class="fa fa-wrench"></span> {PHP.L.short_config}</a>
						<!-- ENDIF -->
						<!-- IF {PHP.ifstruct} -->
						<a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="btn btn-link btn-sm marginbottom10">
							<span class="fa fa-sitemap"></span> {PHP.L.short_struct}</a>
						<!-- ENDIF -->
						<!-- IF {PHP.totalinstalled} -->
						<a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS_URL}" class="btn btn-link btn-sm marginbottom10">
							<span class="fa fa-users"></span> {PHP.L.short_rights}</a>
						<!-- ENDIF -->
						<!-- IF {PHP.ifthistools} -->
						<a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="btn btn-link btn-sm marginbottom10">
							<span class="fa fa-cogs"></span> {PHP.L.short_admin}</a>
						<!-- ENDIF -->
						<!-- IF {PHP.if_plg_standalone} -->
						<a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="btn btn-link btn-sm marginbottom10">
							<span class="fa fa-folder-open"></span> {PHP.L.Open}</a>
						<!-- ENDIF -->
					</div>
					<!-- ENDIF -->
				</div>
			</div>

		</div>
		<!-- END: ROW -->
		<!-- BEGIN: ROW_ERROR -->
		<div class="row hidden-sm hidden-xs ">
			<div class="col-md-offset-1 col-md-3">{ADMIN_EXTENSIONS_X}</div>
			<div class="col-md-8">{PHP.L.adm_opt_setup_missing}</div>
		</div>
		<!-- END: ROW_ERROR -->

	</div>
</div>
<!-- END: SECTION -->
<!-- END: DEFAULT -->

<!-- END: MAIN -->