<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="content-language" content="id-id">
  <meta property="og:url" content="<?= base_url() ?>" />
  <meta name="description" content="Kedai Kopi Koopen Kedai Kopi Koopen Kedai Kopi Koopen Kedai Kopi Koopen Kedai Kopi Koopen Kedai Kopi Koopen Kedai Kopi Koopen Kedai Kopi Koopen Kedai Kopi Koopen Kedai Kopi Koopen Kedai Kopi Koopen Kedai Kopi Koopen Kedai Kopi Koopen ">
  <meta property="og:locale" content="id_ID" />
  <meta property="og:type" content="website" />
  <meta name="keyword" content="toko kopi koopen, kopi koopen, Kedai kopi koopen, koopen malang, kopi malang, kopi dari malang, ngopi malang, tempat ngopi malang">
  <meta property="og:url" content="https://kopikoopen.com/blog/read/">
  <meta property="og:type" content="website">
  <meta property="og:title" content=" | TOKO KOPI KOOPEN">
  <meta property="og:description" content="">
  <meta property="og:image" content="https://kopikoopen.com/assets/img/uploads/artikel/">
  <meta property="og:site_name" content="Toko Kopi Koopen" />
  <meta property="og:image" content="https://kopikoopen.com/assets/client/images/icons/koopen.png" />
  <meta property="og:image:width" content="800" />
  <meta property="og:image:height" content="800" />
  <meta property="og:image:type" content="image/png" />
  <title><?= $title ?></title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<?= base_url() ?>_temp/frontend/img/favicon.png" rel="icon">
  <link href="<?= base_url() ?>_temp/frontend/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<?= base_url() ?>_temp/frontend/vendors/aos/aos.css" rel="stylesheet">
  <link href="<?= base_url() ?>_temp/frontend/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>_temp/frontend/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="<?= base_url() ?>_temp/frontend/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>_temp/frontend/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>_temp/frontend/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<?= base_url() ?>_temp/frontend/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Scaffold
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/scaffold-bootstrap-metro-style-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>


  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo me-auto">
        <h1><a href="index.html"><?= $general[0]->nama_website ?></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="<?= base_url() ?>_temp/frontend/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto <?= $this->uri->segment(1) ==
                                            'frontend' || $this->uri->segment(1) == ''
                                            ? 'active"'
                                            : '' ?>" href="<?= base_url() ?>">Home</a></li>
          <li><a class="nav-link scrollto <?= $this->uri->segment(1) ==
                                            'tentang'
                                            ? 'active"'
                                            : '' ?>" href="<?= site_url('tentang') ?>">Tentang</a></li>
          <li><a class="nav-link scrollto <?= $this->uri->segment(1) ==
                                            'visi-misi'
                                            ? 'active"'
                                            : '' ?>" href="<?= site_url('visi-misi') ?>">Visi & Misi</a></li>
          <li><a class="nav-link scrollto <?= $this->uri->segment(1) ==
                                            'struktur-organisasi'
                                            ? 'active"'
                                            : '' ?>" href="<?= site_url(
                                                              'struktur-organisasi'
                                                            ) ?>">Struktur Organisasi</a></li>
          <li><a class="nav-link scrollto <?= $this->uri->segment(1) ==
                                            'kementerian'
                                            ? 'active"'
                                            : '' ?>" href="<?= site_url(
                                                              'kementerian'
                                                            ) ?>">Kementerian</a></li>
          <li><a class="nav-link scrollto <?= $this->uri->segment(1) == 'hima'
                                            ? 'active"'
                                            : '' ?>" href="<?= site_url('hima') ?>">HIMA</a></li>
          <li><a class="nav-link scrollto <?= $this->uri->segment(1) == 'ukm'
                                            ? 'active"'
                                            : '' ?>" href="<?= site_url('ukm') ?>">UKM</a></li>
          <?php
          if ($this->session->userdata('login_status') == NULL) { ?>
            <li><a class="nav-link scrollto">LOGIN</a></li>
          <?php } else { ?>
            <li><a class="nav-link scrollto">Logout</a></li>
          <?php }
          ?>

        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <!-- <div class="header-social-links d-flex align-items-center">
        <?php foreach ($sosmed as $list_sosmed) { ?>
          <a href="<?= $list_sosmed->link ?>" class="twitter"><i class="<?= $list_sosmed->icon ?>"></i></a>
        <?php } ?>

      </div> -->

    </div>
  </header><!-- End Header -->
  <?= $contents ?>
  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>BEM UNIVAL</span></strong>. All Rights Reserved
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="<?= base_url() ?>_temp/frontend/vendor/aos/aos.js"></script>
  <script src="<?= base_url() ?>_temp/frontend/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<?= base_url() ?>_temp/frontend/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="<?= base_url() ?>_temp/frontend/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="<?= base_url() ?>_temp/frontend/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="<?= base_url() ?>_temp/frontend/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="<?= base_url() ?>_temp/frontend/js/main.js"></script>

</body>

</html>
<script type="text/javascript">
  $(document).ready(function($) {
    var url = window.location.href;
    $('.nav li a[href="' + url + '"]').addClass('active');
  });
</script>