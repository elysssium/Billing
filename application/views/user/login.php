<!DOCTYPE html>
<html lang="en">
  <head>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Login</title>

    <!-- Bootstrap -->
    <link href="<?php echo base_url();?>assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<?php echo base_url();?>assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<?php echo base_url();?>assets/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="<?php echo base_url();?>assets/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<?php echo base_url();?>assets/build/css/custom.min.css" rel="stylesheet">
  <!-- preLoader -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <link rel="stylesheet" href="<?php echo base_url();?>assets/css/style.css">
      <style type="text/css">
        .load123
        {
          background-color: #000;
        }
        .load456
        {
          background-color: #f7f7f7;
        }
        
      </style>
  <!-- PreLoader -->
    <script>


var myVar;

function myFunction() {
    myVar = setTimeout(showPage, 5000);
}

function showPage() {
   var element = document.getElementById("myDiv123");
   element.classList.remove("load123");
    element.classList.add("load456");
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
}
</script>

  </head>

  <body class="login load123" id="myDiv123" onload="myFunction()" >
<div id="loader" style="background-color: #000;"> 

    <div class="loading" style="background-color: #000;">
  <div class="finger finger-1">
    <div class="finger-item">
      <span></span><i></i>
    </div>
  </div>
        <div class="finger finger-2">
    <div class="finger-item">
      <span></span><i></i>
    </div>
  </div>
        <div class="finger finger-3">
    <div class="finger-item">
      <span></span><i></i>
    </div>
  </div>
        <div class="finger finger-4">
    <div class="finger-item">
      <span></span><i></i>
    </div>
  </div>
        <div class="last-finger">
    <div class="last-finger-item"><i></i></div>
  </div>
    </div>




</div>
    <div style="display:none;" id="myDiv">
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="" method="post">
              <h1>Login Form</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" required="" name="email" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" name="password" />
              </div>
              <div>
              	<input type="submit" name="" value="Log in" class="btn btn-default submit" style="margin-left: 0px;">
                
                <a class="reset_pass" href="#">Forgot password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1> Intelligent Image Processing!</h1>
                  <p>Copyright © 2018 elysium IT Services. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form action="<?php echo base_url(); ?>index.php/Signup" method="post">
              <h1>Create Account</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" required="" name="username" />
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email" required="" name="email"/>
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" name="password"/>
              </div>
              <div>
                <input class="btn btn-default submit" style="margin-left: 115px;" type="submit" name="" value="Submit">
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1> Intelligent Image Processing!</h1>
                  <p>Copyright © 2018 elysium IT Services. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
     <div class="modal fade bs-example-modal-lg in" tabindex="-1" role="dialog" aria-hidden="true" style="display: none; padding-right: 17px;" id="myModal">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel">Login Failed</h4>
                        </div>
                        <div class="modal-body">
                          <h4 class="modal_head"></h4>
                          <p id="modal_body"></p>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>

                      </div>
                    </div>
                  </div>
                  <?php 
         		if(empty($message))
         		{

         		}
         		else
         		{
         			echo "
         					<script type='text/javascript'>
         						$(document).ready(function(){
         							$('#modal_body').append('$message');
         							$('#myModal').modal();
         							$('#dummyModal').modal();
         							
         						});
        					 </script>
         				";
         		}
         		?>
         
         		
         
  </body>
 
</html>
