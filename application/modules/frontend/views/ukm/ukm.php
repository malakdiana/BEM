
<main id="main">
     <!-- ======= Portfolio Section ======= -->
     <section id="team" class="team" style="border-bottom:2px solid #e9ecee">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2 style="margin-top:50px">UNIT KEGIATAN MAHASISWA</h2>
          <p>Tempat berhimpunnya para mahasiswa yang memiliki kesamaan minat, kegemaran, kreativitas, dan orientasi aktivitas penyaluran kegiiatan ekstrakurikuler di dalam kampus</p>
        </div>

        
        
          <div class="row">
          <?php foreach ($row as $ukm) {?>
              <div class="col-lg-4 col-md-6">
                <div class="member" data-aos="zoom-in" style="min-height: 252px;">
                  <div class="pic"><img src="<?=site_url()?>_temp/uploads/img/<?=$ukm->image?>" class="img-fluid" alt="" style="max-width: 200px; "></div>
                  <div class="member-info">
                    <h4><?=$ukm->nama?></h4>
                    <span> <a href="<?= site_url('ukm/detail/'.$ukm->seo_name) ?>">Lihat Selengkapnya</a></span>
                  </div>
                </div>
              </div>
              
          <?php }?>

          </div>

        

       

      </div>
    </section>
</main>