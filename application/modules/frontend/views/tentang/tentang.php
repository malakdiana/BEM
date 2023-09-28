<main id="main">

<!-- ======= About Section ======= -->
<section id="about" class="about">
  <div class="container">
  <div class="section-title" data-aos="fade-up">
          <h2><?= $row[0]->judul?></h2>
        </div>
    <div class="row">
      <div class="col-lg-6" data-aos="zoom-in">
        <img src="<?=base_url()?>_temp/frontend/img/about.jpg" class="img-fluid" alt="">
      </div>
      <div class="col-lg-6 d-flex flex-column justify-contents-center" data-aos="fade-left">
        <div class="content pt-4 pt-lg-0">
          <h3></h3>
         
          <p>
          <?= $row[0]->isi?>
          </p>
        </div>
      </div>
    </div>

  </div>
</section><!-- End About Section -->

</main><!-- End #main -->
