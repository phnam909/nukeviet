<!-- BEGIN: main -->
{FILE "header.tpl"}
<div class="container-fluid">
	<header id="header" class="row">
		<div class="logo">
			<a title="{NV_SITE_NAME}" href="{NV_BASE_SITEURL}{NV_ADMINDIR}/index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}"><img alt="{NV_SITE_NAME}" src="{NV_BASE_SITEURL}themes/{NV_ADMIN_THEME}/images/logo_small.png" width="240" height="50" /></a>
		</div>
		<div class="logout">
			<a class="bthome" href="{NV_GO_CLIENTSECTOR_URL}"><span><em class="icon-home icon-large">&nbsp;</em> {NV_GO_CLIENTSECTOR}</span></a>
			<a class="bthome" href="javascript:void(0);" onclick="nv_admin_logout();"><span><em class="icon-power-off icon-large">&nbsp;</em> {NV_LOGOUT}</span></a>
		</div>
		<!-- BEGIN: langdata -->
		<div class="lang form-inline">
			<strong>{NV_LANGDATA}</strong>:
			<select id="lang" onchange="top.location.href=this.options[this.selectedIndex].value;return;" class="form-control input-sm">
				<!-- BEGIN: option -->
				<option value="{LANGOP}"{SELECTED}>{LANGVALUE} </option>
				<!-- END: option -->
			</select>
		</div>
		<!-- END: langdata -->
	</header>
	<!-- #header-->
	<div class="row">
		<div class="navbar navbar-inverse navbar-static-top" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu-site-default">
					<span class="sr-only">&nbsp;</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="menu-site-default">
				<ul class="nav navbar-nav">
					<li>
						<a title="{LANG.Home}" href="{NV_BASE_SITEURL}{NV_ADMINDIR}/index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}"><em class="fa fa-lg fa-home">&nbsp;</em> {LANG.Home}</a>
					</li>
					<!-- BEGIN: top_menu_loop -->
					<li class="{TOP_MENU_CURRENT}">
						<a href="{NV_BASE_SITEURL}{NV_ADMINDIR}/index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={TOP_MENU_HREF}">{TOP_MENU_NAME}<!-- BEGIN: has_sub --> <strong class="caret">&nbsp;</strong><!-- END: has_sub --></a>
						<!-- BEGIN: submenu -->
						<ul class="dropdown-menu">
							<!-- BEGIN: submenu_loop --><li><a href="{SUBMENULINK}" title="{SUBMENUTITLE}">{SUBMENUTITLE}</a></li><!-- END: submenu_loop -->
						</ul>
						<!-- END: submenu -->
					</li>
					<!-- END: top_menu_loop -->
				</ul>
			</div>
		</div>
	</div>
	<div class="row hidden-xs" id="top_message">
		<div class="col-sm-8 col-md-6">
			<!-- BEGIN: hello_admin -->
			{HELLO_ADMIN1}
			<!-- END: hello_admin -->
			<!-- BEGIN: hello_admin3 -->
			{HELLO_ADMIN3}
			<!-- END: hello_admin3 -->
			<!-- BEGIN: hello_admin2 -->
			{HELLO_ADMIN2}
			<!-- END: hello_admin2 -->
		</div>
		<div class="col-sm-4 col-md-6">
			<div class="row text-right">
				<span id="digclock">{NV_DIGCLOCK}</span>
			</div>
		</div>
	</div>

	<section id="middle" class="row">
		<div id="contentwrapper">
			<div id="container">
				<div id="info_tab">
					<!-- BEGIN: empty_page_title -->
					<h3 class="text-primary pull-left"><i onclick="ver_menu_click()" id="cs_menu" class="fa fa-arrow-circle-left">&nbsp;</i> {PAGE_TITLE}</h3>
					<!-- END: empty_page_title -->

					<!-- BEGIN: select_option -->
					<span class="pull-right">
						<select name="select_options" onchange="top.location.href=this.options[this.selectedIndex].value;return;" class="form-control w200 input-sm" style="margin-right: 5px">
							<option value="">{PLEASE_SELECT}</option>
							<!-- BEGIN: select_option_loop -->
							<option value="{SELECT_VALUE}">{SELECT_NAME}</option>
							<!-- END: select_option_loop -->
						</select> </span>
					<!-- END: select_option -->
					<!-- BEGIN: site_mods -->
					<span class="pull-right" style="margin-right: 5px"><a href="{NV_BASE_SITEURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}"><em class="fa fa-globe">&nbsp;</em>{NV_GO_CLIENTMOD}</a></span>
					<!-- END: site_mods -->
					<div class="clearfix"></div>
				</div>
				<div id="contentmod">
					{THEME_ERROR_INFO}
					{MODULE_CONTENT}
					<div class="clearfix">
						&nbsp;
					</div>
				</div>
				<!-- #content-->
			</div>
			<!-- #container-->

			<aside id="left_menu" class="ddsmoothmenu-v">
				<ul id="ver_menu">
					<!-- BEGIN: menu_loop -->
					<li>
						<a {MENU_CURRENT} href="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MENU_HREF}">{MENU_NAME}</a>
						<!-- BEGIN: submenu -->
						<ul>
							<!-- BEGIN: submenu_loop -->
							<li>
								<a href="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MENU_SUB_HREF}&amp;{NV_OP_VARIABLE}={MENU_SUB_OP}">{MENU_SUB_NAME}</a>
							</li>
							<!-- END: submenu_loop -->
						</ul>
						<!-- END: submenu -->
					</li>
					<!-- BEGIN: current -->
					<li>
						<a class="{MENU_SUB_CURRENT}" href="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MENU_SUB_HREF}&amp;{NV_OP_VARIABLE}={MENU_SUB_OP}">{MENU_SUB_NAME}</a>
					</li>
					<!-- END: current -->
					<!-- END: menu_loop -->
				</ul>
			</aside>
			<!-- #left_menu -->
		</div>
		<!-- #contentwrapper-->
	</section>
	<!-- #middle-->

	<footer id="footer" class="row">
		<div class="copyright">
			<!-- BEGIN: memory_time_usage -->
			[MEMORY_TIME_USAGE]
			<br/>
			<!-- END: memory_time_usage -->
			<strong>{NV_COPYRIGHT}</strong>
		</div>
		<div class="imgstat">
			<a title="NUKEVIET CMS" href="http://nukeviet.vn" target="_blank"><img alt="NUKEVIET CMS" src="{NV_BASE_SITEURL}images/banner_nukeviet_88x15.jpg" width="88" height="15" /></a>
			<br/>
		</div>
	</footer>
	<!-- #footer -->
</div>
<!-- #container-fluid -->
<div id="timeoutsess" class="chromeframe">
	{LANG_TIMEOUTSESS_NOUSER}, <a onclick="timeoutsesscancel();" href="#">{LANG_TIMEOUTSESS_CLICK}</a>. {LANG_TIMEOUTSESS_TIMEOUT}: <span id="secField"> 60 </span> {LANG_TIMEOUTSESS_SEC}
</div>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/default/js/bootstrap.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/{NV_ADMIN_THEME}/js/main.js"></script>
<!-- BEGIN: ckeditor -->
<script type="text/javascript">
	for (var i in CKEDITOR.instances) {
		CKEDITOR.instances[i].on('key', function(e) {
			$(window).bind('beforeunload', function() {
				return '{MSGBEFOREUNLOAD}';
			});
		});
	}
</script>
<!-- END: ckeditor -->
{FILE "footer.tpl"}
<!-- END: main -->