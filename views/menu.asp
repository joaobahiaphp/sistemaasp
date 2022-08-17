<!doctype html>
<html lang="pt-br">
	
	<head>
		
		<title>tela principal</title>

		<meta charset="utf-8">
		
		<script>
		
		</script>
	
	</head>
	
	<body>

		<div align="center">	

			<div>

			</div>

			<div>
                <fieldset>
                    <legend>Escolha-o-modulo</legend>
                    <form action="controller.asp" method="post">
                        <table>
                            <tr>
                                <td>
                                    <select name="modulo">
                                        <option value="">Selecione...</option>
                                        <option value="usuarios">Usuarios</option>
                                        <option value="ordemservicos">Ordens-de-Servicos</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="submit" name="submit" value="Escolher">
                                </td>
                            </tr>
                        </table>
                        <input type="hidden" name="function" value="tarefa">
                    </form>
                </fieldset>
			</div>

			<div>

			</div>

		</div>
	
	</body>
	
</html>