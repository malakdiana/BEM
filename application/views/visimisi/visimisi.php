<main id="main">
<!-- ======= Features Section ======= -->

<section id="features" class="features">
      <div class="container">
      <div class="section-title" data-aos="fade-up" >
          <h2 style="margin-top:50px;">Visi Misi</h2>
        </div>
        <div class="row">
          <div class="col-lg-6 mt-2 mb-tg-0 order-2 order-lg-1">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item" data-aos="fade-up">
                <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">
                  <h4>Visi</h4>
                  <p><?=$row[0]->visi?></p>
                </a>
              </li>
              <li class="nav-item mt-2" data-aos="fade-up" data-aos-delay="100">
                <a class="nav-link show" data-bs-toggle="tab" href="#tab-2">
                  <h4>Misi</h4>
                  <p><?=$row[0]->misi?></p>
                </a>
              </li>
    
            </ul>
          </div>
          <div class="col-lg-6 order-1 order-lg-2" data-aos="zoom-in">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <figure>
                  <img src="<?=base_url()?>_temp/frontend/img/features-1.png" alt="" class="img-fluid">
                </figure>
              </div>
              <div class="tab-pane " id="tab-2">
                <figure>
                  <img src="<?=base_url()?>_temp/frontend/img/features-2.png" alt="" class="img-fluid">
                </figure>
              </div>
              <div class="tab-pane" id="tab-3">
                <figure>
                  <img src="<?=base_url()?>_temp/frontend/img/features-3.png" alt="" class="img-fluid">
                </figure>
              </div>
              <div class="tab-pane" id="tab-4">
                <figure>
                  <img src="<?=base_url()?>_temp/frontend/img/features-4.png" alt="" class="img-fluid">
                </figure>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Features Section -->
