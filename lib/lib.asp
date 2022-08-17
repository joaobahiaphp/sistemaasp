<%

function handerPixel(idPixel)

	handerPixel = ""

	handerPixel = handerPixel & "<!-- Meta Pixel Code -->"
	handerPixel = handerPixel & "<script>"
	handerPixel = handerPixel & "!function(f,b,e,v,n,t,s)"
	handerPixel = handerPixel & "{if(f.fbq)return;n=f.fbq=function(){n.callMethod?"
	handerPixel = handerPixel & "n.callMethod.apply(n,arguments):n.queue.push(arguments)};"
	handerPixel = handerPixel & "if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';"
	handerPixel = handerPixel & "n.queue=[];t=b.createElement(e);t.async=!0;"
	handerPixel = handerPixel & "t.src=v;s=b.getElementsByTagName(e)[0];"
	handerPixel = handerPixel & "s.parentNode.insertBefore(t,s)}(window, document,'script',"
	handerPixel = handerPixel & "'https://connect.facebook.net/en_US/fbevents.js');"
	handerPixel = handerPixel & "fbq('init', '" & idPixel  & "');"
	handerPixel = handerPixel & "fbq('track', 'PageView');"
	handerPixel = handerPixel & "</script>"
	handerPixel = handerPixel & "<noscript><img height='1' width='1' style='display:none'"
	handerPixel = handerPixel & "src='https://www.facebook.com/tr?id=" & idPixel  & "&ev=PageView&noscript=1'"
	handerPixel = handerPixel & "/></noscript>"
	handerPixel = handerPixel & "<!-- End Meta Pixel Code -->"

	response.write handerPixel

end function



function handerTagManager(idTagManager)

	handerTagManager = ""
	handerTagManager = handerTagManager & "<!-- Google Tag Manager -->"
	handerTagManager = handerTagManager & "<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':"
	handerTagManager = handerTagManager & "new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],"
	handerTagManager = handerTagManager & "j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src="
	handerTagManager = handerTagManager & "'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);"
	handerTagManager = handerTagManager & "})(window,document,'script','dataLayer','" & idTagManager & "');</script>"
	handerTagManager = handerTagManager & "<!-- End Google Tag Manager -->"

	response.write handerTagManager

end function


function formauth(usu)

if usu = "" or isEmpty(usu) then
	
	formauth = "<form action='controller.asp' method='post' name='contatos' id='contatos' onsubmit='return checa_formulario(this)'>"
	formauth = formauth & "<table cellspacing='0' cellpadding='0' width='450' align='left' border='0'>"
	formauth = formauth & "<tbody>"
	formauth = formauth & "<tr>"
	formauth = formauth & "<td align='left' width='45' height='30'><label>*Usu&aacute;rio:</label></td>"
	formauth = formauth & "<td width='314' height='30' align='left'><input class='form' id='usuario' size='49' name='usuario' />"
	formauth = formauth & "</label></td>"
	formauth = formauth & "</tr>"
	formauth = formauth & "<tr>"
	formauth = formauth & "<td height='24' colspan='2' align='center' valign='middle'><label><br />"
	formauth = formauth & "<input class='form' id='enviar' type='submit' value='Enviar Informa&ccedil;&otilde;es' name='Entrar' />"
	formauth = formauth & "&nbsp;</label><input name='limpar' type='reset' class='form' id='limpar' value='Limpar Formul&aacute;rio' />"
	formauth = formauth & "<input type='hidden' name='senha' value=''>"
	formauth = formauth & "<input type='hidden' name='function' value='login'></td>"
	formauth = formauth & "</tr>"
	formauth = formauth & "</tbody>"
	formauth = formauth & "</table>"
	formauth = formauth & "</form>"
	
else
	
	formauth = "<form action='controller.asp' method='post' name='contatos' id='contatos' onsubmit='return checa_formulario(this)'>"
	formauth = formauth & "<table cellspacing='0' cellpadding='0' width='450' align='left' border='0'>"
	formauth = formauth & "<tbody>"
	formauth = formauth & "<tr>"
	formauth = formauth & "<td align='left' width='45' height='30'><label>*Senha:</label></td>"
	formauth = formauth & "<td width='314' height='30' align='left'><input type='password' class='form' id='senha' size='49' name='senha' />"
	formauth = formauth & "</label></td>"
	formauth = formauth & "</tr>"
	formauth = formauth & "<tr>"
	formauth = formauth & "<td height='24' colspan='2' align='center' valign='middle'><label><br />"
	formauth = formauth & "<input class='form' id='enviar' type='submit' value='Enviar Informa&ccedil;&otilde;es' name='Entrar' />"
	formauth = formauth & "&nbsp;</label><input name='limpar' type='reset' class='form' id='limpar' value='Limpar Formul&aacute;rio' />"
	formauth = formauth & "<input type='hidden' name='usuario' value='"+usu+"'>"
	formauth = formauth & "<input type='hidden' name='function' value='login'></td>"
	formauth = formauth & "</tr>"
	formauth = formauth & "</tbody>"
	formauth = formauth & "</table>"
	formauth = formauth & "</form>"
	

end if

response.Write formauth

end function



function definetitulo(parametro)

	select case parametro


        case "usucadastro"
            definetitulo = "<title>Novo Usuário</title>"

        case "usumenu"
            definetitulo = "<title>Menu - Usuários</title>"

        case "usulistagem"
            definetitulo = "<title>Usuários Cadastrados</title>"
        
        case "usulistagem"
            definetitulo = "<title>Atualizar Usuário</title>"

	end select

	response.write definetitulo

end function


'menu do front page
function menufp()

	menufp = ""
	menufp = menufp + "<tr>"
	menufp = menufp + "<td height='37'><table width='620' height='38' border='0' align='center' cellpadding='0' cellspacing='0'>"
	menufp = menufp + "<tr>"
	menufp = menufp + "<td  width='90' align='center' valign='middle'>&nbsp;</td>"
	menufp = menufp + "<td id='menu' align='center' valign='middle'><a href='default.asp'>Home</a></td>"
	menufp = menufp + "<td id='menu' align='center' valign='middle'><a href='default.asp?v=webequipe'>Equipe</a></td>"
	menufp = menufp + "<td id='menu' align='center' valign='middle'><a href='default.asp?v=webservicos'>Servi&ccedil;os</a></td>"
	menufp = menufp + "<td id='menu' align='center' valign='middle'><a href='default.asp?v=webinstalacoes'>Instala&ccedil;&otilde;es</a></td>"
	menufp = menufp + "<td id='menu' align='center' valign='middle'><a href='default.asp?v=webinformes'>Informes &Uacute;teis</a></td>"
	menufp = menufp + "<td id='menu' align='center' valign='middle'><a href='default.asp?v=webcontatos'>Contatos</a></td>"
	menufp = menufp + "<td id='menu' align='center' valign='middle'><a href='default.asp?v=lgnautenticacao'>Autentica&ccedil;&atilde;o</a></td>"
	menufp = menufp + "</tr>"
	menufp = menufp + "</table></td>"
	menufp = menufp + "</tr>"

response.write menufp

end function


'rodape do frontpage
function mostrarodapefp()

	dim fprazaosocial, fpcidade, fpendereco, fpcomplemento, fpcep
	dim fptelefone, fpemail, fpwebsite
	dim fpnomereduzido
	
	fpnomereduzido = "MicroCWS Tecnologia e Servi&ccedil;os"
	fprazaosocial = "J.P BAHIA FERREIRA APOIO ADMINISTRATIVO"
	fpcidade = "Bras&iacute;lia/DF"
	fpendereco = "CNC 2, Lts 18/19"
	fpcep = "72.115-525"
	fpcomplemento = "Ap 202"
	fptelefone  = "(61)9523-3998"
	fpemail = "microcwsadm.contato@gmail.com"
	fpwebsite = "http://www.microcwsadm.somee.com"

	mostrarodapefp = "<td height='70' align='center' id='rodape'>"
	mostrarodapefp = mostrarodapefp & "<table width='600' height='90' border='0' align='center' cellpadding='0' cellspacing='0' class='rodape'>"
	mostrarodapefp = mostrarodapefp & "<tr>"
	mostrarodapefp = mostrarodapefp & "<td align='left' valign='middle' id='rodape'>"
	mostrarodapefp = mostrarodapefp & "<p>"
	mostrarodapefp = mostrarodapefp & "<strong>" & fprazaosocial & "</strong><br />"
	mostrarodapefp = mostrarodapefp & "<strong>" & fpendereco & "<br />"
	mostrarodapefp = mostrarodapefp & fpcomplemento & "<br />"
	mostrarodapefp = mostrarodapefp & fpcidade & "</strong><br />"
	mostrarodapefp = mostrarodapefp & "<strong>CEP:  " & fpcep & "<br />"
	mostrarodapefp = mostrarodapefp & "FONE: " & fptelefone & "</strong><br />"
	mostrarodapefp = mostrarodapefp & "<strong>E-MAIL: <a href='mailto:" & fpemail & "'>" & fpemail & "</a></strong><br />"
	mostrarodapefp = mostrarodapefp & "<strong><a href='" & fpwebsite & "'>" & fpwebsite & "</a></strong>"
	mostrarodapefp = mostrarodapefp & "</p>"
	mostrarodapefp = mostrarodapefp & "</td>"
	mostrarodapefp = mostrarodapefp & "<!--<td align='center'>Desenvolvido por<br /> <strong><a href='http://www.legweb.com.br/' target='_blank'>LegWeb</a></strong></td>-->"
	mostrarodapefp = mostrarodapefp & "</tr>"
	mostrarodapefp = mostrarodapefp & "<td height='25' colspan='2' align='center' class='dir'>Copyright &copy; 2022 - " & fpnomereduzido & "  - Todos os Direitos Reservados</td>"		
	mostrarodapefp = mostrarodapefp & "</table>"   
	mostrarodapefp = mostrarodapefp & "</td>"

	response.write mostrarodapefp

end function


'rodape nas paginas do sistema
function mostrarodape()

	mostrarodape = "<div align='center'>"

	mostrarodape = mostrarodape & "<p><a href='' onclick='history.back(-1)'>Voltar</a> | <a href='default.asp?v=menuprincipal'>Mudar-Módulo</a> | <a href='controller.asp?function=ajax&entidade=logout'>Sair</a></p> "

	mostrarodape = mostrarodape & "<p>MicroCWS Tecnologia e Serviços | e-mail: microcwsadm.contato@gmail.com | Tel:(61)99523-3998</p>"

	mostrarodape = mostrarodape & "</div>"

	response.write mostrarodape

end function

'menu nas paginas do sistema
function mostramenu(parametro,funcao)
	
	mostramenu = "<div align='center'>"		

	select case parametro

		case "usuarios"

			select case funcao
				case "cadastrar"
					mostramenu = mostramenu & "<p> <a href='default.asp?v=usumenu'>Menu-Usuários</a> | "
					mostramenu = mostramenu & "<a href='default.asp?v=usulistagem'>Listar-Todos</a></p>"
				
				case "menu"
					mostramenu = mostramenu & "<p> <a href='default.asp?v=usucadastro'>Cadastrar-Novo</a> | "
					mostramenu = mostramenu & "<a href='default.asp?v=usulistagem'>Listar-Todos</a></p>"

				case "listar"
					mostramenu = mostramenu & "<p> <a href='default.asp?v=usucadastro'>Cadastrar-Novo</a> | "
					mostramenu = mostramenu & "<a href='default.asp?v=usumenu'>Menu-Usuários</a> |"

			end select
		
		case "ordensdeservico"

			select case funcao
				case "emitir"
					mostramenu = mostramenu & "<p> <a href='default.asp?v=osmenu'>Menu-Ordens-Serviço</a> | "
					mostramenu = mostramenu & "<a href='default.asp?v=oslistagem'>Listar-Todos</a></p>"
				
				case "menu"
					mostramenu = mostramenu & "<p> <a href='default.asp?v=osemissao'>Emitir-Nova</a> | "
					mostramenu = mostramenu & "<a href='default.asp?v=oslistagem'>Listar-Todos</a></p>"

				case "listar"
					mostramenu = mostramenu & "<p> <a href='default.asp?v=osemissao'>Emitir-Nova</a> | "
					mostramenu = mostramenu & "<p> <a href='default.asp?v=osmenu'>Menu-Usuários</a> |"

			end select
			
	end select

	mostramenu = mostramenu & "</div>"
	response.Write mostramenu

end function


%>