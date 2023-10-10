<main id="main">
  <style>
    .image-container {
      text-align: center;
      /* Center align the contents horizontally */
    }

    img {
      max-width: 100%;
      /* Ensure the image doesn't exceed its container's width */
      height: auto;
      /* Maintain the image's aspect ratio */
    }

    .image-number {
      font-size: 15px;
      /* Set the font size for the image number */
      color: #333;
      /* Set the text color */
      margin-top: 10px;
      /* Add some space between the image and the number */
    }
  </style>
  <!-- ======= Breadcrumbs ======= -->
  <section id="breadcrumbs" class="breadcrumbs" style="border-bottom:2px solid #e9ecee">
    <div class="container">

      <ol>
        <li><a href="<?= site_url('kementerian')?>">Kementerian</a></li>
        <li><?= $row[0]->nama ?></li>
      </ol>
      <h2><?= $row[0]->nama ?></h2>

    </div>
  </section><!-- End Breadcrumbs -->

  <section class="inner-page">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 mt-2 mb-tg-0 order-2 order-lg-1">
          <div class="row">
            <div class="col-lg-12">
              <center>
                <img src="<?= base_url() ?>_temp/uploads/img/<?= $row[0]->image ?>" alt="" class="img-fluid gambar-logo">
              </center>
              <p><?= $row[0]->deskripsi ?></p>
            </div>
            <div class="col-lg-12 image-container">
            <?php
              if ($row[0]->foto_kepengurusan != '') { ?>
              <img src="<?= base_url() ?>_temp/uploads/img/<?= $row[0]->foto_kepengurusan ?>" alt="" class="img-fluid">
              <p class="image-number">Gambar Struktur Kepengurusan <?= $row[0]->nama ?></p>
                <?php } ?>
            </div>
          </div>
        </div>
        <!-- <div class="col-lg-4 order-1 order-lg-2" data-aos="zoom-in">
          <div class="tab-content">
            <div class="tab-pane active show" id="tab-1">
              <figure style="align: center">
                <img src="<?= base_url() ?>_temp/uploads/img/<?= $row[0]->image ?>" alt="" class="img-fluid">
              </figure>
            </div>
          </div>
        </div> -->
      </div>
    </div>
  </section>
</main><!-- End #main -->