<html>
	<head>
		<meta name="layout" content="${layoutSecurityInfo}"/>
		<title><g:message code='spring.security.info.voters'/></title>
	</head>
	<body>
		<table class='info'>
			<caption><g:message code='spring.security.info.voters'/></caption>
			<thead>
				<tr>
					<th><g:message code='spring.security.info.voters.header.className'/></th>
				</tr>
			</thead>
			<tbody>
				<g:each var='voter' in='${voters}' status='i'>
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<td>${voter.getClass().name}</td>
				</tr>
				</g:each>
			</tbody>
		</table>
	</body>
</html>
