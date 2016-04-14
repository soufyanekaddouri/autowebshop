<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="jsp.Auto" %>
<%@page import="jsp.AutoLijst"  %>
<%@ page import=" java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
	<title>Eindopdracht</title>
	<link href = "style.css" rel = "stylesheet">
	<link href = "plane.css" rel = "stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
	<script src="jquery-1.12.3.min.js"></script>
</head>
<%
	AutoLijst  lijst = new AutoLijst();
	ArrayList<Auto> autos = lijst.getLijst();


//minimale en maximale prijs
	int minPrijs = 0;
	int maxPrijs = 0;


%>
<body>

<jsp:include page="includes/formulier.jsp" />


<section>

	<div class = "planes">
		<%
			// Zodra er nog niet op de knop is geklikt, laat dan alle autos zien.
			if (request.getParameter("submit") == null) {
				for (Auto auto: autos ) {
					out.println(" <div class = 'plane'> ");
					out.println("<h2 class = 'autoMerk' >" + auto.getMerk() + "  " + auto.getType() +  "</h2> <hr class = 'line'><img src = " + auto.getFoto()  + " class = 'foto'>");
					out.println("<br><p class = 'prijs'> " + "&euro;" + auto.getPrijs() + "</p></div>");
				}
			}

			if (request.getParameter("submit") != null) {

				if(request.getParameter("minimaalString") == null || request.getParameter("minimaalString").equals("")) {
					minPrijs = 0;
				} else {
					minPrijs = Integer.parseInt(request.getParameter("minimaalString"));
				}

				if(request.getParameter("maximaalString") == null || request.getParameter("maximaalString").equals("")) {
					maxPrijs = 10000000;
				} else {
					maxPrijs = Integer.parseInt(request.getParameter("maximaalString"));
				}

				if (request.getParameter("autoMerken").equals("alle")) {

					for (Auto auto: lijst.getMerkenMinMax(request.getParameter("autoMerken") , minPrijs, maxPrijs) ) {
						out.println(" <div class = 'plane'> ");
						out.println("<h2 class = 'autoMerk' >" + auto.getMerk() + "  " + auto.getType() +  "</h2> <hr class = 'line'><img src = " + auto.getFoto()  + " class = 'foto'>");
						out.println("<br><p class = 'prijs'> " + "&euro;" + auto.getPrijs() + "</p></div>");   }
				}

				}  else {


			}

		%>
	</div>
</section>

</body>
</html>

