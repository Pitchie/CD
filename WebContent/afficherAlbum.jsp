<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Affichage d'un album</title>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css" />

    </head>
    <body>
    <div class="container"> 
	<nav class="navbar navbar-inverse">
	  <div class="navbar-inner">
	    <div class="container">
	      <ul class="nav">
	        <li> <a href="creerAlbum.jsp">Acceuil</a> </li>
	        <li> <a href="creerAlbum.jsp">Ajout d'un Album</a> </li>
	        <li> <a href="gererAlbum.jsp">Gestion des Albums</a> </li>
	      </ul>
	    </div>
	  </div>
	</nav>
        <%-- Affichage de la chaîne "message" transmise par la servlet --%>
        <p class="text-info">${ message }</p>
        <p class="text-info">${ acceuil }</p>
        <%-- Puis affichage des données enregistrées dans le bean "client" transmis par la servlet --%>
        <p><strong>Titre :</strong> ${ album.titre }</p>
        
        
        </div>

    </body>
</html>