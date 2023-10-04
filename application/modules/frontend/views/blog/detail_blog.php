<main id="main">

<!-- ======= Breadcrumbs ======= -->
<section id="breadcrumbs" class="breadcrumbs" style="border-bottom:2px solid #e9ecee">
  <div class="container">

    <ol>
      <li><a href="index.html">Artikel</a></li>
      <li><?=$row[0]->title?></li>
    </ol>
  

  </div>
</section><!-- End Breadcrumbs -->

<section class="inner-page">
  <div class="container">
    <div class="row">
        
        <div class="col-lg-12 mt-2 mb-tg-0 order-2 order-lg-1">
            <center>
                <img src="<?=base_url()?>_temp/uploads/img/<?=$row[0]->image?>" alt="" class="img-fluid" style="width:552px">
            </center>
            <br>
            <h3><?=$row[0]->title?></h3>
            <br>
            <p><?=$row[0]->content?></p>
        </div>
       
    </div>
  </div>
</section>


</main><!-- End #main -->