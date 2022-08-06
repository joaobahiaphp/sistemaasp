<%

entidade = request.form("entidade")

if isEmpty(entidade) then
	response.redirect("default.asp")
else

	select case entidade

		case "usuario"

	        	cnpj = request.form("cnpj")
	        	razao_social = request.form("razao_social")

	        	'call inserirOrganizacao(cnpj,razao_social,"","")

			nome = request.form("nome")
			cpf = request.form("cpf")
			usuario = request.form("usuario")
			senha = request.form("senha")
			perfil = request.form("perfil")
			id_organizacao = buscarEmpresa(cnpj)

			'call inserirPessoa(cpf,nome,"","")

			'call inserirUsuario(usuario,senha,perfil,id_organizacao)


			response.write "<p>cnpj:"+cnpj+"<br />"
			response.write "razao Social:"+razao_social+"<br/>"
			response.write "usuario:"+usuario+"<br/>"
			response.write "senha:"+senha+"<br/>"
			response.write "perfil:"+perfil+"<br/>"
			response.write "nome:"+nome+"<br />"
			response.write "cpf:"+cpf+"<br />"
			response.write "id_organizacao:"+id_organizacao

			'response.redirect("default.asp?v=usulistagem")

	end select

end if


%>