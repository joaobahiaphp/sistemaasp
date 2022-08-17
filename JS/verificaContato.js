function checa_formulario(contato){

	if (contato.nome.value == "")
	{
		alert("Por Favor Preencha O Campo Nome!");
		contato.nome.focus();
		return (false);
	}
	
	if (contato.email.value == "")
	{
		alert("Por Favor Preencha O Campo E-mail!");
		contato.email.focus();
		return (false);
	}
	
	if (contato.email.value.indexOf('@', 0) == -1)
	{
		alert("O E-mail é Inválido !!!");
		contato.email.focus();
		return (false);
	}
	
	if (contato.assunto.value == "")
	{
		alert("Por Favor Preencha O Campo Assunto!");
		contato.assunto.focus();
		return (false);
	}

	if (contato.mensagem.value == "")
	{
		alert("Por Favor Preencha O Campo Mensagem!");
		contato.mensagem.focus();
		return (false);
	}
	


	return (true);
}
