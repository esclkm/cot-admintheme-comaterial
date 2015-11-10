<!-- BEGIN: LIST -->
	<h3>{PHP.L.Structure}</h3>
	<div class="list-group">
	<!-- BEGIN: ADMIN_CONFIG_ROW -->
	<a href="{ADMIN_CONFIG_ROW_URL}" class="ajax list-group-item">
			<!-- IF {ADMIN_CONFIG_ROW_ICO} -->
			<img src="{ADMIN_CONFIG_ROW_ICO}"/>
			<!-- ELSE -->
			<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
			<!-- ENDIF -->
			{ADMIN_CONFIG_ROW_NAME}
	</a>
	<!-- END: ADMIN_CONFIG_ROW -->
</div>
	<div class="list-group">
		<!-- BEGIN: ADMIN_STRUCTURE_EXT -->
		<a href="{ADMIN_STRUCTURE_EXT_URL}" class="list-group-item">
			<!-- IF {ADMIN_STRUCTURE_EXT_ICO} --> 
			<img src="{ADMIN_STRUCTURE_EXT_ICO}"/>
			<!-- ELSE -->
			<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
			<!-- ENDIF -->
			{ADMIN_STRUCTURE_EXT_NAME}
		</a>
		<!-- END: ADMIN_STRUCTURE_EXT -->
		<!-- BEGIN: ADMIN_STRUCTURE_EMPTY -->
		<div class="list-group-item">{PHP.L.adm_listisempty}</div>
		<!-- END: ADMIN_STRUCTURE_EMPTY -->
	</div>
	<div class="clearfix"></div>

<ul class="nav nav-pills">
	<li><a href="{PHP.db_structure|cot_url('admin', 'm=extrafields&n=$this')}"><span class="fa fa-database"></span>  {PHP.L.adm_extrafields_desc}</a></li>
</ul>
<!-- END: LIST -->

<!-- BEGIN: MAIN -->
<ul class="nav nav-pills">
	<li><a href="{ADMIN_PAGE_STRUCTURE_RESYNCALL}" title="{PHP.L.adm_tpl_resyncalltitle}"><i class="fa fa-refresh"></i> {PHP.L.Resync}</a></li>
	<li><a href="{ADMIN_STRUCTURE_URL_EXTRAFIELDS}"><span class="fa fa-database"></span> {PHP.L.adm_extrafields}</a></li>
	<!-- IF {ADMIN_STRUCTURE_I18N_URL} -->
	<li><a href="{ADMIN_STRUCTURE_I18N_URL}" class=""><i class="fa fa-globe"></i>  {PHP.L.i18n_structure}</a></li>
	<!-- ENDIF --> 
</ul>


{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}


<!-- BEGIN: OPTIONS -->
<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" enctype="multipart/form-data">
<div class="panel panel-default">
	<div class="panel-body">	
		<div class="row">
			<div class="col-md-6">
				<div class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-4 control-label">{PHP.L.Path}:</label>
						<div class="col-sm-8">
							{ADMIN_STRUCTURE_PATH}
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">{PHP.L.Code}:</label>
						<div class="col-sm-8">
							{ADMIN_STRUCTURE_CODE}
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">{PHP.L.Title}:</label>
						<div class="col-sm-8">
							{ADMIN_STRUCTURE_TITLE}
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">{PHP.L.Description}:</label>
						<div class="col-sm-8">
							{ADMIN_STRUCTURE_DESC}
						</div>
					</div>			
					<div class="form-group">
						<label class="col-sm-4 control-label">{PHP.L.Icon}:</label>
						<div class="col-sm-8">
							{ADMIN_STRUCTURE_ICON}
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">{PHP.L.Locked}:</label>
						<div class="col-sm-8">
							{ADMIN_STRUCTURE_LOCKED}
						</div>
					</div>				
					<div class="form-group">
						<label class="col-sm-4 control-label">{PHP.L.adm_tpl_mode}:</label>
						<div class="col-sm-8">
							{ADMIN_STRUCTURE_TPLMODE} {ADMIN_STRUCTURE_SELECT}
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">{PHP.L.TPL}:</label>
						<div class="col-sm-8">{ADMIN_STRUCTURE_TPLQUICK}</div>
					</div>				

					<!-- BEGIN: EXTRAFLD -->
					<div class="form-group">
						<label class="col-sm-4 control-label">{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</label>
						<div class="col-sm-8">
							{ADMIN_STRUCTURE_EXTRAFLD}
						</div>
					</div>
					<!-- END: EXTRAFLD -->
				</div>
			</div>		
			<div class="col-md-6">
				<!-- BEGIN: CONFIG -->
				{CONFIG_HIDDEN}
				{ADMIN_CONFIG_EDIT_CUSTOM}

				<div class="form-horizontal">
					<!-- BEGIN: ADMIN_CONFIG_ROW -->
					<!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
					<h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
					<!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
					<!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
						<div class="form-group">
							<label class="col-sm-4 control-label" title="
								<!-- IF {PHP.config_owner} == 'module'-->&#123;PHP.cfg.{PHP.config_cat}.{PHP.config_name}&#125;<!-- ENDIF-->
								<!-- IF {PHP.config_owner} == 'plug'-->&#123;PHP.cfg.plugin.{PHP.config_cat}.{PHP.config_name}&#125;<!-- ENDIF-->
								<!-- IF {PHP.config_owner} == 'core'-->&#123;PHP.cfg.{PHP.config_name}&#125;<!-- ENDIF-->
								">{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</label>
							<div class="col-sm-7">
								{ADMIN_CONFIG_ROW_CONFIG}
								<div class="adminconfigmore">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
							</div>
							<div class="col-sm-1">
								<a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" title="{PHP.L.Reset}" class=" btn btn-link"><i class="fa fa-undo"></i></a>
							</div>
						</div>
					<!-- END: ADMIN_CONFIG_ROW_OPTION -->
					<!-- END: ADMIN_CONFIG_ROW -->
				</div>
			</div>
		</div>
		<!-- END: CONFIG -->
	</div>
</div>
<div class="action_bar valid">
	<input type="submit" class="submit btn btn-success" value="{PHP.L.Update}" />
</div>
	</form>

<!-- END: OPTIONS -->

<!-- BEGIN: DEFAULT -->
<h3>{PHP.L.editdeleteentries}:</h3>
<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" class="ajax" enctype="multipart/form-data" >
<div class="panel panel-default">
	<div class="panel-body">

		<div class="row hidden-sm hidden-xs">
			<div class="col-md-1">{PHP.L.Path}</div>
			<div class="col-md-1">{PHP.L.Code}</div>
			<div class="col-md-3">{PHP.L.Title}</div>
			<div class="col-md-1 hidden-md">{PHP.L.TPL}</div>
			<div class="col-md-1">{PHP.L.Pages}</div>
			<div class="col-md-5">{PHP.L.Action}</div>
		</div>
			<!-- BEGIN: ROW -->
		<div class="row paddingbottom5">
			<div class="col-md-1 col-xs-6"><span class="nowrap" style="margin-left: {ADMIN_STRUCTURE_LEVEL}0px;">{ADMIN_STRUCTURE_PATH}</span></div>
			<div class="col-md-1 hidden-sm hidden-xs">{ADMIN_STRUCTURE_CODE}</div>
			<div class="col-md-3 col-xs-6">{ADMIN_STRUCTURE_TITLE}</div>
			<div class="col-md-1 hidden-sm hidden-xs  hidden-md">{ADMIN_STRUCTURE_TPLQUICK}</div>
			<div class="col-md-1 text-center hidden-sm hidden-xs"><span class="control-label">{ADMIN_STRUCTURE_COUNT}</span></div>
			<div class="col-md-5">
				<div class="btn-group2" role="group" aria-label="...">
					<!-- IF {ADMIN_STRUCTURE_OPTIONS_URL} --><a href="{ADMIN_STRUCTURE_OPTIONS_URL}" title="{PHP.L.Edit}" class="ajax btn btn-link"><i class="fa fa-pencil"></i> {PHP.L.Edit}</a><!-- ENDIF -->
					<!-- IF {ADMIN_STRUCTURE_RIGHTS_URL} --><a href="{ADMIN_STRUCTURE_RIGHTS_URL}" title="{PHP.L.short_rights}" class="btn btn-link"><i class="fa fa-lock"></i> {PHP.L.short_rights}</a><!-- ENDIF -->
					<!-- IF {ADMIN_STRUCTURE_JUMPTO_URL} --><a href="{ADMIN_STRUCTURE_JUMPTO_URL}" title="{PHP.L.short_open}" target="_blank" class="btn btn-link"><i class="fa fa-external-link"></i> {PHP.L.short_open}</a><!-- ENDIF -->
					<!-- IF {PHP.n} == 'page' --><a href="{PHP.structure_code|cot_url('page', 'm=add&c=$this')}" title="{PHP.L.Add}" target="_blank" class="btn btn-link hidden-md"><i class="fa fa-plus-circle"></i>  {PHP.L.Add}</a><!-- ENDIF -->

					<!-- IF {PHP.dozvil} --><a href="{ADMIN_STRUCTURE_UPDATE_DEL_URL}" title="{PHP.L.short_delete}" class="confirmLink btn btn-link text-danger"><i class="fa fa-trash-o"></i> {PHP.L.short_delete}</a><!-- ENDIF -->
				</div>
			</div>
		</div>
			<!-- END: ROW -->
		<div class="action_bar valid">

			<p class="paging">{ADMIN_STRUCTURE_PAGINATION_PREV}{ADMIN_STRUCTURE_PAGNAV}{ADMIN_STRUCTURE_PAGINATION_NEXT} <span>{PHP.L.Total}: {ADMIN_STRUCTURE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_STRUCTURE_COUNTER_ROW}</span></p>
		</div>
		<div class="action_bar valid">
			<button type="submit" class="submit btn btn-success">{PHP.L.Update}</button>
		</div>
	</div>
</div>

</form>			
<!-- END: DEFAULT -->

<!-- BEGIN: NEWCAT -->
<h3>{PHP.L.Add}:</h3>
<form name="addstructure" id="addstructure" action="{ADMIN_STRUCTURE_URL_FORM_ADD}" method="post" class="ajax" enctype="multipart/form-data">
<div class="panel panel-default">
	<div class="panel-body">	
		<div class="row hidden-sm hidden-xs">
			<div class="col-md-1">{PHP.L.Path}</div>
			<div class="col-md-1">{PHP.L.Code}</div>
			<div class="col-md-3">{PHP.L.Title}</div>
			<div class="col-md-1">{PHP.L.Locked}</div>
			<div class="col-md-3">{PHP.L.Description}</div>
			<div class="col-md-2">{PHP.L.Icon}</div>
		</div>
		<div class="row">
			<div class="col-xs-4 hidden-md hidden-lg">{PHP.L.Path}</div><div class="col-xs-8 col-md-1">{ADMIN_STRUCTURE_PATH} {PHP.L.adm_required}</div>
			<div class="col-xs-4 hidden-md hidden-lg">{PHP.L.Code}</div><div class="col-xs-8 col-md-1">{ADMIN_STRUCTURE_CODE} {PHP.L.adm_required}</div>
			<div class="col-xs-4 hidden-md hidden-lg">{PHP.L.Title}</div><div class="col-xs-8 col-md-3">{ADMIN_STRUCTURE_TITLE} {PHP.L.adm_required}</div>
			<div class="col-xs-4 hidden-md hidden-lg">{PHP.L.Locked}</div><div class="col-xs-8 col-md-1">{ADMIN_STRUCTURE_LOCKED}</div>
			<div class="col-xs-4 hidden-md hidden-lg">{PHP.L.Description}</div><div class="col-xs-8 col-md-3">{ADMIN_STRUCTURE_DESC}</div>
			<div class="col-xs-4 hidden-md hidden-lg">{PHP.L.Icon}</div><div class="col-xs-8 col-md-2">{ADMIN_STRUCTURE_ICON}</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<!-- BEGIN: EXTRAFLD -->
			<div class="col-xs-4"><label class=" control-label">{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</label></div>
			<div class="col-xs-8">{ADMIN_STRUCTURE_EXTRAFLD}</div>
			<!-- END: EXTRAFLD -->
		</div>
			
		<div class="">
			<button type="submit" class="submit btn btn-success">{PHP.L.Add}</button>
		</div>
	</div>
</div>
		
</form>
<!-- END: NEWCAT -->

<!-- END: MAIN -->