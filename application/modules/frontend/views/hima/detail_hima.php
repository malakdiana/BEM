<main id="main">
<style>
.image-container {
    text-align: center; /* Center align the contents horizontally */
}

img {
    max-width: 100%; /* Ensure the image doesn't exceed its container's width */
    height: auto; /* Maintain the image's aspect ratio */
}

.image-number {
    font-size: 15px; /* Set the font size for the image number */
    color: #333; /* Set the text color */
    margin-top: 10px; /* Add some space between the image and the number */
}

</style>
<!-- ======= Breadcrumbs ======= -->
<section id="breadcrumbs" class="breadcrumbs" style="border-bottom:2px solid #e9ecee">
  <div class="container">

    <ol>
      <li><a href="index.html">HIMA</a></li>
      <li><?=$row[0]->nama?></li>
    </ol>
    <h2><?=$row[0]->nama?></h2>

  </div>
</section><!-- End Breadcrumbs -->

<section class="inner-page">
  <div class="container">
    <div class="row">
        <div class="col-lg-8 mt-2 mb-tg-0 order-2 order-lg-1">
          <div class="row">
              <div class="col-lg-12">
                <p><?=$row[0]->deskripsi?></p>
              </div>  
              <div class="col-lg-12 image-container">
                 <img src="<?=base_url()?>_temp/uploads/img/<?=$row[0]->foto_kepengurusan?>" alt="" class="img-fluid">
                 <p class="image-number">Gambar Struktur Kepengurusan <?=$row[0]->nama?></p>
              </div>  
          </div>
        </div>
        <div class="col-lg-4 order-1 order-lg-2" data-aos="zoom-in">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <figure style="align: center" >
                  <img src="<?=base_url()?>_temp/uploads/img/<?=$row[0]->image?>" alt=""  class="img-fluid">
                </figure>
              </div>
            </div>
            <div class="tab-content">
                <div class="right_sidebar">
          
                    <aside class="r_widgets news_widgets">
                
                      <div class="main_title2" >
                      <h2>Most Popular News</h2>
                      </div>
                      <!-- <div class="choice_item">
                      <img class="img-fluid"  src="<?=base_url()?>_temp/uploads/img/<?=$row[0]->foto_kepengurusan?>" alt="">
                      <div class="choice_text">
                        <div class="date">
                          <a class="gad_btn" href="">Kategori</a>
                          <a href="#" class="float-right"><i class="bi bi-calendar" aria-hidden="true"></i>12 juni 2023</a>
                        </div>
                        <a href="">
                          <h4><?= $row[0]->nama ?></h4>
                        </a>
                        <p><?= character_limiter($row[0]->deskripsi, 150) ?></p>
                      </div>
                      </div> -->


                      <div class="magazine-view">
                        <div class='fbt_magazine-blog-post fbt-index-post row align-items-center justify-content-between'>
                          <div class='col-xl-6 col-md-5'>
                          <div class='fbt-post-thumbnail'>
                            <a href='#'>
                              <img  class='post-thumbnail lazyloaded' src='<?= base_url() ?>_temp/uploads/img/<?=$row[0]->image?>'>
                            </a>
                          </div>
                          </div>
                          <div class='col-xl-6 col-md-7'>
                          <div class='fbt-post-caption mt-3 mt-md-0'>
                            <div class="choice_text">
                              <a href=''>
                                <h4><?= $row[0]->nama ?></h4>
                              </a>
                            </div>
                            <div class='post-meta mb-2'>
                              <span class='post-author'>ok</span> - 
                              <span class='post-date published'>12 oktobber 2022</span>
                            </div>
                            <p class='post-excerpt'>
                            <p><?= character_limiter($row[0]->deskripsi,50) ?></p>
                            </p>
                          </div>
                          </div>
                        </div>
                    </div>


                    <div class="magazine-view">
                        <div class='fbt_magazine-blog-post fbt-index-post row align-items-center justify-content-between'>
                          <div class='col-xl-6 col-md-5'>
                          <div class='fbt-post-thumbnail'>
                            <a href='#'>
                              <img  class='post-thumbnail lazyloaded' src='<?= base_url() ?>_temp/uploads/img/<?=$row[0]->image?>'>
                            </a>
                          </div>
                          </div>
                          <div class='col-xl-6 col-md-7'>
                          <div class='fbt-post-caption mt-3 mt-md-0'>
                            <div class="choice_text">
                              <a href=''>
                                <h4><?= $row[0]->nama ?></h4>
                              </a>
                            </div>
                            <div class='post-meta mb-2'>
                              <span class='post-author'>ok</span> - 
                              <span class='post-date published'>12 oktobber 2022</span>
                            </div>
                            <p class='post-excerpt'>
                            <p><?= character_limiter($row[0]->deskripsi,50) ?></p>
                            </p>
                          </div>
                          </div>
                        </div>
                    </div>
                    <div class="row mt-5">
                      <div class="col text-center">
                        <a href="" class="genric-btn danger-border circle arrow">More View<span class="lnr lnr-arrow-right"></span></a>
                      </div>
                    </div>

                    </aside>
                </div>
            </div>
            <div>
           
            </div>
        </div>
    </div>
  </div>
</section>


</main><!-- End #main -->