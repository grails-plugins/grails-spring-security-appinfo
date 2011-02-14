<head>
	<title>Mappings</title>
</head>

<body>

<br/>

<h4>SecurityConfigType: ${securityConfigType}</h4>

<br/>

<table>
	<thead>
	<tr>
		<th>Name</th>
		<th>Value</th>
	</tr>
	</thead>
	<tbody>
	<g:each var='entry' in='${configAttributeMap}'>
	<tr>
		<td>${entry.key}</td>
		<td>${entry.value}</td>
	</tr>
	</g:each>
	</tbody>
</table>
</body>
