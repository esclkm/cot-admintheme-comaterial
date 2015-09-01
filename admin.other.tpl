<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-xs-12 col-md-6">
		<h4>{PHP.L.Core}</h4>
		<div class="list-group">
			<!-- BEGIN: ADMIN_STRUCTURE_EXT -->
			<a href="{ADMIN_OTHER_URL_CACHE}" class="list-group-item list-img-title-desc">
				<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
				<span class="title">{PHP.L.adm_internalcache}</span>
				<span>{PHP.L.adm_internalcache_desc}</span>

			</a>
			<a href="{ADMIN_OTHER_URL_DISKCACHE}" class="list-group-item list-img-title-desc">
				<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
				<span class="title">{PHP.L.adm_diskcache}</span>
				<span>{PHP.L.adm_diskcache_desc}</span>
			</a>
			<a href="{ADMIN_OTHER_URL_EXFLDS}" class="list-group-item list-img-title-desc">
				<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
				<span class="title">{PHP.L.adm_extrafields}</span>
				<span>{PHP.L.adm_extrafields_desc}</span>
			</a>
			<a href="{ADMIN_OTHER_URL_LOG}" class="list-group-item list-img-title-desc">
				<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
				<span class="title">{PHP.L.adm_log}</span>
				<span>{PHP.L.adm_log_desc}</span>
			</a>
			<a href="{ADMIN_OTHER_URL_INFOS}" class="list-group-item list-img-title-desc">
				<img src="{PHP.cfg.system_dir}/admin/img/cfg_info.png" />
				<span class="title">{PHP.L.adm_infos}</span>
				<span>{PHP.L.adm_infos_desc}</span>
			</a>
		</div>

	<!-- BEGIN: SECTION -->
	<!-- IF {ADMIN_OTHER_SECTION} == {PHP.L.Plugins} -->
	</div>
	<div class="col-xs-12 col-md-6">
	<!-- ENDIF -->
		<h4>{ADMIN_OTHER_SECTION}</h4>
		<div class="list-group">
			<!-- BEGIN: ROW -->
			<a href="{ADMIN_OTHER_EXT_URL}" class="list-group-item list-img-title-desc">
				<!-- IF {ADMIN_OTHER_EXT_ICO} -->
				<img src="{ADMIN_OTHER_EXT_ICO}"/>
				<!-- ELSE -->
				<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
				<!-- ENDIF -->
				<span class="title">{ADMIN_OTHER_EXT_NAME}</span>
				<span>{ADMIN_OTHER_EXT_DESC}</span>
			</a>
			<!-- END: ROW -->
			<!-- BEGIN: EMPTY -->
			<div class="list-group-item">
				{PHP.L.adm_listisempty}
			</div>
			<!-- END: EMPTY -->
		</div>
	<!-- END: SECTION -->
	</div>
</div>
<!-- END: MAIN -->