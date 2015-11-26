<html>

<head>
	<title>Filter Chains</title>
</head>

<body>

<br/>

<table>
	<thead>
	<tr>
		<th>URL Pattern</th>
		<th>Filters</th>
	</tr>
	</thead>
	<tbody>
	<g:each var='filterChain' in='${securityFilterChains}'>
	<tr>
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
			<i>none</i>
			</g:else>
		</td>
	</tr>
	</g:each>
	</tbody>
</table>
</body>

</html>
