<!-- BEGIN: MAIN -->
<div class="button-toolbar">
    <a href="{ADMIN_CACHE_URL_REFRESH}" class="ajax btn btn-info"><span class="fa fa-refresh"></span> {PHP.L.Refresh}</a>
    <a href="{ADMIN_CACHE_URL_PURGE}" class="ajax btn btn-danger"><span class="fa fa-times-circle"></span> {PHP.L.adm_purgeall}</a>
    <a href="{ADMIN_CACHE_URL_SHOWALL}" class="ajax btn btn-primary"><span class="fa fa-folder-open"></span> {PHP.L.adm_cache_showall}</a>
</div>
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<!-- BEGIN: ADMIN_CACHE_MEMORY -->
<h3>{ADMIN_CACHE_MEMORY_DRIVER}</h3>

<div class="panel panel-default margintop20">

    <div class="panel-body">
        <div class="progress">
            <div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="{ADMIN_CACHE_MEMORY_PERCENTBAR}"
                 aria-valuemin="0" aria-valuemax="100" style="width: {ADMIN_CACHE_MEMORY_PERCENTBAR}%">
                <span class="sr-only">{ADMIN_CACHE_MEMORY_PERCENTBAR}%</span>
            </div>
        </div>

        {PHP.L.Available}: {ADMIN_CACHE_MEMORY_AVAILABLE|number_format($this, 0, '.', ' ')} /
        {ADMIN_CACHE_MEMORY_MAX|number_format($this, 0, '.', ' ')} {PHP.L.bytes}
    </div>
</div>
<!-- END: ADMIN_CACHE_MEMORY -->

<h3>{PHP.L.Database}</h3>

<div class="panel panel-default margintop20">
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="col-xs-6 col-sm-6 col-md-3">{PHP.L.Item}</th>
                    <th class="hidden-xs hidden-sm hidden-md col-lg-2 text-center">{PHP.L.Expire}</th>
                    <th class="hidden-xs col-sm-3 col-md-2 text-center">{PHP.L.Size}</th>
                    <th class="hidden-xs hidden-sm col-md-3">{PHP.L.Value}</th>
                    <th class="col-xs-6 col-sm-3  col-md-2 text-center">{PHP.L.Delete}</th>
                </tr>
            </thead>
            <!-- BEGIN: ADMIN_CACHE_ROW -->
            <tr>
                <td>{ADMIN_CACHE_ITEM_NAME}</td>
                <td class="hidden-xs hidden-sm text-center">{ADMIN_CACHE_EXPIRE}</td>
                <td class="hidden-xs">{ADMIN_CACHE_SIZE}</td>
                <td class="hidden-xs hidden-sm text-center">{ADMIN_CACHE_VALUE}</td>
                <td class="">
                    <a title="{PHP.L.Delete}" href="{ADMIN_CACHE_ITEM_DEL_URL}" class="ajax btn btn-danger btn-sm"><span class="fa fa fa-times-circle"></span> {PHP.L.Delete}</a>
                </td>
            </tr>
            <!-- END: ADMIN_CACHE_ROW -->
            <tr class="strong">
                <td class=""><strong>{PHP.L.Total}:</strong></td>
				<td class="hidden-xs hidden-sm text-center">&nbsp;</td>
                <td class="hidden-xs text-center">{ADMIN_CACHE_CACHESIZE}</td>
                <td class="hidden-xs hidden-sm text-center">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</div>
<!-- END: MAIN -->