<%

entidade = request.QueryString("entidade")

if isEmpty(entidade) then
	response.redirect("default.asp")
else

	select case entidade

		case "logout"
			Session.Abandon
			response.redirect("default.asp")

	end select

end if


%>