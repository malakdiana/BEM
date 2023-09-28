<main id="main">

<!-- ======= Breadcrumbs ======= -->
<section id="breadcrumbs" class="breadcrumbs" style="border-bottom:2px solid #e9ecee">
  <div class="container">

    <ol>
      <li><a href="index.html">UKM</a></li>
      <li><?=$row[0]->nama?></li>
    </ol>
    <h2><?=$row[0]->nama?></h2>

  </div>
</section><!-- End Breadcrumbs -->

<section class="inner-page">
  <div class="container">
    <div class="row">
        <div class="col-lg-8 mt-2 mb-tg-0 order-2 order-lg-1">
            <p><?=$row[0]->deskripsi?></p>
        </div>
        <div class="col-lg-4 order-1 order-lg-2" data-aos="zoom-in">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <figure>
                  <img src="<?=base_url()?>_temp/uploads/img/<?=$row[0]->image?>" alt="" class="img-fluid">
                </figure>
              </div>
            </div>
        </div>
    </div>
  </div>
</section>


</main><!-- End #main -->