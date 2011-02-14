<html>

<head>
<title>Security Configuration</title>
<link rel='stylesheet' href="${resource(dir:'css',file:'main.css',plugin:'none')}" />
<link rel='shortcut icon' href="${resource(dir:'images',file:'favicon.ico',plugin:'none')}" type='image/x-icon' />
<g:layoutHead />
</head>

<body>

<div class='nav'>
	<span class='menuButton'><g:link action='config'>Config</g:link></span>
	<span class='menuButton'><g:link action='mappings'>Mappings</g:link></span>
	<span class='menuButton'><g:link action='currentAuth'>Auth</g:link></span>
	<span class='menuButton'><g:link action='usercache'>User Cache</g:link></span>
	<span class='menuButton'><g:link action='filterChain'>Filter Chains</g:link></span>
	<span class='menuButton'><g:link action='logoutHandler'>Logout Handlers</g:link></span>
	<span class='menuButton'><g:link action='voters'>Voters</g:link></span>
	<span class='menuButton'><g:link action='providers'>Authentication Providers</g:link></span>
</div>

<g:javascript library='application' plugin='none' />
<g:layoutBody />

</body>
</html>
