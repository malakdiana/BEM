<!-- ======= Hero Section ======= -->
<section id="hero">

  <div class="container">
    <div class="row">
      <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center" data-aos="fade-up">
        <div>
          <h1><?= $row[0]->judul ?></h1>
          <h2><?= $row[0]->subjudul ?></h2>
        </div>
      </div>
      <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="fade-left">
        <img src="<?= site_url() ?>_temp/uploads/img/<?= $row[0]->image ?>" class="img-fluid" alt="">
      </div>
    </div>
  </div>

</section><!-- End Hero -->

<main id="main">
  <!-- ======= Pricing Section ======= -->
  <section id="pricing" class="pricing section-bg">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2 style="color:#464848">Tentang Kami</h2>
          <p><?php $var = explode("</p>",$tentang[0]->isi);
              echo  $var[0]
            ?></p>
        </div>
      </div>
  </section>

  <!-- ======= About Section ======= -->
  <!-- <section id="about" class="about" style="border-bottom:2px solid #e9ecee">
    <div class="container">
      <div class="section-title" data-aos="fade-up">
        <h2>Tentang Kami</h2>
      </div>
      <div class="row">
        <div class="col-lg-12 d-flex flex-column justify-contents-center" data-aos="fade-left">
          <div class="content pt-4 pt-lg-0">
            <h3></h3>

            <p><?php $var = explode("</p>",$tentang[0]->isi);
              echo  $var[0]
            ?>
              
            </p>
          </div>
        </div>
      </div>

    </div>
  </section> -->
  <!-- End About Section -->

  <!-- ======= Services Section ======= -->
  <section id="services" class="services">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2 style="color:#464848">Organisasi</h2>
         </div>

        <div class="row">
     

          <div class="col-md-6 col-lg-4 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box icon-box-cyan" style="min-width: -webkit-fill-available" >
              <div class="icon"><i class="bx bx-group"></i></div>
              <h4 class="title"><a href="<?= site_url('kementerian') ?>">KEMENTERIAN</a></h4>
              <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon-box icon-box-green" style="min-width: -webkit-fill-available" >
              <div class="icon"><i class="bx bx-building"></i></div>
              <h4 class="title"><a href="<?= site_url('hima') ?>">HIMPUNAN MAHASISWA</a></h4>
              <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon-box icon-box-blue" style="min-width: -webkit-fill-available">
              <div class="icon"><i class="bx bx-briefcase"></i></div>
              <h4 class="title"><a href="<?= site_url('ukm') ?>">UNIT KERJA MAHASISWA</a></h4>
              <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Services Section -->

    <?php
  if ($berita->num_rows() > 0) { ?>
    <section class="choice_area mt-4">
      <div class="container">
          <div class="section-title" data-aos="fade-up">
          <h2 style="color:#464848">Kegiatan Terbaru</h2>
         </div>

        <div class="row choice_inner">
          <?php
          foreach ($berita->result() as $key => $data) { ?>
            <div class="col-lg-3">
              <div class="choice_item">
                <img class="img-fluid choice" src="<?= base_url() ?>_temp/uploads/img/<?= $data->image ?>" alt="">
                <div class="choice_text">
                  <div class="date">
                    <a href="#" class="float-right">
                      <i class="fa fa-calendar" aria-hidden="true"></i><?= mediumdate_indo($data->createdOn) ?>
                    </a>
                  </div>
                  <a href="<?= site_url('frontend/blog/detail/' . $data->seo_title) ?>">
                    <h4><?= $data->title ?></h4>
                  </a>
                  <p><?= character_limiter($data->content, 100) ?></p>
                </div>
              </div>
            </div>
          <?php }
          ?>
        </div>
      </div>
    </section>
  <?php }
  ?>
<!-- 

  <section id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-6 col-md-6">
            <div class="footer-info">
              <h3><?= $general[0]->nama_website ?></h3>
              <p>
                <?= $general[0]->alamat ?><br>
                <strong>Phone:</strong><?= $general[0]->telepon ?><br>
                <strong>Email:</strong> <?= $general[0]->email ?><br>
              </p>
              <div class="social-links mt-3">
                <?php foreach ($sosmed as $list_sosmed) { ?>
                  <a href="<?= $list_sosmed->link ?>" class="twitter"><i class="<?= $list_sosmed->icon ?>"></i></a>
                <?php } ?>
              </div>
            </div>
          </div>


          <div class="col-lg-6 col-md-6 footer-links">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1975.7547834563854!2d112.61457868858814!3d-7.946176148019526!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e78827687d272e7%3A0x789ce9a636cd3aa2!2sPoliteknik%20Negeri%20Malang!5e0!3m2!1sid!2sid!4v1695864443510!5m2!1sid!2sid" frameborder="0" style="border:0; width: 100%; height: 390px;" allowfullscreen></iframe>
          </div>
        </div>
      </div>
    </div>

  </section>
 -->


</main><!-- End #main -->