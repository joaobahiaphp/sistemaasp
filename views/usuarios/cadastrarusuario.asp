<%




%>


<!doctype>
<html lang="pt-br">

	<head>
		<% call definetitulo(parametro) %>
		<meta charset="utf-8" />
		
	</head>
	
	<body>
	
		<div align="center">
		
		
			<div>
			
			
			
			</div>
		
		
			<div>
			
				<%
					call mostramenu("usuarios","cadastrar")
				%>
			
				<form action="controller.asp" method="post">
				<fieldset>
					<legend>Preencha os dados do Usuário</legend>

                    <table>
                        <tr>
                            <td>Nome:</td><td><input type="text" name="nome" /></td>
                        </tr>
                        <tr>
                            <td>CPF:</td><td><input type="text" name="cpf"></td>
                        </tr>
                    </table>
				</fieldset>
				
				<fieldset>
					<legend>Preencha os dados da Organização</legend>
                    <table>
                        <tr>
                            <td>Razão Social:</td><td><input type="text" name="razao_social"></td>
                        </tr>
                        <tr>
                            <td>CNPJ:</td><td><input type="text" name="cnpj"></td>
                        </tr>
                        <tr>
                            <td>Perfil:</td>
                            <td>
                                <select name="perfil">
                                    <option value="">
                                        Selecione...
                                    </option>
                                    <option value="responsavel">
                                        Responsável
                                    </option>						
                                    <option value="chefia">
                                        Gestor
                                    </option>					
                                    <option value="funcionario">
                                        Funcionário
                                    </option>				
                                
                                </select>
                            </td>
                        </tr>

                    </table>
				</fieldset>

				<fieldset>
					<legend>Definir-Senha-de-Usuario</legend>
                    <table>
                        <tr>
                            <td>Usuário:</td><td><input type="text" name="usuario"></td>
                        </tr>
                        <tr>
                            <td>Senha:</td><td><input type="password" name="senha"></td>
                        </tr>
                        <tr>
                            <td><input type="submit" name="submit" value="Cadastrar"></td>
                        </tr>
                    </table>
				</fieldset>
				<fieldset>
					<input type="hidden" name="function" value="insert">
					<input type="hidden" name="entidade" value="usuario">
				</fieldset>
				</form>
			
			
			</div>
			
			
			<div>
			
				<% call mostrarodape() %>
			</div>
		
		
		</div>
	
	</body>
</html>