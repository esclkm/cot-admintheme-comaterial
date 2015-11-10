<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: EDIT -->
<form name="saveconfig" id="saveconfig" action="{ADMIN_CONFIG_FORM_URL}" method="post" class="ajax">
<div class="panel panel-default">
	
    <div class="panel-body">
        {ADMIN_CONFIG_EDIT_CUSTOM}
        
		<div class="form-horizontal">
        <!-- BEGIN: ADMIN_CONFIG_ROW -->
        <!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
            <h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
        <!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
        <!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
			<div class="form-group">
				<label class="col-sm-4 control-label">
					{ADMIN_CONFIG_ROW_CONFIG_TITLE}:
				</label>
				<div class="col-sm-8 col-md-7">
						{ADMIN_CONFIG_ROW_CONFIG}
						<!-- IF {ADMIN_CONFIG_ROW_CONFIG_MORE} -->
						<span class="help-block">{ADMIN_CONFIG_ROW_CONFIG_MORE}</span>
						<!-- ENDIF -->
					</div>
				<div class="col-md-1 hidden-sm hidden-xs text-right">
						<a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" title="{PHP.L.Reset}" class="ajax btn btn-link">
							<span class="fa fa-undo"></span> 
						</a>
				</div>
			</div>
        <!-- END: ADMIN_CONFIG_ROW_OPTION -->
        <!-- END: ADMIN_CONFIG_ROW -->
		</div>
		<div class="">
			<button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
		</div>
    </div>
</div>

</form>
<!-- END: EDIT -->


<!-- BEGIN: DEFAULT -->
<div class="row">
	<div class="col-md-6">
<!-- BEGIN: ADMIN_CONFIG_COL -->
<!-- IF {ADMIN_CONFIG_COL_CAPTION} == {PHP.L.Plugins} -->
	</div>
	<div class="col-md-6">
<!-- ENDIF -->
<h4>{ADMIN_CONFIG_COL_CAPTION}</h4>
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

<!-- END: ADMIN_CONFIG_COL -->
	</div>
</div>
<!-- END: DEFAULT -->

<!-- END: MAIN -->