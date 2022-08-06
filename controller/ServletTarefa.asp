<%

tarefa = request.Form("function")

if isEmpty(tarefa) then
	response.Redirect("default.asp")
else
	select case tarefa
			
		case "tarefa"
			modulo = request.Form("modulo")
			select case modulo
				case"usuarios"
					response.Redirect("default.asp?v=usumenu")
				case "ordemservicos"
					response.Redirect("default.asp?v=osmenu")
				case ""
					response.Redirect("default.asp?v=menuprincipal")
			end select
	end select
end if

%>