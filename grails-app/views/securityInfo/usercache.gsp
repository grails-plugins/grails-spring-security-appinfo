<html>
	<head>
		<meta name="layout" content="${layoutSecurityInfo}"/>
		<title><g:message code='spring.security.info.usercache'/></title>
	</head>
	<body>
		<g:if test='${cache}'>
		<g:message code='spring.security.info.usercache.classname' args='[cache.getClass().name]'/>
		<br/>
		<table class='info'>
			<caption><g:message code='spring.security.info.usercache'/></caption>
			<thead>
				<tr>
					<th><g:message code='spring.security.info.usercache.header.attribute'/></th>
					<th><g:message code='spring.security.info.usercache.header.value'/></th>
				</tr>
			</thead>
			<tr class='even'>
				<td><g:message code='spring.security.info.usercache.label.size'/></td>
				<td>${cache.size}</td>
			</tr>
			<tr class='odd'>
				<td><g:message code='spring.security.info.usercache.label.status'/></td>
				<td>${cache.status}</td>
			</tr>
			<tr class='even'>
				<td><g:message code='spring.security.info.usercache.label.name'/></td>
				<td>${cache.name}</td>
			</tr>
			<tr class='odd'>
				<td><g:message code='spring.security.info.usercache.label.guid'/></td>
				<td>${cache.guid}</td>
			</tr>
			<tr class='even'>
				<td colspan='2'>
					<table class='info'>
						<caption><g:message code='spring.security.info.usercache.statistics'/></caption>
						<thead>
							<tr>
								<th><g:message code='spring.security.info.usercache.statistics.header.attribute'/></th>
								<th><g:message code='spring.security.info.usercache.statistics.header.value'/></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><g:message code='spring.security.info.usercache.label.stats.cacheHits'/></td>
								<td>${cache.statistics.cacheHitCount()}</td>
							</tr>
							<tr>
								<td><g:message code='spring.security.info.usercache.label.stats.memoryHits'/></td>
								<td>${cache.statistics.localHeapHitCount()}</td>
							</tr>
							<tr>
								<td><g:message code='spring.security.info.usercache.label.stats.diskHits'/></td>
								<td>${cache.statistics.localDiskHitCount()}</td>
							</tr>
							<tr>
								<td><g:message code='spring.security.info.usercache.label.stats.cacheMisses'/></td>
								<td>${cache.statistics.cacheMissCount()}</td>
							</tr>
							<tr>
								<td><g:message code='spring.security.info.usercache.label.stats.objectCount'/></td>
								<td>${cache.statistics.size}</td>
							</tr>
							<tr>
								<td><g:message code='spring.security.info.usercache.label.stats.memoryObjectCount'/></td>
								<td>${cache.statistics.localHeapSize}</td>
							</tr>
							<tr>
								<td><g:message code='spring.security.info.usercache.label.stats.diskObjectCount'/></td>
								<td>${cache.statistics.localDiskSize}</td>
							</tr>
							<tr>
								<td><g:message code='spring.security.info.usercache.label.stats.evictionCount'/></td>
								<td>${cache.statistics.cacheEvictedCount()}</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan='2'>
					<table class='info'>
						<caption><g:message code='spring.security.info.usercache.cachedUsers' args='[cache.size]'/></caption>
						<thead>
							<tr>
								<th><g:message code='spring.security.info.usercache.cachedUsers.header.username'/></th>
								<th><g:message code='spring.security.info.usercache.cachedUsers.header.user'/></th>
							</tr>
						</thead>
						<tbody>
						<g:each var='k' in='${cache.keys}' status='i'>
							<tr>
								<td>${k}</td>
								<td>${cache.get(k)?.value}</td>
							</tr>
						</g:each>
						</tbody>
					</table>
				</td>
			</tr>
		</table>
		</g:if>
		<g:else>
		<h3><g:message code='spring.security.info.usercache.disabled'/></h3>
		</g:else>
	</body>
</html>
