
<!DOCTYPE html>
<html>
  <head>
    <title>BOOK Search</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
     
      .ui-autocomplete-row:hover
      {
        background-color: #ddd;
      }
    </style>
  </head>
  <body style="background-color:black ;">
    <br />
    <br />
    <div class="container">
      <h2 align="center" style="text-shadow:0.6cm ;color:white">Books Search</h2>
      <br />
      <br />
      
      <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-6">

          <input type="text" style="border-radius:50px ;" onkeyup="getdata()" id="search_data"   placeholder="Search all"  autocomplete="off" class="form-control input-sm" />
        </div>
        <div class="col-md-2"></div>
        <div class="col-md-2"></div>
        <div class="col-md-10">
        <div class="">
          <div id="data">
       
          
          </div>
          </div>
        </div>
       
      </div>
    </div>
  </body>
</html>
<script>
  /*$(document).ready(function(){
      
    $('#search_da').autocomplete({
      source: "livre.php",
      minLength: 1,
      select: function(event, ui)
      {
        $('#search_data').val(ui.item.value);
      }
    }).data('ui-autocomplete')._renderItem = function(ul, item){
      return $("<li class='ui-autocomplete-row'></li>")
        .data("item.autocomplete", item)
        .append(item.label)
        .appendTo(ul);
    };

  });*/

function getdata(){

var item=$('#search_data').val();
  $.ajax({
    type: "POST",
    url: "livre.php",
    data: {item:item},
    success: function (data) {
      $('#data').html(data); 
    }
  });

}

</script>