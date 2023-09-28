<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card m-b-30">
      <div class="card-header bg-primary text-white">
        <?=ucwords($title_module)?>
      </div>
      <div class="card-body">
          <form action="<?=$action?>" id="form" method="post" autocomplete="off">
          
          <div class="form-group">
            <label>Kategori</label>
            <div class="form-check">
              <label class="form-check-label">
                <input type="radio" <?=($kategori == "HIMA" ? "checked":"")?> class="form-check-input" name="kategori" value="HIMA">
                HIMA
                <i class="input-helper"></i>
              </label>
            </div>
            <div class="form-check">
              <label class="form-check-label">
                <input type="radio" <?=($kategori == "UKM" ? "checked":"")?> class="form-check-input" name="kategori" value="UKM">
                UKM
                <i class="input-helper"></i>
              </label>
            </div>
            <div id="kategori"></div>
          </div>
        
          <div class="form-group">
            <label>Nama</label>
            <input type="text" class="form-control form-control-sm" placeholder="Nama" name="nama" id="nama" value="<?=$nama?>">
          </div>
        
         
          <div class="form-group">
            <label>Image</label>
            <input type="file" name="img" class="file-upload-default" data-id="image"/>
            <div class="input-group col-xs-12">
              <input type="hidden" class="file-dir" name="file-dir-image" data-id="image"/>
              <input type="text" class="form-control form-control-sm file-upload-info file-name" data-id="image" placeholder="Image" readonly name="image" value="<?=$image?>" />
            <span class="input-group-append">
              <button class="btn-remove-image btn btn-danger btn-sm" type="button" data-id="image" style="display:<?=$image!=''?'block':'none'?>;"><i class="ti-trash"></i></button>
              <button class="file-upload-browse btn btn-primary btn-sm" data-id="image" type="button">Select File</button>
            </span>
            </div>
            <div id="image"></div>
          </div>

          <div class="form-group">
            <label>Deskripsi</label>
            <textarea class="form-control form-control-sm ckeditor" placeholder="Deskripsi" name="deskripsi" id="deskripsi" rows="3" cols="80"><?=$deskripsi?></textarea>
          </div>
        
          <!-- <div class="form-group">
            <label>Seo name</label>
            <input type="text" class="form-control form-control-sm" placeholder="Seo name" name="seo_name" id="seo_name" value="<?=$seo_name?>">
          </div> -->
        
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


<!-- <script type="text/javascript">
$("#form").submit(function(e){
e.preventDefault();
var me = $(this);
$("#submit").prop('disabled',true).html('Loading...');
$(".form-group").find('.text-danger').remove();
$.ajax({
      url             : me.attr('action'),
      type            : 'post',
      data            :  new FormData(this),
      contentType     : false,
      cache           : false,
      dataType        : 'JSON',
      processData     :false,
      success:function(json){
        if (json.success==true) {
          location.href = json.redirect;
          return;
        }else {
          $("#submit").prop('disabled',false)
                      .html('<?=cclang("save")?>');
          $.each(json.alert, function(key, value) {
            var element = $('#' + key);
            $(element)
            .closest('.form-group')
            .find('.text-danger').remove();
            $(element).after(value);
          });
        }
      }
    });
});
</script> -->
