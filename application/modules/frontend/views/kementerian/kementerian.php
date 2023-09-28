<style>
       
        @keyframes popup {
          0%{
            transform: scale(0.7);
          }
          50%{
            transform: scale(0.7);
          }
          60%{
            transform: scale(0.7);
          }
          70%{
            transform: scale(0.7);
          }
          80%{
            transform: scale(0.8);
          }
          90%{
            transform: scale(0.9);
          }
          100%{
            transform: scale(1);
          }
        }

        #animated-div {
            animation: popup 0.3s;;
        }
    </style>
<main id="main">
     <!-- ======= Portfolio Section ======= -->
     <section id="services" class="services section-bg" style="border-bottom:2px solid #e9ecee">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2 style="margin-top:50px">Kementerian</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="row">
          <?php foreach ($row as $kementerian) {?>
          <div id="animated-div" class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="zoom-in">
            <div class="icon-box icon-box-pink">
              <div class="icon">  <img src="<?=site_url()?>_temp/uploads/img/270923211220_download_(2).png" class="img-fluid" style="hight:100px; width:100px;" alt=""></div>
              <h4 class="title"><a href=""><?=$kementerian->nama?></a></h4>
              <p class="description" style="text-align:initial" ><?php echo substr($kementerian->deskripsi, 0, 100);
                  if(strlen($kementerian->deskripsi)>100){
                  echo '... <a href="/this/story">Read More</a>';
                  }
              ?></p>
            </div>
          </div>
          <?php }?>

        

        </div>

      </div>
    </section>
</main>