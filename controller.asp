<!-- #include file="lib/library.asp" -->

<%

dim tarefa
dim funcao, modulo
dim senha, usuario
dim entidade,perfil,cpf,nome
dim cnpj,razao_social,id_organizacao

tarefa = request.form("function")

if isEmpty(session("token")) then
    if tarefa = "login" then
        %>
            <!--#include file="controller/ServletLogin.asp" -->
        <%
    else
	    response.redirect("default.asp")
    end if
else

    if tarefa = "login" then
	    response.redirect("default.asp?v=menuprincipal")
    end if

    select case tarefa

        case "tarefa"
            %>
                <!--#include file="controller/ServletTarefa.asp" -->
            <%
        case "insert"
            %>
                <!--#include file="controller/ServletInsert.asp" -->
            <%
        case "delete"
            %>
                <!--#include file="controller/ServletDelete.asp" -->
            <%
        case "update"
            %>
                <!--#include file="controller/ServletUpdate.asp" -->
            <%
    end select

    tarefa = null

    tarefa = request.querystring("function")

    select case tarefa
        case "ajax"
            %>
                <!--#include file="controller/ServletAjax.asp" -->
            <%
    end select


    tarefa = null

end if

%>