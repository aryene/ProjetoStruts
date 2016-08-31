<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fornecedor</title>
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
		<s:form namespace="/fornecedor" action="cadastraFornecedor" class="form-horizontal">
			<div class="form-group">
				<label class="col-sm-2 control-label">Nome:</label>
				<div class="col-sm-10">
					<input type="text" name="fornecedor.nome"
						class="form-control">
				</div>
			</div>

			<div align="center">
				<input type="submit" class="btn btn-primary"
					value="Cadastra Fornecedor "> <a href="inicio"
					class="btn btn-success">Voltar </a>
			</div>
		</s:form>


		<s:actionmessage cssClass="alert alert-success" />
		
		
		<s:form namespace="/fornecedor" action="pesquisarFornecedorNome">
			<div class="input-group" align="center">
				<input type="text" class="form-control" name="fornecedor.nome"
					placeholder="Nome Fornecedor">
				<div class="input-group-btn">
					<button class="btn btn-default glyphicon glyphicon-search"
						type="submit"></button>
				</div>
			</div>
		</s:form>

		<br>
		<br>

		<c:forEach items="${listaFornecedor}" var="fornecedor">
		${fornecedor.nome }
		<br>
		</c:forEach>
	
	
</body>
</html>