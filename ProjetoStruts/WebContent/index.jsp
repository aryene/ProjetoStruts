<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page trimDirectiveWhitespaces="true"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<tiles:insertDefinition name="padrao">

<tiles:putAttribute name="corpo">
 <img src="depoimento1.png" alt="Depoimento 1">
 
 <img src="<c:url value="etc/images/empresa.jpg" />" />
 
 <img alt="logo" src="/images/empresa.jpg"/>
 
<!-- Begin page content -->
    <div class="container">
      <div class="page-header">
        <h1>InovarTec Bem vindo</h1>
      </div>
    </div>
    <div class="tab-content" style="margin-top: 70px;">
	<div class="tab-pane active" id="">
		<div class="panel panel-default">
			<div class="panel-body">
				<div id="myCarousel" class="carousel slide">
					<div class="carousel-inner" align="center">
						<div class="active item">
							<img src="${pageContext.request.contextPath}/etc/img/depoimento1.png" alt="Depoimento 1"> 
						</div>
						<div class="item">
							<img src="/images/2slide.jpg" />
						</div>
						<div class="item">
							<img src="/images/3slide.jpg" />
						</div>
						<div class="item">
							<img src="/images/4slide.jpg" />
						</div>
					</div>
					<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a> <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
				</div>
			</div>
		</div>
   </div>
   </div>
   
    

 </tiles:putAttribute>
</tiles:insertDefinition>



