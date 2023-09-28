<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card m-b-30">
      <div class="card-header bg-primary text-white">
        <?=ucwords($title_module)?>
      </div>
      <div class="card-body">
          <form action="<?=$action?>" id="form" autocomplete="off">

          <div class="form-group">
            <label>Sosmed</label>
            <input type="text" class="form-control form-control-sm" placeholder="Sosmed" name="sosmed" id="sosmed">
          </div>

          <div class="form-group">
            <label>Link</label>
            <input type="text" class="form-control form-control-sm" placeholder="Link" name="link" id="link">
          </div>

          <div class="form-group">
            <label>Icon</label>
                <input type="text" id="icon" name="icon" value="<?=$icon?>" class="file-upload-default">
                <div class="input-group col-xs-12">
                  <input type="text" class="form-control file-upload-info form-control-sm" id="icons" value="<?=$icon?>" disabled="" placeholder="Icon">
                  <span class="input-group-append">
                    <button class="file-upload-browse btn btn-primary btn-sm" href="<?=url("core/icon_sosmed")?>" id="icons" type="button">Icon</button>
                    <button class="file-upload-browse btn btn-danger btn-sm" id="icons-remove" type="button"><i class="fa fa-trash"></i></button>
                  </span>
                </div>
          </div>

          <input type="hidden" name="submit" value="add">

          <div class="text-right">
            <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger"><?=cclang("cancel")?></a>
            <button type="submit" id="submit"  class="btn btn-sm btn-primary"><?=cclang("save")?></button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>


<script type="text/javascript">
  $(document).ready(function(){
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

$(document).on("click","#icons",function(e){
    e.preventDefault();
    $('.modal-dialog').removeClass('modal-md')
                      .removeClass('modal-sm')
                      .addClass('modal-lg');
    $("#modalTitle").text('Icon');
    $('#modalContent').load($(this).attr("href"));
    $("#modalGue").modal('show');
  });

  $(document).on("click","#icons-remove",function(e){
    e.preventDefault();
    $("#icon , #icons").val("");
  })
});
</script>
