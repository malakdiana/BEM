<style>
#fullscreen-image-container {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.9);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 999;
}

#fullscreen-image {
    max-width: 100%;
    max-height: 100%;
    margin: auto;
    display: block;
}

</style>
<main id="main">
<section id="features" class="features" style="border-bottom:2px solid #e9ecee">
      <div class="container">
      <div class="section-title" data-aos="fade-up" >
          <h2 style="margin-top:50px;">Struktur Organisasi</h2>
        </div>
    <div class="col-lg-12 order-1 order-lg-2" data-aos="zoom-in" >
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1" >
                <img src="<?=site_url()?>_temp/uploads/img/<?=$row[0]->path?>" alt="Full Screen Image" id="fullscreen-image">

                
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Features Section -->
