<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
   <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.5.1.min.js"></script>
   		<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/jquery-ui.min.js"></script>
   		<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/themes/ui-lightness/jquery-ui.css" rel="stylesheet" type="text/css" />
   		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>myehr</title>
        <link rel="stylesheet" href="jquery-ui.min.css">

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
    <form>
        <div class="form-group">
            <label for="email">Email address:</label>
            <input type="email" class="form-control" id="email">
          </div>
          <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" id="pwd">
          </div>
          <div class="form-group">
             <label for="pwd">DOB:</label>
             <input type="text" name="date" id="date">
          </div>
          <div class="checkbox">
            <label><input type="checkbox"> Accept T&C</label>
          </div>

          <button type="submit" class="btn btn-default">Submit</button>


    </form>

</body>
</html