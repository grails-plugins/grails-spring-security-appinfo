<html>
	<head>
		<meta name="layout" content="${layoutSecurityInfo}"/>
		<title><g:message code='spring.security.info.providers'/></title>
	</head>
	<body>
	<table class='info'>
		<caption><g:message code='spring.security.info.providers'/></caption>
		<thead>
			<tr>
				<th><g:message code='spring.security.info.providers.header.className'/></th>
			</tr>
		</thead>
			<tbody>
			<g:each var='provider' in='${providers}' status='i'>
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<td>${provider.getClass().name}</td>
				</tr>
			</g:each>
			</tbody>
		</table>
	</body>
</html>
