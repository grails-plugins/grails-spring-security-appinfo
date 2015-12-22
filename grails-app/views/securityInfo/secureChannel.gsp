<html>
	<head>
		<meta name="layout" content="${layoutSecurityInfo}"/>
		<title><g:message code='spring.security.info.secureChannel'/></title>
	</head>
	<body>
		<g:if test='${requestMap}'>
			<table class='info'>
				<caption><g:message code='spring.security.info.secureChannel'/></caption>
				<thead>
				<tr>
					<th><g:message code='spring.security.info.secureChannel.header.pattern'/></th>
					<th><g:message code='spring.security.info.secureChannel.header.attributes'/></th>
				</tr>
				</thead>
				<tbody>
				<g:each var='entry' in='${requestMap}' status='i'>
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td>${entry.key}</td>
						<td>${entry.value}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
		</g:if>
		<g:else>
		<br/>
		<h3><g:message code='spring.security.info.secureChannel.disabled'/></h3>
		</g:else>
	</body>
</html>
