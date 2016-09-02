<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Produto</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<br>
		<s:form namespace="/produto" action="cadastraProduto"
			class="form-horizontal">
			<div class="form-group">
				<label class="col-sm-2 control-label">Descricao:</label>
				<div class="col-sm-10">
					<input type="text" name="produto.descricao" class="form-control">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Valor:</label>
				<div class="col-sm-10">
					<input type="text" name="produto.valor" class="form-control">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Fornecedor do Produto:</label>
				<div class="col-sm-10">
					<select class="form-control" name="produto.fornecedor.id">
						<c:forEach items="${listaFornecedor}" var="f">
							<option value="${f.id}">${f.nome}</option>
							<br>
						</c:forEach>
					</select>

				</div>
			</div>


			<div align="center">
				<input type="submit" class="btn btn-primary"
					value="Cadastra Fornecedor "> <a href="inicio"
					class="btn btn-success">Voltar </a>
			</div>
		</s:form>


		<c:if test="${mensagem != null}">
			<div class="alert alert-warning" role="alert">
				<span class="glyphicon glyphicon-exclamation-sign"
					aria-hidden="true"></span> ${mensagem}
			</div>
		</c:if>

		<s:actionmessage cssClass="alert alert-success" />

		<s:form namespace="/produto" action="pesquisarProdutoNome">
			<div class="input-group" align="center">
				<input type="text" class="form-control" name="produto.descricao"
					placeholder="Nome Produto">
				<div class="input-group-btn">
					<button class="btn btn-default glyphicon glyphicon-search"
						type="submit"></button>
				</div>
			</div>
		</s:form>

		<br> <br>

		<%-- <c:forEach items="${listaProduto}" var="produto">
		${produto.descricao } 
		<br>
		</c:forEach> --%>

		<c:if test="${produto != null}">



			<table class="table table-bordered">
				<thead>
					<tr>
						<th>id</th>
						<th>Produto</th>
						<th>Valor Unitario</th>
						<th>Editar</th>
						<th>Excluir</th>
					</tr>
				</thead>
				<tbody>
					<c:set var="cont" value="0"></c:set>
					<c:forEach items="${listaProduto}" var="p" varStatus="i">
						<tr>
							<td>${p.id}</td>
							<td>${p.descricao}</td>
							<td>${p.valor}</td>
							<td><button type="button" class="btn btn-default btn-lg">
									<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
								</button></td>  
							<td><button type="button" class="btn btn-default btn-lg">
									<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
								</button></td>
						</tr>

					</c:forEach>
				</tbody>

			</table>
		</c:if>

	</div>
	</div>
</body>
</html>