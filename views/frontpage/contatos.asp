<%
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
   <!-- InstanceBegin template="/Templates/modelo.dwt" codeOutsideHTMLIsLocked="false" -->
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
      <meta name="Author" content="<% =fpauthor %>" />
      <meta name="description" content="<% =fpdescription %>" />
      <meta name="KeyWords" CONTENT="<% =fpkeyword %>" />
      <% call handerTagManager("GTM-PBZGG2B") %>
      <% call handerPixel("1529724764096280") %>
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
            <td height="95">
               <table class="logo" width="620" height="95" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                     <td width="140"><img src="IMG/empresa/logo.jpg" width="385" height="85" /></td>
                     <td width="480">&nbsp;</td>
                  </tr>
               </table>
            </td>
         </tr>
         <tr>
            <td>
               <table class="conteudo" width="620" border="0" align="center" cellpadding="0" cellspacing="20" bgcolor="#FFFFFF" >
                  <!-- InstanceBeginEditable name="Corpo" -->
                  <tr>
                     <td width="440" ><img src="IMG/icone.gif" width="28" height="26" /></td>
                     <td width="1500" class="icone">CONTATOS</td>
                  </tr>
                  <tr>
                     <td colspan="2">
                        <p align="left">Preencha os campos abaixo e entre em contato conosco! </p>
                        <form action="PHP/envia.php" method="post" name="contatos" id="contatos" onsubmit="return checa_formulario(this)">
                           <table cellspacing="0" cellpadding="0" width="450" align="left" border="0">
                              <tbody>
                                 <tr>
                                    <td align="left" width="45" height="30"><label>*Nome:</label>                  </td>
                                    <td width="314" height="30" align="left"><input class="form" id="nome" size="49" name="nome" />
                                       </label>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td width="45" height="30" align="left"><label>*E-mail:</label></td>
                                    <td height="30" align="left"><input class="form" size="49" name="email"  /></td>
                                 </tr>
                                 <tr>
                                    <td width="45" height="30" align="left"><label>Telefone:</label>                  </td>
                                    <td height="30" align="left"><input class="form" size="49" name="fone" onkeypress="mascara(this,telefone)" />                  </td>
                                 </tr>
                                 <tr>
                                    <td width="45" height="30" align="left"><label>Cidade:</label>                  </td>
                                    <td height="30" align="left"><input class="form" size="49" name="cidade" />
                                       </div>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td width="45" height="30" align="left"><label>Estado:</label></td>
                                    <td height="30" align="left">
                                       <select class="form" name="estado">
                                          <option value=" " selected="selected">Selecione...</option>
                                          <option value="AC">AC</option>
                                          <option value="AL">AL</option>
                                          <option value="AM">AM</option>
                                          <option value="AP">AP</option>
                                          <option value="BA">BA</option>
                                          <option value="CE">CE</option>
                                          <option value="DF">DF</option>
                                          <option value="ES">ES</option>
                                          <option value="GO">GO</option>
                                          <option value="MA">MA</option>
                                          <option value="MG">MG</option>
                                          <option value="MS">MS</option>
                                          <option value="MT">MT</option>
                                          <option value="PA">PA</option>
                                          <option value="PB">PB</option>
                                          <option value="PE">PE</option>
                                          <option value="PI">PI</option>
                                          <option value="PR">PR</option>
                                          <option value="RJ">RJ</option>
                                          <option value="RN">RN</option>
                                          <option value="RO">RO</option>
                                          <option value="RR">RR</option>
                                          <option value="RS">RS</option>
                                          <option value="SC">SC</option>
                                          <option value="SE">SE</option>
                                          <option value="SP">SP</option>
                                          <option value="TO">TO</option>
                                       </select>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td width="45" height="30" align="left"><label>*Assunto:</label>                  </td>
                                    <td height="30" align="left"><input class="form" size="49" name="assunto" />                  </td>
                                 </tr>
                                 <tr>
                                    <td width="45" height="30" align="left"><label>*Mensagem:</label></td>
                                    <td height="30" align="left"><textarea class="form" name="comentario" rows="4" cols="50"></textarea>                  </td>
                                 </tr>
                                 <tr>
                                    <td height="30">&nbsp;</td>
                                    <td height="30" id="obs">*Campos Obrig&aacute;torios </td>
                                 </tr>
                                 <tr>
                                    <td height="24" colspan="2" align="center" valign="middle"><label><br />
                                       <input class="form" id="enviar" type="submit" value="Enviar Informa&ccedil;&otilde;es" name="enviar" />
                                       &nbsp;</label>                    <input name="limpar" type="reset" class="form" id="limpar" value="Limpar Formul&aacute;rio" />
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                        </form>
                     </td>
                  </tr>
                  <!-- InstanceEndEditable -->
               </table>
            </td>
         </tr>
         <tr>
            <% call mostrarodapefp()  %>
         </tr>
      </table>
   </body>
   <!-- InstanceEnd -->
</html>