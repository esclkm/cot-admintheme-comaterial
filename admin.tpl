<!-- BEGIN: MAIN -->
<div id="ajaxBlock">
	<!-- BEGIN: BODY -->
	<div id="header">{ADMIN_TITLE}</div>

	<div id="main" class="container-fluid<!-- IF {PHP.m} --> mode_{PHP.m}<!-- ENDIF -->">

		{ADMIN_MAIN}

		<!-- IF {ADMIN_HELP} -->
            <div class="alert alert-info">
                <h4 style="margin-top: 0"><span class="fa fa-question-circle"></span> {PHP.L.Help}:</h4>
                {ADMIN_HELP}
            </div>
		<!-- ENDIF -->
	</div>
	<!-- END: BODY -->
</div>
<!-- END: MAIN -->