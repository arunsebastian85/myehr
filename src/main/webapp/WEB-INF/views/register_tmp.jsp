<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
  <title>pstck-register</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css">
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js"></script>
  <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/themes/ui-lightness/jquery-ui.css" rel="stylesheet" type="text/css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
   <script>
            //$(document).ready(function(){
              //  $( "#date" ).datepicker();
            //});

              $(document).ready(function() {
                $('#register_form').bootstrapValidator({
                    // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
                    feedbackIcons: {
                        valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                        validating: 'glyphicon glyphicon-refresh'
                    },
                    fields: {
                        first_name: {
                            validators: {
                                    stringLength: {
                                    min: 2,
                                },
                                    notEmpty: {
                                    message: 'Please supply your first name'
                                }
                            }
                        },
                         last_name: {
                            validators: {
                                 stringLength: {
                                    min: 2,
                                },
                                notEmpty: {
                                    message: 'Please supply your last name'
                                }
                            }
                        },
                        email: {
                            validators: {
                                notEmpty: {
                                    message: 'Please supply your email address'
                                },
                                emailAddress: {
                                    message: 'Please supply a valid email address'
                                }
                            }
                        },
                        phone: {
                            validators: {
                                notEmpty: {
                                    message: 'Please supply your phone number'
                                }
                            }
                        },
                        address: {
                            validators: {
                                 stringLength: {
                                    min: 8,
                                },
                                notEmpty: {
                                    message: 'Please supply your street address'
                                }
                            }
                        },
                        city: {
                            validators: {
                                 stringLength: {
                                    min: 3,
                                },
                                notEmpty: {
                                    message: 'Please supply your city'
                                }
                            }
                        },
                        country: {
                            validators: {
                                notEmpty: {
                                    message: 'Please select your country'
                                }
                            }
                        },
                         locality: {
                             validators: {
                                notEmpty: {
                                    message: 'Please select your locality'
                                }
                             }
                         },
                        username: {
                              message: 'The username is not valid',
                              validators: {
                                        notEmpty: {
                                         message: 'Please enter your username'
                                         },
                                        stringLength: {
                                        min: 6,
                                        max: 20
                                    },
                                        regexp: {
                                                regexp: /^[a-zA-Z0-9_\.]+$/
                                    },
                              }
                          },
                          password: {
                               message: 'The password is not valid',
                               validators: {
                                           notEmpty: {
                                           message: 'Please enter your password'
                                           },
                                           stringLength: {
                                                       min: 6,
                                                       max: 20
                                                       },
                                                       regexp: {
                                                           regexp: /^[a-zA-Z0-9_\.]+$/
                                                       },
                                                      }
                                                    },
                        comment: {
                            validators: {
                                  stringLength: {
                                    min: 10,
                                    max: 200,
                                    message:'Please enter at least 10 characters and no more than 200'
                                },
                                notEmpty: {
                                    message: 'Please supply a description of your project'
                                }
                                }
                            }
                        }
                    })
                    .on('success.form.bv', function(e) {
                        $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                            $('#register_form').data('bootstrapValidator').resetForm();

                        // Prevent form submission
                        e.preventDefault();

                        // Get the form instance
                        var $form = $(e.target);

                        // Get the BootstrapValidator instance
                        var bv = $form.data('bootstrapValidator');

                        // Use Ajax to submit form data
                        $.post($form.attr('action'), $form.serialize(), function(result) {
                            console.log(result);
                        }, 'json');
                    });
            });




     </script>
  <style>
  #success_message{ display: none;}
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
</head>
<body>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <h4>PSCTK</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">Register</a></li>


      </ul><br>
    </div>

    <div class="col-sm-7">
     <h4><small>Register</small></h4>
     <div class="container">

         <form class="well form-horizontal" action="<c:url value='/registerSubmit' />" method="post"  id="register_form">
     <fieldset>

     <!-- Form Name -->
     <!-- <legend>Contact Us Today!</legend> -->

     <!-- Text input-->

     <div class="form-group">
       <label class="col-md-4 control-label">First Name</label>
       <div class="col-md-4 inputGroupContainer">
       <div class="input-group">
       <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
       <input  name="first_name" placeholder="First Name" class="form-control"  type="text">
         </div>
       </div>
     </div>

     <!-- Text input-->

     <div class="form-group">
       <label class="col-md-4 control-label" >Last Name</label>
         <div class="col-md-4 inputGroupContainer">
         <div class="input-group">
       <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
       <input name="last_name" placeholder="Last Name" class="form-control"  type="text">
         </div>
       </div>
     </div>

     <!-- Text input-->
            <div class="form-group">
       <label class="col-md-4 control-label">E-Mail</label>
         <div class="col-md-4 inputGroupContainer">
         <div class="input-group">
             <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
       <input name="email" placeholder="E-Mail Address" class="form-control"  type="text">
         </div>
       </div>
     </div>


     <!-- Text input-->

     <div class="form-group">
       <label class="col-md-4 control-label">Phone #</label>
         <div class="col-md-4 inputGroupContainer">
         <div class="input-group">
             <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
       <input name="phone" placeholder="(845)555-1212" class="form-control" type="text">
         </div>
       </div>
     </div>

     <!-- Text input-->

     <div class="form-group">
       <label class="col-md-4 control-label">Address</label>
         <div class="col-md-4 inputGroupContainer">
         <div class="input-group">
             <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
       <input name="address" placeholder="Address" class="form-control" type="text">
         </div>
       </div>
     </div>

     <!-- Text input-->

     <div class="form-group">
       <label class="col-md-4 control-label">City</label>
         <div class="col-md-4 inputGroupContainer">
         <div class="input-group">
             <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
       <input name="city" placeholder="city" class="form-control"  type="text">
         </div>
       </div>
     </div>

     <!-- Select Basic -->

     <div class="form-group">
       <label class="col-md-4 control-label">Country</label>
         <div class="col-md-4 selectContainer">
         <div class="input-group">
             <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
         <select name="country" class="form-control selectpicker" >
           <option value=" " >Please select your country</option>
           <option>Alabama</option>
           <option>Alaska</option>
           <option >Arizona</option>

         </select>
       </div>
     </div>
     </div>

     <!-- Text input-->

    <div class="form-group">
           <label class="col-md-4 control-label">Locality</label>
             <div class="col-md-4 selectContainer">
             <div class="input-group">
                 <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
             <select name="locality" class="form-control selectpicker" >
               <option value=" " >Please select your Locality</option>
               <option>Kunnukara</option>
               <option>Kuttipuzha</option>
               <option>Aduvassery</option>

             </select>
           </div>
         </div>
         </div>

     <!-- Text input-->
     <div class="form-group">
       <label class="col-md-4 control-label">User name</label>
        <div class="col-md-4 inputGroupContainer">
         <div class="input-group">
             <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
       <input name="username" placeholder="User name" class="form-control" type="text">
         </div>
       </div>
     </div>
      <div class="form-group">
            <label class="col-md-4 control-label">Password</label>
             <div class="col-md-4 inputGroupContainer">
              <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-eye-open"></i></span>
            <input name="password" placeholder="password" class="form-control" type="password">
              </div>
            </div>
          </div>

     <!-- radio checks -->
      <div class="form-group">
                             <label class="col-md-4 control-label">Do you have hosting?</label>
                             <div class="col-md-4">
                                 <div class="radio">
                                     <label>
                                         <input type="radio" name="hosting" value="yes" /> Yes
                                     </label>
                                 </div>
                                 <div class="radio">
                                     <label>
                                         <input type="radio" name="hosting" value="no" /> No
                                     </label>
                                 </div>
                             </div>
                         </div>

     <!-- Text area -->

     <div class="form-group">
       <label class="col-md-4 control-label">Project Description</label>
         <div class="col-md-4 inputGroupContainer">
         <div class="input-group">
             <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
             	<textarea class="form-control" name="comment" placeholder="Project Description"></textarea>
       </div>
       </div>
     </div>

     <!-- Success message -->
     <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>

     <!-- Button -->
     <div class="form-group">
       <label class="col-md-4 control-label"></label>
       <div class="col-md-4">
         <button type="submit" class="btn btn-warning" >Send <span class="glyphicon glyphicon-send"></span></button>
       </div>
     </div>

     </fieldset>
     </form>
     </div>
         </div><!-- /.container -->
  </div>
</div>

<footer class="container-fluid">
  <p>Footer Text</p>
</footer>

</body>
</html>
