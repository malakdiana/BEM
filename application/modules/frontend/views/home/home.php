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

  <!-- ======= Team Section ======= -->

  <!-- ======= About Section ======= -->
  <section id="about" class="about" style="border-bottom:2px solid #e9ecee">
    <div class="container">
      <div class="section-title" data-aos="fade-up">
        <h2>Tentang</h2>
      </div>
      <div class="row">
        <div class="col-lg-6" data-aos="zoom-in">
          <img src="<?= base_url() ?>_temp/frontend/img/about.jpg" class="img-fluid" alt="">
        </div>
        <div class="col-lg-6 d-flex flex-column justify-contents-center" data-aos="fade-left">
          <div class="content pt-4 pt-lg-0">
            <h3></h3>

            <p>
              <?= $tentang[0]->isi ?>
            </p>
          </div>
        </div>
      </div>

    </div>
  </section><!-- End About Section -->

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


</main><!-- End #main -->