<div class="row">
  <div class="col-md-12 col-xl-12 mx-auto animated fadeIn delay-2s">
    <div class="card m-b-30">
      <div class="card-header bg-primary text-white">
        <?= ucwords($title_module) ?>
      </div>
      <div class="card-body">
        <div class="mb-2">
          <a href="<?= url("artikel/add") ?>" class="btn btn-sm btn-success btn-icon-text"><i class="fa fa-file btn-icon-prepend"></i><?= cclang("add_new") ?></a>
          <button type="button" id="reload" class="btn btn-sm btn-info-2 btn-icon-text"><i class="mdi mdi-backup-restore btn-icon-prepend"></i> Reload</button>
          <a href="<?= url("artikel/filter/") ?>" id="filter-show" class="btn btn-sm btn-primary btn-icon-text"><i class="mdi mdi-magnify btn-icon-prepend"></i> Filter</a>
        </div>

        <form autocomplete="off" class="content-filter">
          <div class="row">
            <div class="form-group col-md-6">
              <input type="text" id="title" class="form-control form-control-sm" placeholder="Title" />
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="image" class="form-control form-control-sm" placeholder="Image" />
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="content" class="form-control form-control-sm" placeholder="Content" />
            </div>

            <div class="form-group col-md-6">
              <input type="datetime-local" id="createdOn" class="form-control form-control-sm" placeholder="CreatedOn" />
            </div>

            <div class="form-group col-md-6">
              <!--
                          app_helper.php - methode is_select
                          is_select("table", "attribute`id & name`", "value", "label", "entry_value`optional`");
                        --->
              <?= is_select_filter("organisasi", "organisasi_id", "id", "nama", "Organisasi id"); ?>
            </div>

            <div class="col-md-12">
              <button type='button' class='btn btn-default btn-sm' id="filter-cancel"><?= cclang("cancel") ?></button>
              <button type="button" class="btn btn-primary btn-sm" id="filter">Filter</button>
            </div>
          </div>
        </form>

        <div class="table-responsive">
          <table class="table table-bordered table-striped" id="table" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
            <thead>
              <tr>
                <th>Title</th>
                <th>Image</th>
                <th>Content</th>
                <th>CreatedOn</th>
                <th>Organisasi id</th>
                <th>#</th>
              </tr>
            </thead>

          </table>
        </div>
      </div>
    </div>
  </div>
</div>




<script type="text/javascript">
  $(document).ready(function() {
    var table;
    //datatables
    table = $('#table').DataTable({

      "processing": true, //Feature control the processing indicator.
      "serverSide": true, //Feature control DataTables' server-side processing mode.
      "order": [], //Initial no order.
      "ordering": true,
      "searching": false,
      "info": true,
      "bLengthChange": false,
      oLanguage: {
        sProcessing: '<i class="fa fa-spinner fa-spin fa-fw"></i> Loading...'
      },

      // Load data for the table's content from an Ajax source
      "ajax": {
        "url": "<?= url("artikel/json") ?>",
        "type": "POST",
        "data": function(data) {
          data.title = $("#title").val();
          data.image = $("#image").val();
          data.content = $("#content").val();
          data.createdOn = $("#createdOn").val();
          data.organisasi_id = $("#organisasi_id").val();
        }
      },

      //Set column definition initialisation properties.
      "columnDefs": [

        {
          "targets": 0,
          "orderable": false
        },

        {
          "targets": 1,
          "orderable": false
        },

        {
          "targets": 2,
          "orderable": false
        },

        {
          "targets": 3,
          "orderable": false
        },

        {
          "targets": 4,
          "orderable": false
        },

        {
          "className": "text-center",
          "orderable": false,
          "targets": 5
        },
      ],
    });

    $("#reload").click(function() {
      $("#title").val("");
      $("#image").val("");
      $("#content").val("");
      $("#createdOn").val("");
      $("#organisasi_id").val("");
      table.ajax.reload();
    });

    $(document).on("click", "#filter-show", function(e) {
      e.preventDefault();
      $(".content-filter").slideDown();
    });

    $(document).on("click", "#filter", function(e) {
      e.preventDefault();
      $("#table").DataTable().ajax.reload();
    })

    $(document).on("click", "#filter-cancel", function(e) {
      e.preventDefault();
      $(".content-filter").slideUp();
    });

    $(document).on("click", "#delete", function(e) {
      e.preventDefault();
      $('.modal-dialog').addClass('modal-sm');
      $("#modalTitle").text('<?= cclang("confirm") ?>');
      $('#modalContent').html(`<p class="mb-4"><?= cclang("delete_description") ?></p>
  														<button type='button' class='btn btn-default btn-sm' data-dismiss='modal'><?= cclang("cancel") ?></button>
  	                          <button type='button' class='btn btn-primary btn-sm' id='ya-hapus' data-id=` + $(this).attr('alt') + `  data-url=` + $(this).attr('href') + `><?= cclang("delete_action") ?></button>
  														`);
      $("#modalGue").modal('show');
    });


    $(document).on('click', '#ya-hapus', function(e) {
      $(this).prop('disabled', true)
        .text('Processing...');
      $.ajax({
        url: $(this).data('url'),
        type: 'POST',
        cache: false,
        dataType: 'json',
        success: function(json) {
          $('#modalGue').modal('hide');
          swal(json.msg, {
            icon: json.type_msg
          });
          $('#table').DataTable().ajax.reload();
        }
      });
    });


  });
</script>