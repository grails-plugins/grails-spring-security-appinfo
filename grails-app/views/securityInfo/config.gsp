<html>
	<head>
		<meta name="layout" content="${layoutSecurityInfo}"/>
		<title><g:message code='spring.security.info.config'/></title>
	</head>
	<body>
		<table class='info'>
			<caption><g:message code='spring.security.info.config'/></caption>
			<thead>
				<tr>
					<th><g:message code='spring.security.info.config.header.name'/></th>
					<th><g:message code='spring.security.info.config.header.value'/></th>
				</tr>
			</thead>
			<tbody>
			<g:each var='entry' in='${conf}' status='i'>
<%
def key = entry.key
if (key.startsWith('failureHandler.exceptionMappings.')) {
	key = key - 'failureHandler.exceptionMappings.'
	key = 'failureHandler.exceptionMappings. ' + key.replaceAll('\\.', '\\. ')
}
def value = entry.value
if (value instanceof Class) {
	value = value.name.replaceAll('\\.', '\\. ')
}
%>
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<td>${key}</td>
					<td>${value}</td>
				</tr>
			</g:each>
			</tbody>
		</table>
	</body>
</html>
