      <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <div class="row tile_count">
          </div>
          <!-- /top tiles -->

          <div class="row" id="ocr_results">
            
            <!--    <div class='row x_title'>
                  <div class='col-md-6 col-sm-6 col-xs-6' style='overflow: hidden;'>
                   <div>
                    <img src='<?php echo base_url();?>assets/images/bill-supply.jpg' alt='bill image' style='width: 600px ;height:500px;'>
                    </div>
                  </div>
                  <div class='col-md-6 col-sm-6 col-xs-6'>
                   <div class='x_panel'>
                  <div class='x_title'>
                    <div class='clearfix'></div>
                  </div>
                  <div class='x_content'>
                    <br>
                      <form class='form-horizontal form-label-left input_mask'>
                       <div class='form-group'>
                        <label class='control-label col-md-3 col-sm-3 col-xs-12'>Invoice</label>
                        <div class='col-md-9 col-sm-9 col-xs-12'>
                          <input class='form-control' type='text' value=''>
                        </div>
                      </div>
                      <div class='form-group'>
                        <label class='control-label col-md-3 col-sm-3 col-xs-12'>Address</label>
                        <div class='col-md-9 col-sm-9 col-xs-12'>
                           <textarea class='form-control' rows='5' id='comment'></textarea>
                        </div>
                      </div>
                      <div class='form-group'>
                        <label class='control-label col-md-3 col-sm-3 col-xs-12'>Reference</label>
                        <div class='col-md-9 col-sm-9 col-xs-12'>
                          <input class='form-control'   type='text'>
                        </div>
                      </div>
                      <div class='form-group'>
                        <label class='control-label col-md-3 col-sm-3 col-xs-12'>Dated</label>
                        <div class='col-md-9 col-sm-9 col-xs-12'>
                          <input class='form-control' type='text'>
                        </div>
                      </div>
                        <div class='form-group'>
                        <label class='control-label col-md-3 col-sm-3 col-xs-12'>Grand Total</label>
                        <div class='col-md-9 col-sm-9 col-xs-12'>
                          <input class='form-control'   type='text'>
                        </div>
                      </div>
                        <div class='form-group'>
                        <label class='control-label col-md-3 col-sm-3 col-xs-12'>Amount In Words</label>
                        <div class='col-md-9 col-sm-9 col-xs-12'>
                          <input class='form-control'   type='text'>
                        </div>
                      </div>
                      <div class='ln_solid'></div>
                      <div class='form-group'>
                        <div class='col-md-9 col-sm-9 col-xs-12 col-md-offset-3'>
                          <button type='submit' class='btn btn-success'>Submit</button>
                        </div>
                      </div>

                    </form>
                  </div>
                </div>
                  </div>
               
          </div> -->
          
            
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
  $(document).ready(function(){
   var st = new Array();
    <?php foreach($url as $key => $val){ ?>
        st.push('<?php echo $val; ?>');
    <?php } ?>
    var count="<?php echo $count; ?>";
      for(var i=0;i<count;i++)
      {
        var url = 'http://localhost:8081/Billing/assets/'+st[i];
        alert(url);
         runOCR(url);

      }
});
  function runOCR(url) {
    Tesseract.recognize(url)
         .then(function(result) {
          var row1="<div class='row x_title'><div class='col-md-6 col-sm-6 col-xs-6' style='overflow: hidden;'><div><img src='"+url+"' alt='bill image' style='width: 600px ;height:500px;'></div></div><div class='col-md-6 col-sm-6 col-xs-6'><div class='x_panel'><div class='x_title'><div class='clearfix'></div></div><div class='x_content'><br><form class='form-horizontal form-label-left input_mask'><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>Invoice</label><div class='col-md-9 col-sm-9 col-xs-12'><input class='form-control' type='text' value=''></div></div><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>Address</label><div class='col-md-9 col-sm-9 col-xs-12'><textarea class='form-control' rows='5' id='comment'></textarea></div></div><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>Reference</label><div class='col-md-9 col-sm-9 col-xs-12'><input class='form-control'   type='text'></div></div><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>Dated</label><div class='col-md-9 col-sm-9 col-xs-12'><input class='form-control' type='text'></div></div><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>Grand Total</label><div class='col-md-9 col-sm-9 col-xs-12'><input class='form-control'   type='text'></div></div><div class='form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12'>Amount In Words</label><div class='col-md-9 col-sm-9 col-xs-12'><input class='form-control'   type='text'></div></div><div class='ln_solid'></div><div class='form-group'><div class='col-md-9 col-sm-9 col-xs-12 col-md-offset-3'><button type='submit' class='btn btn-success'>Submit</button></div></div></form></div></div></div></div>"
            var row = "<div>"+result.text+"</div><hr>";
                            $('#ocr_results').append(row1);
         }).progress(function(result) {
            document.getElementById("ocr_status")
                    .innerText = result["status"] + " (" +
                        (result["progress"] * 100) + "%)";
        });

}
</script>
  </body>
</html>
