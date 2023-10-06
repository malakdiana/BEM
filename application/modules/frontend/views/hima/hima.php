<style>
  @keyframes popup {
    0% {
      transform: scale(0.7);
    }

    50% {
      transform: scale(0.7);
    }

    60% {
      transform: scale(0.7);
    }

    70% {
      transform: scale(0.7);
    }

    80% {
      transform: scale(0.8);
    }

    90% {
      transform: scale(0.9);
    }

    100% {
      transform: scale(1);
    }
  }

  #animated-div {
    animation: popup 0.3s;
    ;
  }
</style>
<main id="main">
  <!-- ======= Portfolio Section ======= -->
  <section id="services" class="services section-bg" style="border-bottom:2px solid #e9ecee">
    <div class="container">

      <div class="section-title" data-aos="fade-up">
        <h2 style="margin-top:50px">HIMPUNAN MAHASISWA</h2>
        <p>organisasi mahasiswa tingkat jurusan atau program studi yang memiliki tujuan sama dengan perguruan tinggi untuk mengembangkan minat bakat mahasiswa baik di bidang akademik maupun non akademik.</p>
      </div>

      <div class="row">
        <?php foreach ($row as $hima) { ?>
          <div id="animated-div" class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="zoom-in" style="margin-top:5px">
            <div class="icon-box icon-box-pink" style="min-width: -webkit-fill-available">
              <div class="icon"> <img src="<?= site_url() ?>_temp/uploads/img/270923211220_download_(2).png" class="img-fluid" style="hight:100px; width:100px;" alt=""></div>
              <h4 class="title"><a href=""><?= $hima->nama ?></a></h4>
              <p class="description" style="text-align:initial"><?php echo substr($hima->deskripsi, 0, 100); ?></p>
              <a href="<?= site_url('hima/detail/' . $hima->seo_name) ?>">Lihat Selengkapnya</a>
            </div>
          </div>
        <?php } ?>
      </div>

    </div>
  </section>
</main>