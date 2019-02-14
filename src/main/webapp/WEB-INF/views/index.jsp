<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
   <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.5.1.min.js"></script>
   		<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/jquery-ui.min.js"></script>
   		<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/themes/ui-lightness/jquery-ui.css" rel="stylesheet" type="text/css" />
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

        <h2>Welcome to EHR</h2>
        <p> ${greeting}</p>

<input type="text" name="date" id="date">
        <c:if test = "${not empty error}"><div> ${error} </div> </c:if>
        <c:if test = "${not empty message}"><div>${message} </div></c:if>

        <form name='login' action="<c:url value='/login' />" method='POST'>
          <table>
            <tr>
            	<td>UserName:</td>
            	<td><input type='text' name='username' value=''></td>
            </tr>
            <tr>
            	<td>Password:</td>
            	<td><input type='password' name='password' /></td>
            </tr>
            <tr>
            	<td colspan='2'><input name="submit" type="submit" value="submit" /></td>
            </tr>
            <tr>
                <td><a href="<c:url value='/register' />"> Register </td>
            </tr>
          </table>
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        </form>

    </body>
    <form>
    </form>
</html>
