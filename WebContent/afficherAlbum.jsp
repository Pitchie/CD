<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Affichage d'un album</title>
        <link type="text/css" rel="stylesheet" href="inc/style.css" />
        <link type="text/css" rel="stylesheet" href="inc/bootstrap.css" />
    </head>
    <body>

        <%-- Affichage de la chaîne "message" transmise par la servlet --%>
        <p class="text-info">${ message }</p>
        <p class="text-info">${ acceuil }</p>
        <%-- Puis affichage des données enregistrées dans le bean "client" transmis par la servlet --%>
        <p><strong>Titre :</strong> ${ album.titre }</p>
        

    </body>
</html>