<%-- $Id: menu.jsp 2180 2013-03-11 15:46:45Z gardino $ --%>

<%@page trimDirectiveWhitespaces="true"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<div>
<a href="telaCliente"  class="btn btn-primary"> Cadastro de Clientes</a>

<a href="telaFornecedor" class="btn btn-primary">Cadastro de Fornecedores </a>

<a href="telaProduto" class="btn btn-primary">Cadastro de Produtos</a>

<a href="telaPedido" class="btn btn-primary">Cadastro de Pedidos </a>

</div>
