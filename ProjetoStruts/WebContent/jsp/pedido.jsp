<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:insertDefinition name="padrao">

<tiles:putAttribute name="corpo">


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>


<script type="text/javascript">
            $(function () {
     
                $('#datepicker').datepicker();
            });
        </script>


<div class="container">
<br>
	<c:if test="${pedido == null}">
	
<form action="cadastraPedido" class="form-horizontal" method="post">
 
 <div class="form-group">
  	<label class="col-sm-2 control-label">Cliente:</label>
 <div class="col-sm-10">
            <select class="form-control" name="cliente.id"  >
      <c:forEach items="${listaCliente}" var="c">
		<option value="${c.id}" >${c.nome}</option>
		<br>
      </c:forEach>
      </select> 
  </div>
</div>
 <div class="form-group">
  	<label class="col-sm-2 control-label">Data:</label>
 	 <div class="col-sm-10">
         <input type="text" name="data" id="datepicker"  class="form-control" />
  </div>
</div>	


	<div align="center">
<input type="submit" class="btn btn-primary" value="Cadastra Pedido "  >
<a href="index" class="btn btn-success" >Voltar </a>
</div>
</form>

	</c:if>

 

      		 
	
	<c:if test="${pedido != null}">


${pedido.data}


<table class="table table-bordered">
 <thead>
        <tr>
          <th>id</th>
          <th>Produto</th>
          <th>Valor Unitario</th>
          <th>Quantidade</th>
          <th>Add</th>
        </tr>
      </thead>
      <tbody>
      <c:set var="cont" value="0" ></c:set>
      <c:forEach items="${listaProduto}" var="p">
      	<tr>
      	<form action="adicionaItemPedido">
      		<td>${p.id}</td>
      		<td>${p.descricao}</td>
      		<td>${p.valor}</td>
      		<td><input type="text" name="quantidade"> </td>
      		<td><input type="submit" value="Comprar" > </td>
      		<input type="hidden" name="pk.pedidoId" value="${pedido.id}" >
   			<input type="hidden" name="pk.produtoId" value="${p.id}" >
       		</form> 
      	</tr>
      		${cont }---conta
      	<c:set var="cont" value="${cont+1 }" ></c:set>
      
      </c:forEach>
      </tbody>
  
</table








<c:forEach items="${pedido.itemPedidos}" var="lp">
${lp.produto.descricao } pedidos Cadastrados
</c:forEach>

	<div align="center">
<a href="index" class="btn btn-success" >Voltar </a>
</div>

 </c:if>
 
 	<c:if test="${pedido != null}">
 
 <form action="adicionaPedidoGeral">

	 <table class="table table-bordered">
	 <thead>
	        <tr>
	          <th>id</th>
	          <th>Produto</th>
	          <th>Valor Unitario</th>
	          <th>Quantidade</th>
	        </tr>
	      </thead>
	      <tbody>
	      <c:set var="cont" value="0" ></c:set>
	      <c:forEach items="${listaProduto}"  var="p" varStatus="i">
	      	<tr>
	       		<td>${p.id}</td>
	      		<td>${p.descricao}</td>
	      		<td>${p.valor}</td>
	      		<td><input type="text" name="itemPedidos[${i.index}].quantidade"> </td>
	   			<input type="hidden" name="itemPedidos[${i.index}].pk.pedidoId" value="${pedido.id}" >
	   			<input type="hidden" name="itemPedidos[${i.index}].pk.produtoId" value="${p.id}" >
	       		</form> 
	      	</tr>
	   
	      </c:forEach>
	      </tbody>
	  
	</table> 
	<input type="hidden" name="id" value="${pedido.id}" >
	<input type="hidden" name="cliente.id" value="${pedido.cliente.id}" >
	<input type="submit" value="Compra Geral" > s${pedido.id}
	
	</form>
 </c:if>
 
 
 </div>
 </tiles:putAttribute>
 </tiles:insertDefinition>
 
 
 
 
