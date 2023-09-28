<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card m-b-30">
      <div class="card-header bg-primary text-white">
        <?=ucwords($title_module)?>
      </div>
      <div class="card-body">
          <form action="<?=$action?>" id="form" autocomplete="off" method="post">
          
          <div class="form-group">
            <label>Judul</label>
            <textarea class="form-control form-control-sm" placeholder="Judul" name="judul" id="judul" rows="3" cols="80"><?=$judul?></textarea>
          </div>
        
          <div class="form-group">
            <label>Isi</label>
            <textarea class="form-control form-control-sm ckeditor" placeholder="Isi" name="isi" id="isi" rows="3" cols="80"><?=$isi?></textarea>
          </div>
        
          <input type="hidden" name="submit" value="update">

          <div class="text-right">
            <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger"><?=cclang("cancel")?></a>
            <button type="submit" id="submit"  class="btn btn-sm btn-primary"><?=cclang("update")?></button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

