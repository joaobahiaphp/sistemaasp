<%

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

%>