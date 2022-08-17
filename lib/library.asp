<%

function buscarEmpresa(cnpj)

    dim rot,dblocal,strCon,conn,rs

    rot = "select id from pessoas_cpf_cnpj where cnpj = '"&cnpj&"'"

    dblocal = "d:/DZHosts/LocalUser/microcws01/www.microcwsadm.somee.com/z_wxbancodedadosxw_z/db4dm1n1str4t1v0bd.accdb"
    strCon = "Driver={Microsoft Access Driver (*.mdb, *.accdb)};Dbq=" & dblocal

    set conn = Server.CreateObject("ADODB.Connection")
    conn.Open strCon

    set rs = Server.CreateObject("ADODB.Recordset")
    rs.Open rot,conn,2,3

    Do While not rs.EOF
        buscarEmpresa = rs.Fields("id")
        rs.MoveNext
    Loop

    conn.Close

end function


function inserirPessoa(cpf,nome,email,telefone)

	dim rot
	dim dblocal, strCon
	dim conn
	dim rs


    rot = "insert into pessoas_cpf_cnpj (cpf_cnpj,nome_razao_social,email,telefone)"
    rot = rot & "values('"&cpf&"','"&nome&"','"&email&"','"&telefone&"')"

    dblocal = "d:/DZHosts/LocalUser/microcws01/www.microcwsadm.somee.com/z_wxbancodedadosxw_z/db4dm1n1str4t1v0bd.accdb"
    strCon = "Driver={Microsoft Access Driver (*.mdb, *.accdb)};Dbq=" & dblocal

    set conn = Server.CreateObject("ADODB.Connection")
    
    set rs = Server.CreateObject("ADODB.Recordset")
    conn.Open strCon
    rs.Open rot,conn,3,3
    'rs.Close
    conn.Close
	
end function

function inserirOrganizacao(cnpj,razaosocial,email,telefone)

	dim rot
	dim dblocal, strCon
	dim conn
	dim rs


    rot = "insert into pessoas_cpf_cnpj (cpf_cnpj,nome_razao_social,email,telefone)"
    rot = rot & "values('"&cnpj&"','"&razaosocial&"','"&email&"','"&telefone&"')"

    dblocal = "d:/DZHosts/LocalUser/microcws01/www.microcwsadm.somee.com/z_wxbancodedadosxw_z/db4dm1n1str4t1v0bd.accdb"
    strCon = "Driver={Microsoft Access Driver (*.mdb, *.accdb)};Dbq=" & dblocal

    set conn = Server.CreateObject("ADODB.Connection")
    
    set rs = Server.CreateObject("ADODB.Recordset")
    conn.Open strCon
    rs.Open rot,conn,3,3
    'rs.Close
    conn.Close
	
end function


function inserirUsuario(usuario,senha,perfil,nome,cpf)

	dim rot
	dim dblocal, strCon
	dim conn
	dim rs


    rot = "insert into usuarios (usuario,senha,perfil,id_pessoa)"
    rot = rot & "values('"&usuario&"','"&senha&"','"&perfil&"','"&nome&"','"&cpf&"')"

    dblocal = "d:/DZHosts/LocalUser/microcws01/www.microcwsadm.somee.com/z_wxbancodedadosxw_z/db4dm1n1str4t1v0bd.accdb"
    strCon = "Driver={Microsoft Access Driver (*.mdb, *.accdb)};Dbq=" & dblocal

    set conn = Server.CreateObject("ADODB.Connection")
    
    set rs = Server.CreateObject("ADODB.Recordset")
    conn.Open strCon
    rs.Open rot,conn,3,3
    'rs.Close
    conn.Close

end function

%>