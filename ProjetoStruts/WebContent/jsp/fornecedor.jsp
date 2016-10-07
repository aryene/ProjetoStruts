<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:insertDefinition name="padrao">

<tiles:putAttribute name="corpo">


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
	</div>
	</tiles:putAttribute>
	</tiles:insertDefinition>
	
