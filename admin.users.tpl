<!-- BEGIN: MAIN -->

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}



<!-- BEGIN: ADMIN_USERS_DEFAULT -->
<ul class="nav nav-pills">
	<li><a title="{PHP.L.Configuration}" href="{ADMIN_USERS_URL}" class=""><i class="fa fa-cog"></i> 
		{PHP.L.Configuration}</a></li>
		<li><a href="{ADMIN_USERS_EXTRAFIELDS_URL}" class=""><i class="fa fa-database"></i> 
		{PHP.L.adm_extrafields_table} {PHP.db_users}</a></li>
</ul>
<div class="row">
	<div class="col-md-6">
		<h3>{PHP.L.Groups}:</h3>
		<div class="panel panel-default margintop20">
			<div class="panel-body panel-nopadding">
				<table class="table table-hover table-responsive">
					<thead>
						<tr>
							<th class="col-xs-1">&nbsp;</th>
							<th class="col-xs-4">{PHP.L.Group}</th>
							<th class="col-xs-2 text-center width10">{PHP.L.Members}</th>
							<th class="col-xs-2 text-center width10">{PHP.L.Enabled}</th>
							<th class="col-xs-3">{PHP.L.Action}</th>
						</tr>
					</thead>
					<!-- BEGIN: USERS_ROW -->
					<tr>
						<td class="centerall">
							<!-- IF {PHP.hidden_groups} AND {ADMIN_USERS_ROW_GRP_HIDDEN} == Yes -->{PHP.R.admin_icon_usergroup0}<!-- ELSE -->{PHP.R.admin_icon_usergroup1}<!-- ENDIF -->
							<!-- ENDIF -->
						</td>
						<td><a href="{ADMIN_USERS_ROW_GRP_TITLE_URL}" class="ajax" title="{PHP.L.Edit}">{ADMIN_USERS_ROW_GRP_NAME} (#{ADMIN_USERS_ROW_GRP_ID})</a></td>
						<td class="text-center">{ADMIN_USERS_ROW_GRP_COUNT_MEMBERS}</td>
						<td class="text-center">{ADMIN_USERS_ROW_GRP_DISABLED}</td>
						<td class="action">
							<!-- IF !{ADMIN_USERS_ROW_GRP_SKIPRIGHTS} -->
							<a title="{PHP.L.Rights}" href="{ADMIN_USERS_ROW_GRP_RIGHTS_URL}"><span class="fa fa-lock"></span> {PHP.L.short_rights}</a>
							<!-- ENDIF -->
							<a title="{PHP.L.Open}" href="{ADMIN_USERS_ROW_GRP_JUMPTO_URL}"><span class="fa fa-trash-o"></span> {PHP.L.short_open}</a>
						</td>
					</tr>
					<!-- END: USERS_ROW -->
				</table>
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<h3>{PHP.L.Add}:</h3>
		<div class="panel panel-default margintop20">
			<div class="panel-body">
				<form name="addlevel" id="addlevel" action="{ADMIN_USERS_FORM_URL}" method="post" class="ajax">
					<div class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-5 control-label">{PHP.L.Name}:</label>
							<div class="col-sm-7">{ADMIN_USERS_NGRP_NAME}{PHP.L.adm_required}</div>
						</div>
						<div class="form-group">
							<label class="col-sm-5 control-label">{PHP.L.Title}:</label>
							<div class="col-sm-7">{ADMIN_USERS_NGRP_TITLE}{PHP.L.adm_required}</div>
						</div>
						<div class="form-group">
							<label class="col-sm-5 control-label">{PHP.L.Description}:</label>
							<div class="col-sm-7">{ADMIN_USERS_NGRP_DESC}</div>
						</div>
						<div class="form-group">
							<label class="col-sm-5 control-label">{PHP.L.Icon}:</label>
							<div class="col-sm-7">{ADMIN_USERS_NGRP_ICON}</div>
						</div>
						<div class="form-group">
							<label class="col-sm-5 control-label">{PHP.L.Alias}:</label>
							<div class="col-sm-7">{ADMIN_USERS_NGRP_ALIAS}</div>
						</div>
						<!-- IF {PHP.pfs_is_active} -->
						<div class="form-group">
							<label class="col-sm-5 control-label">{PHP.L.adm_maxsizesingle}:</label>
							<div class="col-sm-7">{ADMIN_USERS_NGRP_PFS_MAXFILE}</div>
						</div>
						<div class="form-group">
							<label class="col-sm-5 control-label">{PHP.L.adm_maxsizeallpfs}:</label>
							<div class="col-sm-7">{ADMIN_USERS_NGRP_PFS_MAXTOTAL}</div>
						</div>
						<!-- ENDIF -->
						<div class="form-group">
							<label class="col-sm-5 control-label">{PHP.L.adm_copyrightsfrom}:</label>
							<div class="col-sm-7">{ADMIN_USERS_FORM_SELECTBOX_GROUPS} {PHP.L.adm_required}</div>
						</div>
						<div class="form-group">
							<label class="col-sm-5 control-label">{PHP.L.adm_skiprights}:</label>
							<div class="col-sm-7">{ADMIN_USERS_NGRP_SKIPRIGHTS}</div>
						</div>
						<div class="form-group">
							<label class="col-sm-5 control-label">{PHP.L.Level}:</label>
							<div class="col-sm-7">{ADMIN_USERS_NGRP_RLEVEL}</div>
						</div>
						<div class="form-group">
							<label class="col-sm-5 control-label">{PHP.L.Disabled}:</label>
							<div class="col-sm-7">{ADMIN_USERS_NGRP_DISABLED}</div>
						</div>
						<!-- IF {PHP.hidden_groups} -->
						<div class="form-group">
							<label class="col-sm-5 control-label">{PHP.L.Hidden}:</label>
							<div class="col-sm-7">{ADMIN_USERS_NGRP_HIDDEN}</div>
						</div>
						<!-- ENDIF -->
						<div class="form-group">
							<label class="col-sm-5 control-label">{PHP.L.adm_rights_maintenance}:</label>
							<div class="col-sm-7">{ADMIN_USERS_NGRP_MAINTENANCE}</div>
						</div>
						<div class="text-right">
							<input type="submit" class="btn btn-primary" value="{PHP.L.Add}" />
						</div>
					</div>
				</form>
			</div>
		</div>						
	</div>
</div>
<!-- END: ADMIN_USERS_DEFAULT -->
<!-- BEGIN: ADMIN_USERS_EDIT -->
<div class="panel panel-default margintop20">
	<div class="panel-body">
		<form name="editlevel" id="editlevel" action="{ADMIN_USERS_EDITFORM_URL}" method="post" class="ajax">
			<div class="form-horizontal">
				<div class="form-group">
					<label class="col-sm-5 control-label">{PHP.L.Name}:</label>
					<div class="col-sm-7">{ADMIN_USERS_EDITFORM_GRP_NAME} {PHP.L.adm_required}</div>
				</div>
				<div class="form-group">
					<label class="col-sm-5 control-label">{PHP.L.Title}:</label>
					<div class="col-sm-7">{ADMIN_USERS_EDITFORM_GRP_TITLE} {PHP.L.adm_required}</div>
				</div>
				<div class="form-group">
					<label class="col-sm-5 control-label">{PHP.L.Description}:</label>
					<div class="col-sm-7">{ADMIN_USERS_EDITFORM_GRP_DESC}</div>
				</div>
				<div class="form-group">
					<label class="col-sm-5 control-label">{PHP.L.Icon}:</label>
					<div class="col-sm-7">{ADMIN_USERS_EDITFORM_GRP_ICON}</div>
				</div>
				<div class="form-group">
					<label class="col-sm-5 control-label">{PHP.L.Alias}:</label>
					<div class="col-sm-7">{ADMIN_USERS_EDITFORM_GRP_ALIAS}</div>
				</div>
				<!-- IF {PHP.pfs_is_active} -->
				<div class="form-group">
					<label class="col-sm-5 control-label">{PHP.L.adm_maxsizesingle}:</label>
					<div class="col-sm-7">{ADMIN_USERS_EDITFORM_GRP_PFS_MAXFILE}</div>
				</div>
				<div class="form-group">
					<label class="col-sm-5 control-label">{PHP.L.adm_maxsizeallpfs}:</label>
					<div class="col-sm-7">{ADMIN_USERS_EDITFORM_GRP_PFS_MAXTOTAL}</div>
				</div>
				<!-- ENDIF -->
				<div class="form-group">
					<label class="col-sm-5 control-label">{PHP.L.Disabled}:</label>
					<div class="col-sm-7">{ADMIN_USERS_EDITFORM_GRP_DISABLED}</div>
				</div>
				<!-- IF {PHP.hidden_groups} -->
				<div class="form-group">
					<label class="col-sm-5 control-label">{PHP.L.Hidden}:</label>
					<div class="col-sm-7">{ADMIN_USERS_EDITFORM_GRP_HIDDEN}</div>
				</div>
				<!-- ENDIF -->
				<div class="form-group">
					<label class="col-sm-5 control-label">{PHP.L.Level}:</label>
					<div class="col-sm-7">{ADMIN_USERS_EDITFORM_GRP_RLEVEL}</div>
				</div>
				<div class="form-group">
					<label class="col-sm-5 control-label">{PHP.L.Members}:</label>
					<div class="col-sm-7"><a href="{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT_URL}">{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT}</a></div>
				</div>
				<div class="form-group">
					<label class="col-sm-5 control-label">{PHP.L.adm_rights_maintenance}:</label>
					<div class="col-sm-7">{ADMIN_USERS_EDITFORM_GRP_MAINTENANCE}</div>
				</div>
				<div class="form-group">
					<label class="col-sm-5 control-label">{PHP.L.adm_skiprights}:</label>
					<div class="col-sm-7">{ADMIN_USERS_EDITFORM_GRP_SKIPRIGHTS}</div>
				</div>
				<!-- IF !{ADMIN_USERS_EDITFORM_SKIPRIGHTS} -->
				<div class="form-group">
					<label class="col-sm-5 control-label">{PHP.L.Rights}:</label>
					<div class="col-sm-7"><a href="{ADMIN_USERS_EDITFORM_RIGHT_URL}" class="button"><span class="unlock icon"></span>{PHP.L.Rights}</a></div>
				</div>
				<!-- ENDIF -->

				<div class="text-right">
					<!-- IF !{ADMIN_USERS_EDITFORM_SKIPRIGHTS} -->
					<a href="{ADMIN_USERS_EDITFORM_RIGHT_URL}" class="btn btn-default"><span class="fa fa-lock"></span> {PHP.L.Rights}</a> 
					<!-- ENDIF -->					
					<!-- IF {PHP.g} > 5 -->
					<a href="{ADMIN_USERS_EDITFORM_DEL_URL}" class="btn btn-danger ajax"><span class="fa fa-trash-o"></span> {PHP.L.Delete}</a> 
					<!-- ENDIF -->
					<input type="submit" class="btn btn-primary" value="{PHP.L.Update}" />
				</div>
			</div>
		</form>
	</div>
</div>
<!-- END: ADMIN_USERS_EDIT -->

<!-- END: MAIN -->