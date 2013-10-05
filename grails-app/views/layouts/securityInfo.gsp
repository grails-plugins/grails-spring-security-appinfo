<html>

<head>
<title>Security Configuration</title>
<link rel='stylesheet' href="${resource(dir:'css',file:'main.css',plugin:'none')}" />
<link rel='shortcut icon' href="${resource(dir:'images',file:'favicon.ico',plugin:'none')}" type='image/x-icon' />
<g:layoutHead />
</head>

<body>

	<div class="nav" role="navigation">
		<ul>
			<li><g:link action='config'>Config</g:link></li>
			<li><g:link action='mappings'>Mappings</g:link></li>
			<li><g:link action='currentAuth'>Auth</g:link></li>
			<li><g:link action='usercache'>User Cache</g:link></li>
			<li><g:link action='filterChains'>Filter Chains</g:link></li>
			<li><g:link action='logoutHandler'>Logout Handlers</g:link></li>
			<li><g:link action='voters'>Voters</g:link></li>
			<li><g:link action='providers'>Authentication Providers</g:link></li>
		</ul>
	</div>
<g:layoutBody />

</body>
</html>
