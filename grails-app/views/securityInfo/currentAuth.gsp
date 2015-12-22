<html>
	<head>
		<meta name="layout" content="${layoutSecurityInfo}"/>
		<title><g:message code='spring.security.info.currentAuth'/></title>
	</head>
	<body>
		<table class='info'>
			<caption><g:message code='spring.security.info.currentAuth'/></caption>
			<thead>
				<tr>
					<th><g:message code='spring.security.info.currentAuth.header.name'/></th>
					<th><g:message code='spring.security.info.currentAuth.header.value'/></th>
				</tr>
			</thead>
			<tbody>
				<tr class='even'>
					<td><g:message code='spring.security.info.currentAuth.label.authorities'/></td>
					<td>${auth.authorities}</td>
				</tr>
				<tr class='odd'>
					<td><g:message code='spring.security.info.currentAuth.label.details'/></td>
					<td>${auth.details}</td>
				</tr>
				<tr class='even'>
					<td><g:message code='spring.security.info.currentAuth.label.principal'/></td>
					<td>${auth.principal}</td>
				</tr>
				<tr class='odd'>
					<td><g:message code='spring.security.info.currentAuth.label.name'/></td>
					<td>${auth.name}</td>
				</tr>
			</tbody>
		</table>
	</body>
</html>
