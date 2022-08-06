<!-- #include file="lib/lib.asp" -->

<%

dim fpdescription, fpauthor, fpkeyword
fpdescription = "servi&ccedil;os de apoio administrativo conexos com outros servi&ccedil;os em tecnologia"
fpauthor  = "joao paulo bahia"
fpkeyword = "tecnologia servi&ccedil;os rh analise"

dim parametro

parametro = request.QueryString("v")

if isEmpty(parametro) then

	%>
		<!-- #include file="views/frontpage/index.asp"-->
	<%

else

    select case parametro

        'login - autenticacao

        case "lgnautenticacao"

            %>
                <!-- #include file="views/login.asp" -->
            <%


        'front page - website .

        case "webservicos"
            %>
                <!-- #include file="views/frontpage/servicos.asp"-->
            <%
        case "webcontatos"
            %>
                <!-- #include file="views/frontpage/contatos.asp"-->
            <%

        case "webequipe"
            %>
                <!-- #include file="views/frontpage/equipe.asp"-->
            <%

        case "webinformes"
            %>
                <!-- #include file="views/frontpage/informes.asp"-->
            <%

        case "webinstalacoes"
            %>
                <!-- #include file="views/frontpage/instalacoes.asp"-->
            <%

    end select

    if not isEmpty(session("token")) then

        select case parametro

            'menu principal

            case "menuprincipal"
                %>
                    <!-- #include file="views/menu.asp" -->
                <%

            'emissao e atualizacao de ordens de servico.

            case "osemissao"
                %>
                    <!-- #include file="views/ordemservico/emitirordemservico.asp"-->
                <%

            case "osatualizacao"
                %>
                    <!-- #include file="views/ordemservico/atualizarordemservico.asp"-->
                <%

            case "oslistagem"
                %>
                    <!-- #include file="views/ordemservico/listarordemservico.asp"-->
                <%

            case "osmenu"
                %>
                    <!-- #include file="views/ordemservico/menuordemservico.asp"-->
                <%

            'cadastro de um novo usuario

            case "usucadastro"
                %>
                    <!-- #include file="views/usuarios/cadastrarusuario.asp"-->
                <%
                
            case "usuatualizacao"
                %>
                    <!-- #include file="views/usuarios/atualizarusuario.asp"-->
                <%

            case "usulistagem"
                %>
                    <!-- #include file="views/usuarios/listarusuario.asp"-->
                <%

            case "usumenu"
                %>
                    <!-- #include file="views/usuarios/menuusuarios.asp"-->
                <%

        end select 
    end if

end if

%>