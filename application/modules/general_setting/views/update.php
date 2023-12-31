<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card m-b-30">
      <div class="card-header bg-primary text-white">
        <?=ucwords($title_module)?>
      </div>
      <div class="card-body">
          <form action="<?=$action?>" id="form" autocomplete="off">
          
          <div class="form-group">
            <label>Nama website</label>
            <input type="text" class="form-control form-control-sm" placeholder="Nama website" name="nama_website" id="nama_website" value="<?=$nama_website?>">
          </div>
        
          <div class="form-group">
            <label>Logo</label>
            <input type="file" name="img" class="file-upload-default" data-id="logo"/>
            <div class="input-group col-xs-12">
              <input type="hidden" class="file-dir" name="file-dir-logo" data-id="logo"/>
              <input type="text" class="form-control form-control-sm file-upload-info file-name" data-id="logo" placeholder="Logo" readonly name="logo" value="<?=$logo?>" />
            <span class="input-group-append">
              <button class="btn-remove-image btn btn-danger btn-sm" type="button" data-id="logo" style="display:<?=$logo!=''?'block':'none'?>;"><i class="ti-trash"></i></button>
              <button class="file-upload-browse btn btn-primary btn-sm" data-id="logo" type="button">Select File</button>
            </span>
            </div>
            <div id="logo"></div>
          </div>
        
          <div class="form-group">
            <label>Alamat</label>
            <textarea class="form-control form-control-sm" placeholder="Alamat" name="alamat" id="alamat" rows="3" cols="80"><?=$alamat?></textarea>
          </div>
        
          <div class="form-group">
            <label>Telepon</label>
            <input type="text" class="form-control form-control-sm" placeholder="Telepon" name="telepon" id="telepon" value="<?=$telepon?>">
          </div>
        
          <div class="form-group">
            <label>Email</label>
            <input type="text" class="form-control form-control-sm" placeholder="Email" name="email" id="email" value="<?=$email?>">
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


<script type="text/javascript">
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
</script>
