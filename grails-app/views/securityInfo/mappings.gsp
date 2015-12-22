<html>
	<head>
		<meta name="layout" content="${layoutSecurityInfo}"/>
		<title><g:message code='spring.security.info.mappings'/></title>
	</head>
	<body>
		<br/>
		<g:message code='spring.security.info.mappings.type' args='[securityConfigType]'/>
		<table class='info'>
			<caption><g:message code='spring.security.info.mappings'/></caption>
			<thead>
				<tr>
					<th><g:message code='spring.security.info.mappings.header.pattern'/></th>
					<th><g:message code='spring.security.info.mappings.header.attribute'/></th>
					<th><g:message code='spring.security.info.mappings.header.method'/></th>
				</tr>
			</thead>
			<tbody>
			<g:each var='iu' in='${configAttributes}' status='i'>
				<g:set var='closure' value='${iu.configAttributes.any { it.getClass().name.contains('ClosureConfigAttribute') }}'/>
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<td>${iu.pattern}</td>
					<td>${closure ? '&lt;closure&gt;' : iu.configAttributes.toString()[1..-2]}</td>
					<td>${iu.httpMethod ?: 'N/A'}</td>
				</tr>
			</g:each>
			</tbody>
		</table>
	</body>
</html>
