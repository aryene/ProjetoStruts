<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:insertDefinition name="padrao">

<tiles:putAttribute name="corpo">
 <img src="depoimento1.png" alt="Depoimento 1">
 
 <img src="<c:url value="/img/empresa.jpg" />" />
 
<!-- Begin page content -->
    <div class="container">
      <div class="page-header">
        <h1>InovarTec Bem vindo</h1>
      </div>
    </div>
    
    
    <section id="depoimentos">

		<h2 class="container titulo-depoimentos">Depoimentos de Clientes</h2>

		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<figure class="item active">
					<img src="etc/img/depoimento1.png" alt="Depoimento 1">
					<figcaption class="carousel-caption">
						<h3>Yuri Padilha</h3>
						<p>Gostei muito e achei rápido o serviço.</p>
					</figcaption>
				</figure>
				<figure class="item">
					<img src="etc/img/depoimento2.png" alt="Depoimento 2">
					<figcaption class="carousel-caption">
						<h3>Fernando Stafaneni</h3>
						<p>Excelente trabalho.</p>
					</figcaption>
				</figure>
				<figure class="item">
					<img src="etc/img/depoimento3.png" alt="Depoimento 3">
					<figcaption class="carousel-caption">
						<h3>Caio Sauzas</h3>
						<p>Gostei, competência em primeiro lugar.</p>
					</figcaption>
				</figure>
			</div>

			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</section>
   
    

 </tiles:putAttribute>
</tiles:insertDefinition>



