<%

funcao = request.Form("function")

if isEmpty(funcao) then
	response.Redirect("default.asp")
else
	select case funcao
	
		case "login"
			senha = request.Form("senha")
			usuario = request.Form("usuario")
			if senha = "" then
				response.Redirect("default.asp?v=lgnautenticacao&usu="+usuario)
			else
				if usuario = "adm" and senha = "123" then
					session("token") = "true"
					response.Redirect("default.asp?v=menuprincipal")
				else
					response.Redirect("default.asp")
				end if
			end if

	end select
end if

%>