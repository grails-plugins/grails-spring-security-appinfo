<html>
	<head>
		<meta name="layout" content="${layoutSecurityInfo}"/>
		<title><g:message code='spring.security.info.filterChains'/></title>
	</head>
	<body>
		<table class='info'>
			<caption><g:message code='spring.security.info.filterChains'/></caption>
			<thead>
				<tr>
					<th><g:message code='spring.security.info.filterChains.header.pattern'/></th>
					<th><g:message code='spring.security.info.filterChains.header.filters'/></th>
				</tr>
			</thead>
			<tbody>
				<g:each var='filterChain' in='${securityFilterChains}' status='i'>
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<td>${filterChain.matcherPattern}</td>
					<td>
						<g:if test='${filterChain.filters}'>
						<ul>
						<g:each var='filter' in='${filterChain.filters}'>
							<li>${filter.getClass().name}</li>
						</g:each>
						</ul>
						</g:if>
						<g:else>
						<i><g:message code='spring.security.info.filterChains.none'/></i>
						</g:else>
					</td>
				</tr>
				</g:each>
			</tbody>
		</table>
	</body>
</html>
