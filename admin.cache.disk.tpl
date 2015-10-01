<!-- BEGIN: MAIN -->
<div class="button-toolbar marginbottom20">
    <a href="{ADMIN_DISKCACHE_URL_REFRESH}" class="ajax btn btn-info"><span class="fa fa-refresh"></span> {PHP.L.Refresh}</a>
    <a href="{ADMIN_DISKCACHE_URL_PURGE}" class="ajax btn btn-danger"><span class="fa fa-times-circle"></span> {PHP.L.adm_purgeall}</a>
</div>
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}


        <div class="panel panel-default">
            <div class="panel-body">

                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th class="col-xs-6 col-md-4">{PHP.L.Item}</th>
                            <th class="hidden-xs hidden-sm col-md-3 text-center">{PHP.L.Files}</th>
                            <th class="hidden-xs hidden-sm col-md-3 text-center">{PHP.L.Size}</th>
                            <th class="col-xs-6 col-md-2 text-center">{PHP.L.Delete}</th>
                        </tr>
                    </thead>
                    <!-- BEGIN: ADMIN_DISKCACHE_ROW -->
                    <tr>
                        <td>{ADMIN_DISKCACHE_ITEM_NAME}</td>
                        <td class="text-center">{ADMIN_DISKCACHE_FILES}</td>
                        <td class="hidden-xs hidden-sm col-md-3 text-center">{ADMIN_DISKCACHE_SIZE}</td>
                        <td class="hidden-xs hidden-sm col-md-3 text-center">
                            <a title="{PHP.L.Delete}" href="{ADMIN_DISKCACHE_ITEM_DEL_URL}"
                               class="ajax btn btn-danger btn-sm"><span class="fa fa fa-times-circle"></span> {PHP.L.Delete}</a>
                        </td>
                    </tr>
                    <!-- END: ADMIN_DISKCACHE_ROW -->
                    <tr class="strong hidden-xs hidden-sm ">
                        <td>{PHP.L.Total}:</td>
                        <td class="text-center">{ADMIN_DISKCACHE_CACHEFILES}</td>
                        <td class="text-center">{ADMIN_DISKCACHE_CACHESIZE}</td>
                        <td class="text-center">&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>

<!-- END: MAIN -->