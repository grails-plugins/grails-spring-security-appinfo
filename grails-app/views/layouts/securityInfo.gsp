<!doctype html>
<html class="no-js" lang="">
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><g:message code='spring.security.info'/></title>
<asset:stylesheet src='spring-security-appinfo.css'/>
<g:layoutHead/>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul><g:each var='action' in='${['config','mappings','currentAuth','usercache','filterChains',
			                                'logoutHandlers','voters','providers','secureChannel']}'>
				<li><g:link action='${action}'><g:message code='${'spring.security.info.' + action}'/></g:link></li>
			</g:each></ul>
		</div>
		<p/>
<g:layoutBody/>
	</body>
</html>
