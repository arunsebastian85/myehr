<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <!-- <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.5.1.min.js"></script> -->
     		<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/jquery-ui.min.js"></script>
     		<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/themes/ui-lightness/jquery-ui.css" rel="stylesheet" type="text/css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}

    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }

    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }

    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;}
    }
  </style>
   <script>
          $(document).ready(function(){
              $( "#date" ).datepicker();
              $("p").click(function(){
                  $(this).hide();
              });
          });
          </script>
</head>
<body>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h4>PSCTK</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">Register</a></li>
        <!--<li><a href="#section2">Friends</a></li>
        <li><a href="#section3">Family</a></li>
        <li><a href="#section3">Photos</a></li>-->
      </ul><br>
     <!-- <div class="input-group">
        <input type="text" class="form-control" placeholder="Search Blog..">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div> -->
    </div>

    <div class="col-sm-9">
      <h4><small>Register</small></h4>
      <form>
      <div class="form-group">
                        <label for="username">Username</label>
                        <input type="username" class="form-control" id="email">
                      </div>
                      <div class="form-group">
                                        <label for="Password">Password</label>
                                        <input type="Password" class="form-control" id="Password">
                                      </div>

              <div class="form-group">
                  <label for="repwd">Re-pwd:</label>
                  <input type="repwd" class="form-control" id="repwd">
                </div>

                <div class="form-group">
                   <label for="pwd">DOB:</label>
                   <input type="text" name="date" id="date">
                </div>
                <div class="form-group">
                                                                        <label for="email">Email address:</label>
                                                                        <input type="email" class="form-control" id="email">
                                                                      </div>
                <div class="checkbox">
                  <label><input type="checkbox"> Accept T&C</label>
                </div>

                <button type="submit" class="btn btn-default">Submit</button>


          </form>



  </div>
</div>

<footer class="container-fluid">
  <p>Footer Text</p>
</footer>

</body>
</html>
