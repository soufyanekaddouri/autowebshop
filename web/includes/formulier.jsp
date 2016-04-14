<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<div class = "filteren">
<form action = "index.jsp" method = "get">
Minimum Prijs: <input type = "text"  name = "minimaalString" placeholder="minimale prijs">
Maximum Prijs: <input type = "text"  name = "maximaalString" placeholder="maximale prijs">

<div class = "space"> </div>

<select name = "autoMerken">
    <option value = "alle">Alle merken</option>
    <option value = "Ford">Ford</option>
    <option value = "Opel">Opel</option>
    <option value = "Subaru">Subaru</option>
    <option value = "Mercedes">Mercedes</option>
    <option value = "Ferrari">Ferrari</option>
    <option value = "Citroen">Citroen</option>
    <option value = "Mini">Mini Cooper</option>
</select> 

<input type = "submit" name = "submit"  value = "zoeken">
</form>
</div>