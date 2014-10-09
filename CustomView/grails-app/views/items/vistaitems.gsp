<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Vista Items</title>
<link rel="stylesheet" type="text/css" href="http://demo.oscommerce.com/ext/jquery/ui/redmond/jquery-ui-1.11.0.min.css" />
<script type="text/javascript" src="http://demo.oscommerce.com/ext/jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="http://demo.oscommerce.com/ext/jquery/ui/jquery-ui-1.11.0.min.js"></script>


<script type="text/javascript" src="http://demo.oscommerce.com/ext/photoset-grid/jquery.photoset-grid.min.js"></script>

<link rel="stylesheet" type="text/css" href="http://demo.oscommerce.com/ext/colorbox/colorbox.css" />
<script type="text/javascript" src="http://demo.oscommerce.com/ext/colorbox/jquery.colorbox-min.js"></script>

<link rel="stylesheet" type="text/css" href="http://demo.oscommerce.com/ext/960gs/960_24_col.css" />
<link rel="stylesheet" type="text/css" href="http://demo.oscommerce.com/stylesheet.css" />

<link rel="search" type="application/opensearchdescription+xml" href="http://demo.oscommerce.com/opensearch.php" title="osCommerce Demo" />

</head>
<body>
<button id="myButton" class="float-left submit-button" >Volver Home</button>

<script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        location.href = "http://localhost:8080/CustomView/items/list?query=${busqueda}";
    };
</script>
  <form name="input" action="list" method="get">
Busqueda!: <input type="text" name="query">
<input type="submit" value="Submit">
</form>
<div id="bodyWrapper" class="container_24">

<div class="grid_24">
</div>
<div id="header" class="grid_24">

<script type="text/javascript">
  $("#headerShortcuts").buttonset();
</script>
</div>




<div id="bodyContent" class="grid_16 push_4">

<form name="cart_quantity" action="http://demo.oscommerce.com/product_info.php?products_id=1&amp;action=add_product" method="post">
<div>
  <h1 style="float: right;">${currency_id} ${price}</h1>
  <h1>${title}<br /><span class="smallText">[${id}</span></h1>
</div>

<div class="contentContainer">
  <div class="contentText">


    <div id="piGal">
      <img src="${pictures.get(0).url}" alt=${title} title=${title} width="100" height="80" />    </div>


<script type="text/javascript">
$(function() {
  $('#piGal').css({
    'visibility': 'hidden'
  });

  $('#piGal').photosetGrid({
    layout: '1',
    width: '250px',
    highresLinks: true,
    rel: 'pigallery',
    onComplete: function() {
      $('#piGal').css({ 'visibility': 'visible'});

      $('#piGal a').colorbox({
        maxHeight: '90%',
        maxWidth: '90%',
        rel: 'pigallery'
      });

      $('#piGal img').each(function() {
        var imgid = $(this).attr('id').substring(9);

        if ( $('#piGalDiv_' + imgid).length ) {
          $(this).parent().colorbox({ inline: true, href: "#piGalDiv_" + imgid });
        }
      });
    }
  });
});
</script>

${descripcion_posta}



    <div style="clear: both;"></div>


  </div>




  <br />

  

   


</div>

</form>


</div> <!-- bodyContent //-->












<script type="text/javascript">
$('.productListTable tr:nth-child(even)').addClass('alt');
</script>

</div> <!-- bodyWrapper //-->

<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-18245216-7']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>

</body>
</html>