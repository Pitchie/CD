
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head> 
        <meta charset="utf-8" />
        <title>Création d'un album</title>
        <link type="text/css" rel="stylesheet" href="inc/bootstrap.css" />
    </head>
    <body>
        <div>
            <form method="get" action="creationCD">
                <fieldset>
                    <legend>Informations album</legend>
     
                    <label for="titre">Titre <span class="requis">*</span></label>
                    <input type="text" placeholder="Tapez le titre du CD" id="titre" name="titre" value="" size="20" maxlength="20" />
                </fieldset>
                <button type="submit" class="btn">Valider</button>
                <button type="reset" class="btn">Remettre à zéro</button>
            </form>
        </div>
    </body>
</html>