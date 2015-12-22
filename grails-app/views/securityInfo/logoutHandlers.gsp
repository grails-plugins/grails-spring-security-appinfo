<html>
	<head>
		<meta name="layout" content="${layoutSecurityInfo}"/>
		<title><g:message code='spring.security.info.logoutHandlers'/></title>
	</head>
	<body>
		<table class='info'>
			<caption><g:message code='spring.security.info.logoutHandlers'/></caption>
			<thead>
				<tr>
					<th><g:message code='spring.security.info.logoutHandlers.header.className'/></th>
				</tr>
			</thead>
			<tbody>
				<g:each var='handler' in='${handlers}' status='i'>
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<td>${handler.getClass().name}</td>
				</tr>
				</g:each>
			</tbody>
		</table>
	</body>
</html>
