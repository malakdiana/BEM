<style media="screen">
  div i:hover{
    cursor: pointer;
  }
</style>

<ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
        <a class="nav-link active show" data-toggle="tab" href="#awesome" role="tab" aria-selected="true">Bootstrap icon</a>
    </li>
  
</ul>


<div class="tab-content">
    <div class="tab-pane p-3 active show" id="awesome" role="tabpanel">
      <section>
        <div class="icon-demo-content row">
            <div class="col-sm-6 col-md-4 col-lg-3">
                <i  class="bi bi-facebook"></i>bi bi-facebook
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                 <i class="bi bi-messenger"></i> bi bi-messenger
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <i class="bi bi-whatsapp"></i>bi bi-whatsapp
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                 <i class="bi bi-youtube"></i> bi bi-youtube
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
            <i class="bi bi-twitter"></i>bi bi-twitter
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
            <i class="bi bi-twitter-x"></i> bi bi-twitter-x
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
            <i class="bi bi-instagram"></i> bi bi-instagram
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
            <i class="bi bi-linkedin"></i> bi bi-linkedin
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
            <i class="bi bi-threads"></i>bi bi-threads
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">

            <i class="bi bi-tiktok"></i>i bi-tiktok
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">

            <i class="bi bi-line"></i>bi bi-line
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">

            <i class="bi bi-wechat"></i>bi bi-wechat
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">

            <i class="bi bi-google"></i>bi bi-google
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">

            <i class="bi bi-envelope-at"></i>bi bi-envelope-at
            </div>
            
        </div>
    </section>
    </div>


</div>

<script type="text/javascript">
  $(document).on("click","i",function(e){
    e.preventDefault();
    var attr_class = $(this).attr("class");
    $("#icon , #icons").val(attr_class);
    $("#modalGue").modal("hide");
    console.log("success");
  })
</script>
