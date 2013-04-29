
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head> 
        <meta charset="utf-8" />
        <title>Création d'un album</title>
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
        <div>
            <form method="get" action="creationCD">
                <fieldset>
                    <legend>Informations Album</legend>
                            <div class="span5">
    <div class="control-group">
      <div class="controls">
                    <label for="titre">Titre <span class="requis">*</span></label>
                    <input type="text" placeholder="Tapez le titre de l'Album" id="titre" name="titre" value="" size="20" maxlength="20" />
                    <div class="alert alert-error hide">
          <h4 class="alert-heading">Erreur !</h4>
          Vous devez entrer un nom d'Album ! </div>
      </div>
            </div>
            </div>
                 </fieldset>  
                 <button type="button" class="btn btn-primary" data-loading-text="Chargement en cours...">Chargez l'image !</button>
				<img id="mon_image">
                <button type="submit" class="btn">Valider</button>
                <button type="reset" class="btn">Remettre à zéro</button>    
                    </form>  
        </div>
                </div>
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
<script>
  $(function(){
    $("form").on("submit", function(){
    if($("input").val().length < 1){
            $("div.control-group").addClass("error");
        $("div.alert").show("slow").delay(4000).hide("slow");
        return false;
    }
    });
  });
</script>
    </body>
</html>