<%




%>


<!doctype>
<html lang="pt-br">

	<head>
		<title></title>
		<meta charset="utf-8">
		
		<% call definetitulo(parametro)  %>
		
	</head>
	
	<body>
	
		<div align="center">
		
		
			<div>
			
			
			
			</div>
		
		
			<div>
			
				<%
				
					call mostramenu("usuarios","listar")
				
				%>
			
			
			
			</div>
			
			
			<div>
			
				<% call mostrarodape() %>
			</div>
		
		
		</div>
	
	</body>
</html>