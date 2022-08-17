<%

dim usu

usu = request.querystring("usu")

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/modelo.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="Author" content="legweb@gmail.com" />
<meta name="description" content="RR ASSESSORIA EMPRESARIAL LTDA - Visa atender as necessidades no Ã¢mbito jurÃ­dico e administrativo junto a instituiÃ§Ãµes oficiais em BrasÃ­lia - DF." />
<meta name="KeyWords" CONTENT="RR ASSESSORIA EMPRESARIAL LTDA, BrasÃ­lia - DF, DF, JurÃ­dico, Administrativo, InstituiÃ§Ãµes Oficiais" />

<!-- InstanceBeginEditable name="doctitle" -->
<title>RR Empresarial</title>
<!-- InstanceEndEditable -->
<style type="text/css">
<!--

@import 'CSS/layout.css';

-->
</style>
<!-- InstanceBeginEditable name="head" -->
<script type="text/javascript" src="JS/verificaContato.js"></script>
<script type="text/javascript">
function mascara(o,f){
    v_obj=o
    v_fun=f
    setTimeout("execmascara()",1)
}

function execmascara(){
    v_obj.value=v_fun(v_obj.value)
}

function leech(v){
    v=v.replace(/o/gi,"0")
    v=v.replace(/i/gi,"1")
    v=v.replace(/z/gi,"2")
    v=v.replace(/e/gi,"3")
    v=v.replace(/a/gi,"4")
    v=v.replace(/s/gi,"5")
    v=v.replace(/t/gi,"7")
    return v
}

function soNumeros(v){
    return v.replace(/\D/g,"")
}

function telefone(v){
    v=v.replace(/\D/g,"")                 //Remove tudo o que nÃ£o Ã© dÃ­gito
    v=v.replace(/^(\d\d)(\d)/g,"($1) $2") //Coloca parÃªnteses em volta dos dois primeiros dÃ­gitos
    v=v.replace(/(\d{4})(\d)/,"$1-$2")    //Coloca hÃ­fen entre o quarto e o quinto dÃ­gitos
    return v
}

</script>
<!-- InstanceEndEditable -->
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <% call menufp()  %>
  <tr>
    <td height="95"><table class="logo" width="620" height="95" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="140"><img src="IMG/empresa/logo.jpg" width="385" height="85" /></td>
        <td width="480">&nbsp;</td>
      </tr>

        </table></td>
  </tr>
  <tr>
    <td><table class="conteudo" width="620" border="0" align="center" cellpadding="0" cellspacing="20" bgcolor="#FFFFFF" >
      <!-- InstanceBeginEditable name="Corpo" -->
      <tr>
        <td width="440" ><img src="IMG/icone.gif" width="28" height="26" /></td>
        <td width="1500" class="icone">AUTENTICA&Ccedil;&Atilde;O</td>
      </tr>
      <tr>
        <td colspan="2">


<% call formauth(usu) %>

</td>
      </tr>
      <!-- InstanceEndEditable -->
    </table></td>
  </tr>
  
  <tr>
        <% call mostrarodapefp()  %>
  </tr>
</table>
</body>
<!-- InstanceEnd --></html>

