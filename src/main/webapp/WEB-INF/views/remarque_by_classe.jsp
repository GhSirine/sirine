<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Eleves</title>
<%@ include file="/include/js.jsp" %>

</head>
<body >
<%@ include file="/include/header.jsp" %>
<c:if test="${!empty P}">
<table id="restable">

	  <thead>
	  	<tr>
	  	<th colspan='3'> La liste des �l�ves } </th>
	  </tr>
	  <tr>
	    <th>Nom & Pr�nom</th>
	    <th>Date naissance</th>
	    <th>Plus</th>
	  </tr>
	</thead>
	<tbody>
	    <c:forEach items="${P}" var="person">
        <tr class="htmw">
            <td>${person.nom}  ${person.prenom}</td>
            <td>${person.dateNaissance}</td>
            <td><a href="<c:url value='http://localhost:8080/spring/remarque/details/${person.id}' />" >Voir Profil</a></td>
            
        </tr>
    </c:forEach>
	 
	 
	</tbody>
	</table>
	</c:if>
</body>
</html>