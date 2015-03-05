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
	<g:each var='entry' in='${filterChainMap}'>
	<tr>
		<td>${entry.key}</td>
		<td>
			<g:if test='${entry.value}'>
			<ul>
			<g:each var='filter' in='${entry.value}'>
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
