<!DOCTYPE html>
<html>
<head>
    <title>Listado de items</title>
    <style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    width: 100%;
    border-collapse: collapse;
}

#customers td, #customers th {
    font-size: 1em;
    border: 1px solid #98bf21;
    padding: 3px 7px 2px 7px;
}

#customers th {
    font-size: 1.1em;
    text-align: left;
    padding-top: 5px;
    padding-bottom: 4px;
    background-color: #A7C942;
    color: #ffffff;
}

#customers tr.alt td {
    color: #000000;
    background-color: #EAF2D3;
}
</style>

</head>
<body>


    <form name="input" action="list" method="get">
Busqueda!: <input type="text" name="query">
<input type="submit" value="Submit">
</form>
<h3>Pagina ${pagenumber} de ${paginastotal}
<br>
<g:if test="${sigpage == true}">
  
<button id="myButton" class="float-left submit-button" >Siguiente Pagina</button>

<script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        location.href = "http://localhost:8080/CustomView/items/list?query=${query}&pagenumber=${pagenumber+1}";
    };
</script>
</g:if>
<br>
<table id="customers">
  <tr>
    <th>Foto</th>
    <th>Nombre</th>
    <th>Vendedor</th>
    <th>Precio</th>
    <th>Estado</th>
    <th>Ciudad</th>
  </tr>
   <g:each status="ix" in="${results}" var="it">
<tr class="${ix % 2 ? '': 'alt'}">
    <td><img src="${it.thumbnail}"></td>

    <td><a href="http://localhost:8080/CustomView/items/view?query=${it.id}&busqueda=${it.busqueda}&pagenumber=$(pagenumber)">${it.title}</a></td>
    <td>${it.nombre_vendedor}</td>
    <td>${it.price}</td>
    <td>${it.condition}</td>
    <td>${it.address.state_name}</td>

  </tr>
    </g:each>
 
</table>
</body>
</html>