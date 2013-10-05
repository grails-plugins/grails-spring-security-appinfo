<html>

<head>
	<title>Security Configuration Values</title>
</head>

<body>

<table>
	<thead>
	<tr>
		<th>Name</th>
		<th>Value</th>
	</tr>
	</thead>
	<tbody>
	<g:each var='entry' in='${conf}'>
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
	<tr>
		<td>${key}</td>
		<td>${value}</td>
	</tr>
	</g:each>

	</tbody>
</table>
</body>

</html>
