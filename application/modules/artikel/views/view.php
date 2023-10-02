<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card-header bg-primary text-white">
      <?=ucwords($title_module)?>
    </div>
    <div class="card">
      <div class="card-body">
        <table class="table table-bordered table-striped">
        <tr>
          <td>Title</td>
          <td><?=$title?></td>
        </tr>
        <tr>
          <td>Image</td>
          <td><?=is_image($image)?></td>
        </tr>
        <tr>
          <td>Content</td>
          <td><?=$content?></td>
        </tr>
        <tr>
          <td>CreatedOn</td>
          <td><?=$createdOn != "" ? date('d-m-Y H:i',strtotime($createdOn)):""?></td>
        </tr>
        <tr>
          <td>Organisasi id</td>
          <td><?=$organisasi_id?></td>
        </tr>
        </table>

        <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger mt-3"><?=cclang("back")?></a>
      </div>
    </div>
  </div>
</div>
