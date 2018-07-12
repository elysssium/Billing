      <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <div class="row tile_count">
            <div class="col-md-8 col-md-offset-2">
                <div class="example-wrap">
                  <div class="example">
                    <h5 id="processing_files"></h5>
                    <div class="progress">
                      <div class="progress-bar progress-bar-striped active" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 0.1%" role="progressbar" id="myBar">
                        <span class="sr-only">90% Complete</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
          </div>
          <!-- /top tiles -->

          <div class="row" id="ocr_results">
            
            
        </div>
        <!-- /page content -->

    <!-- jQuery -->
    <script src="<?php echo base_url();?>assets/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="<?php echo base_url();?>assets/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="<?php echo base_url();?>assets/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="<?php echo base_url();?>assets/vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="<?php echo base_url();?>assets/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="<?php echo base_url();?>assets/vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="<?php echo base_url();?>assets/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="<?php echo base_url();?>assets/vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="<?php echo base_url();?>assets/vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="<?php echo base_url();?>assets/vendors/Flot/jquery.flot.js"></script>
    <script src="<?php echo base_url();?>assets/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="<?php echo base_url();?>assets/vendors/Flot/jquery.flot.time.js"></script>
    <script src="<?php echo base_url();?>assets/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="<?php echo base_url();?>assets/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="<?php echo base_url();?>assets/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="<?php echo base_url();?>assets/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="<?php echo base_url();?>assets/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="<?php echo base_url();?>assets/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="<?php echo base_url();?>assets/vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="<?php echo base_url();?>assets/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="<?php echo base_url();?>assets/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="<?php echo base_url();?>assets/vendors/moment/min/moment.min.js"></script>
    <script src="<?php echo base_url();?>assets/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="<?php echo base_url();?>assets/build/js/custom.min.js"></script>
	<script type="text/javascript">
    <?php
          function templateDistance($url1,$url2)
          {
            
 
            /* Get hash string from image*/
            $image1 = $url1;
            $compareMachine = new compareImages($image1);
            $image1Hash = $compareMachine->getHasString(); 

            /* Compare this image with an other image*/
            $image2 = $url2;
            //$diff = $compareMachine->compareWith($image2); //easy
            $image2Hash = $compareMachine->hasStringImage($image2); 
            $diff = $compareMachine->compareHash($image2Hash); 
            return $diff;
          }
          function selectTemplate($file_name,$templatesResult)
          {
            $i=0;
            $template_distance=100;
            $file_url=base_url()."assets/upload_images/".$file_name;
            foreach($templatesResult as $row)
            {
              $template_url=base_url()."assets/upload_templates/".$row->src;
              $distance=templateDistance($template_url,$file_url);
              if($i==0 || $template_distance>$distance)
              {
                $template_distance=$distance;
                $file_details['src']=$row->src;
                $file_details['templateName']=$row->templateName;
                $file_details['templateId']=$row->templateId;

              }
              $i++;
            }
            return $file_details;
          }
      ?>
  $(document).ready(function(){
   var st = new Array();
   var template_name = new Array();
   var template_id = new Array();
   <?php include('./assets/compareImages.php'); ?>
    <?php foreach($url as $key => $val){ ?>
      <?php 
              
              $template_details=selectTemplate($val,$templatesResult);
       ?>
        template_name.push('<?php echo $template_details['templateName']; ?>');
        template_id.push('<?php echo $template_details['templateId']; ?>');
        st.push('<?php echo $val; ?>');
    <?php } ?>
    var count="<?php echo $count; ?>";
      for(var i=0;i<count;i++)
      {
        var url = 'http://localhost:8081/Billing/assets/upload_images/'+st[i];
        
        if(i==0)
        {
          runOCR(url,i+1,count,0,template_name[i],template_id[i]);
          
        }
        else
        {
          var wid=(i/count)*100;
          runOCR(url,i+1,count,wid,template_name[i],template_id[i]);
        }
        

      }
});
  function runOCR(url,m,n,wid,nameTemplate,templateId) {
    
    Tesseract.recognize(url)
         .then(function(result) {
            var text_result=result.text;
            $.ajax({
                type : "POST",
                url : "<?php echo base_url();?>/index.php/user/get-json",
                data : {text_result:text_result,template:templateId},
                dataType: 'json',
                success : function(response) {

                        
                        if (templateId === "2") 
                        {
                            var row1="<div class='row x_title'><div class='col-md-6 col-sm-6 col-xs-6' style='overflow: hidden;'><div><img src='"+url+"' alt='bill image' style='width: 600px ;height:500px;'></div></div><div class='col-md-6 col-sm-6 col-xs-6'><div class='x_panel'><div class='x_title'><div class='clearfix'></div></div><div class='x_content'><br><form class='form-horizontal form-label-left input_mask'><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>Title</label><div class='col-md-9 col-sm-9 col-xs-12'><input class='form-control' type='text' value='"+response.title_bill+"'></div></div><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>Template Name</label><div class='col-md-9 col-sm-9 col-xs-12'><input class='form-control' type='text' value='"+nameTemplate+"'></div></div><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>TERMINAL</label><div class='col-md-9 col-sm-9 col-xs-12'><input class='form-control'   type='text' value='"+response.TERMINAL +"'></div></div><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>SEQUENCE</label><div class='col-md-9 col-sm-9 col-xs-12'><input class='form-control'   type='text' value='"+response.SEQUNCE +"'></div></div><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>CARD NUMBER</label><div class='col-md-9 col-sm-9 col-xs-12'><input class='form-control'   type='text' value='"+response.CARDNUMBER+"'></div></div><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>CUSTOMER NAME</label><div class='col-md-9 col-sm-9 col-xs-12'><input class='form-control'   type='text' value='"+response.CUSTOMERNAME+"'></div></div><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>REQUSTED AMOUNT</label><div class='col-md-9 col-sm-9 col-xs-12'><input class='form-control'   type='text' value='"+response.REQUSTEDAMOUNT+"'></div></div><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>TERMINAL FEE</label><div class='col-md-9 col-sm-9 col-xs-12'><input class='form-control'   type='text' value='"+response.TERMINALFEE+"'></div></div><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>TOTAL AMOUNT</label><div class='col-md-9 col-sm-9 col-xs-12'><input class='form-control'   type='text' value='"+response.TOTALAMOUNT+"'></div></div></div><div class='ln_solid'></div><div class='form-group'><div class='col-md-9 col-sm-9 col-xs-12 col-md-offset-3'><button type='submit' class='btn btn-success'>Submit</button></div></div></form></div></div></div></div>";
                            $('#ocr_results').append(row1);
                        }

                },
                error: function() { 
                    alert("Something went wrong");
                }
            });
            
         }).progress(function(result) 
         {
          var str2="recognizing text";
          var process_results="Processing File "+m+" of "+n+".";
          document.getElementById("processing_files").innerHTML = process_results;
          if(result['status'].localeCompare(str2)==0)
          {
              var elem = document.getElementById("myBar");
              width=((m* (result["progress"] * 100))/n)+wid;
              var k="M= "+m+" width="+width+" result="+result["progress"]+" wid="+wid;
              //alert(k);
              elem.style.width = width + '%';
              
          }
          
        });
        
}
</script>
  </body>
</html>
