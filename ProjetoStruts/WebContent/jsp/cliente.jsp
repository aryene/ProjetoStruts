<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:insertDefinition name="padrao">

<tiles:putAttribute name="corpo">


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
  
	<div class="container">
		<s:form namespace="/cliente" action="cadastraCliente"
			cssClass="form-horizontal">
			<div class="form-group">
				<label class="col-sm-2 control-label">Nome:</label>
				<div class="col-sm-10">
					<input type="text" name="cliente.nome" required="required"
						class="form-control">
					<%--       <s:textfield  type="text" name="cliente.nome" required="required" cssClass="form-control" />
 --%>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">CPF:</label>
				<div class="col-sm-10">
					<input type="text" name="cliente.cpf" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">CNPJ:</label>
				<div class="col-sm-10">
					<input type="text" name="cliente.cnpj" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Tipo Cliente:</label>
				<div class="col-sm-10">
					<input type="text" name="cliente.tipoCliente" class="form-control">
				</div>
			</div>
			<div align="center">
				<input type="submit" class="btn btn-primary"
					value="Cadastra Usuario "> <a href="inicio"
					class="btn btn-success">Voltar </a>
			</div>
		</s:form>

		<s:actionmessage cssClass="alert alert-success" />


		<!-- <form action="pesquisarCliente" method="post">
			<input type="submit" value="Pesquisar Geral"  >
			
	</form>  -->

		<br>
		<br>

		<!-- <form action="pesquisarClienteNome" method="post">
		Nome:<input type="text" required="required" name="nome" >
			<input type="submit" value="Pesquisar"  >
			
	</form>  -->


		<s:form namespace="/cliente" action="pesquisarClienteNome">
			<div class="input-group" align="center">
				<input type="text" class="form-control" name="cliente.nome"
					placeholder="Nome Cliente">
				<div class="input-group-btn">
					<button class="btn btn-default glyphicon glyphicon-search"
						type="submit"></button>
				</div>
			</div>
		</s:form>

		<br>
		<br>

		<c:forEach items="${listaCliente}" var="cliente">
		${cliente.nome } - ${cliente.cpf } 
		<br>
		</c:forEach>


	</div>
	
 </tiles:putAttribute>
</tiles:insertDefinition>

