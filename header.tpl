<!-- BEGIN: HEADER -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
	<head>
		<meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8" />
		<meta name="description" content="{HEADER_META_DESCRIPTION}" />
		<meta name="keywords" content="{HEADER_META_KEYWORDS}" />
		<meta name="generator" content="Cotonti http://www.cotonti.com" />
		<meta http-equiv="expires" content="Fri, Apr 01 1974 00:00:00 GMT" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="last-modified" content="{HEADER_META_LASTMODIFIED} GMT" />
		{HEADER_BASEHREF}
		{HEADER_HEAD}
		<link rel="shortcut icon" href="favicon.ico" />
		{HEADER_COMPOPUP}
		<title>{HEADER_TITLE} </title>
	</head>
	<body>
		<div id="navbar">
			<span id="logo">
				<a href="{PHP.cfg.mainurl}" title="{PHP.L.hea_viewsite}"><!-- IF {PHP.cfg.maintitle} && {PHP.cfg.maintitle|mb_strlen} < 13 -->{PHP.cfg.maintitle} <!-- ELSE -->{PHP.L.hea_viewsite} <!-- ENDIF --></a>
			</span>
			<ul class="nav">
				<li class="<!-- IF !{PHP.m} -->sel<!-- ENDIF -->">
					<a href="{PHP|cot_url('admin')}" title="{PHP.L.Administration}">
						<i class="fa fa-home"></i> 
						{PHP.L.Home}
					</a>
				</li>
				<!-- IF {PHP.usr.admin_config} -->
				<li class="<!-- IF {PHP.m} == 'config' -->sel<!-- ENDIF -->">
					<a href="{PHP|cot_url('admin', 'm=config')}" title="{PHP.L.Configuration}">
						<i class="fa fa-cogs"></i> 
						{PHP.L.Configuration}
					</a>
				</li>
				<!-- ENDIF -->
				<!-- IF {PHP.usr.admin_structure} -->
				<li class="<!-- IF {PHP.m} == 'structure' -->sel<!-- ENDIF -->">
					<a href="{PHP|cot_url('admin', 'm=structure')}" title="{PHP.L.Structure}">
						<i class="fa fa-sitemap"></i> 
						{PHP.L.Structure}
					</a>
				</li>
				<!-- ENDIF -->
				<!-- IF {PHP.usr.admin_config} -->
				<li class="<!-- IF {PHP.m} == 'extensions' -->sel<!-- ENDIF -->">
					<a href="{PHP|cot_url('admin', 'm=extensions')}" title="{PHP.L.Extensions}">
						<i class="fa fa-archive"></i> 
						{PHP.L.Extensions}
					</a>
				</li>
				<!-- ENDIF -->
				<!-- IF {PHP.usr.admin_users} -->
				<li class="<!-- IF {PHP.m} == 'users' -->sel<!-- ENDIF -->">
					<a href="{PHP|cot_url('admin', 'm=users')}" title="{PHP.L.Users}">
						<i class="fa fa-group"></i> 
						{PHP.L.Users}
					</a>
				</li>
				<!-- ENDIF -->
				<li class="<!-- IF {PHP.m} == 'extrafields' -->sel<!-- ENDIF -->">
					<a href="{PHP|cot_url('admin', 'm=extrafields')}" title="{PHP.L.adm_extrafields}">
						<i class="fa fa-database"></i> 
						{PHP.L.adm_extrafields}
					</a>
				</li>
				<li class="<!-- IF {PHP.m} == 'other' -->sel<!-- ENDIF -->">
					<a href="{PHP|cot_url('admin', 'm=other')}" title="{PHP.L.Other}">
						<i class="fa fa-wrench"></i> 
						{PHP.L.Other}
					</a>
				</li>

			</ul>
			<div class="clear"></div>
			<ul class="nav userinfo">
				<li>
					<a href="{PHP|cot_url('users','m=profile')}" target="_blank">
						<i class="fa fa-user"></i>{PHP.usr.name}</a>
				</li>
				<!-- IF {PHP.out.notices} -->
				<!-- FOR {KEY}, {VALUE} IN {PHP.out.notices_array} -->
				<li>
					<!-- IF {VALUE|is_array} -->					
					<a href="{VALUE.0}"  class="fancybox" rel="gallery1"  target="_blank">	
						<i class="fa fa-exclamation-triangle"></i>
						{VALUE.1}
					</a>
					<!-- ELSE -->
					{VALUE}
					<!-- ENDIF -->
				</li>
				<!-- ENDFOR -->
				<!-- ENDIF -->
				<!-- IF  {PHP.usr.messages} > 0  -->
				<li>
					<a href="{PHP|cot_url('pm')}" target="_blank">
						<i class="fa fa-envelope"></i>
						{PHP.usr.messages|cot_declension($this, 'Privatemessages')}
					</a>
				</li>
				<!-- ENDIF -->

				<li>
					<a href="{PHP.out.loginout_url}"><i class="fa fa-sign-out"></i>{PHP.L.Logout}</a>
				</li>
			</ul>
			<div class="clear"></div>			
			<div id="footer">
					<a href="http://cotonti.com" target="_blank" title="Cotonti {PHP.cfg.version}"><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/cotonti.png" alt="Cotonti{PHP.cfg.version}" /></a>
			</div>
		</div>
		<div id="navshade"></div>
		<a href="#" id="showmenu"><i class="fa fa-bars"></i></a>
		<div id="wrapper" class="">
			<!-- END: HEADER -->