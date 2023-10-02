<main id="main">
<style>
.image-container {
    text-align: center; /* Center align the contents horizontally */
}

img {
    max-width: 100%; /* Ensure the image doesn't exceed its container's width */
    height: auto; /* Maintain the image's aspect ratio */
}

.image-number {
    font-size: 15px; /* Set the font size for the image number */
    color: #333; /* Set the text color */
    margin-top: 10px; /* Add some space between the image and the number */
}

</style>
<!-- ======= Breadcrumbs ======= -->
<section id="breadcrumbs" class="breadcrumbs" style="border-bottom:2px solid #e9ecee">
  <div class="container">

    <ol>
      <li><a href="index.html">HIMA</a></li>
      <li>HIMA</li>
    </ol>
    <h2>HIMA</h2>

  </div>
</section><!-- End Breadcrumbs -->
<!--================News Area =================-->
<section class="news_area p_100">
   <div class="container">
      <div class="row">
         <div class="col-lg-12">
            <div class="main_title2">
               <h2>All News </h2>
            </div>
            <div class="magazine-view">
                  <div class='fbt_magazine-blog-post fbt-index-post row align-items-center justify-content-between'>
                     <div class='col-xl-6 col-md-5'>
                        <div class='fbt-post-thumbnail'>
                           <a href='#'>
                              <img alt='' class='post-thumbnail lazyloaded' src='<?= base_url() ?>_temp/uploads/img/<?=$row[0]->foto_kepengurusan?>'>
                           </a>
                        </div>
                     </div>
                     <div class='col-xl-6 col-md-7'>
                        <div class='fbt-post-caption mt-3 mt-md-0'>
                           <div class="choice_text">
                              <a href=''>
                                 <h4>Judul</h4>
                              </a>
                           </div>
                           <div class='post-meta mb-2'>
                              <span class='post-author'>Penulis</span> -
                              <span class='post-date published'>12 Oktober 2023</span>
                           </div>
                           <p class='post-excerpt'>
                           <p><?= character_limiter("contoh artikel bla blas badhbd jfhdhbc bbdhsbs ahabs asbsb dnnd bdgd anhsbd ndbdb bdb", 100) ?></p>
                           </p>
                        </div>
                     </div>
                  </div>
            </div>

            <!-- Pagination -->
            <div class="row mt-5">
               <div class="col">
                  <nav aria-label="Page navigation example">
                       <?= $pagination ?> 
                     
                  </nav>
               </div>
            </div>
            <!-- End of Pagination -->

         </div>
      </div>
   </div>
</section>