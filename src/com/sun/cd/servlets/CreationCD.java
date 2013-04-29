package com.sun.cd.servlets;

import java.io.IOException;

import com.sun.cd.beans.Album;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreationCD extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

    String titre = request.getParameter( "titre" );
//    String categorie = request.getParameter( "categorie" );

    String acceuil;
    String message;
    acceuil = " Retour page acceuil! <a href=\"creerCD.jsp\">Ajout d'album</a>";
    
    if ( titre.trim().isEmpty()) {
        message = "Erreur - Vous n'avez pas rempli tous les champs obligatoires. <br> <a href=\"creerCD.jsp\">Cliquez ici</a> pour accéder au formulaire de création des Albums.";
    } else {
        message = "CD créé avec succès ! <br> <a href=\"gererCD.jsp\">Cliquez ici</a> pour accéder à la gestion des Albums.";
    }

    Album album = new Album();
    album.setTitre( titre );
//    album.setCategorie( categorie );

    request.setAttribute( "acceuil", acceuil);
    request.setAttribute( "album", album );
    request.setAttribute( "message", message );


    this.getServletContext().getRequestDispatcher( "/afficherAlbum.jsp" ).forward( request, response );
	}
}