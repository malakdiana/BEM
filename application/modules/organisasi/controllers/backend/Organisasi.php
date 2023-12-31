<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 28/09/2023 12:43*/
/*| Please DO NOT modify this information*/


class Organisasi extends Backend{

private $title = "Organisasi";


public function __construct()
{
  $config = array(
    'title' => $this->title,
   );
  parent::__construct($config);
  $this->load->model("Organisasi_model","model");
  $this->load->helper('seo');
}

function index()
{
  $this->is_allowed('organisasi_list');
  $this->template->set_title($this->title);
  $this->template->view("index");
}

function json()
{
  if ($this->input->is_ajax_request()) {
    if (!is_allowed('organisasi_list')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $list = $this->model->get_datatables();
    $data = array();
    foreach ($list as $row) {
        $rows = array();
                $rows[] = $row->kategori;
                $rows[] = $row->nama;
                $rows[] = $row->deskripsi;
                $rows[] = is_image($row->image);
                $rows[] = is_image($row->foto_kepengurusan);
                $rows[] = $row->seo_name;
        
        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="'.url("organisasi/detail/".enc_url($row->id)).'" id="detail" class="btn btn-primary" title="'.cclang("detail").'">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="'.url("organisasi/update/".enc_url($row->id)).'" id="update" class="btn btn-warning" title="'.cclang("update").'">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="'.url("organisasi/delete/".enc_url($row->id)).'" id="delete" class="btn btn-danger" title="'.cclang("delete").'">
                        <i class="ti-trash"></i>
                      </a>
                    </div>
                 ';

        $data[] = $rows;
    }

    $output = array(
                    "draw" => $_POST['draw'],
                    "recordsTotal" => $this->model->count_all(),
                    "recordsFiltered" => $this->model->count_filtered(),
                    "data" => $data,
            );
    //output to json format
    return $this->response($output);
  }
}

function filter()
{
  if(!is_allowed('organisasi_filter'))
  {
    echo "access not permission";
  }else{
    $this->template->view("filter",[],false);
  }
}

function detail($id)
{
  $this->is_allowed('organisasi_detail');
    if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title("Detail ".$this->title);
    $data = array(
          "kategori" => $row->kategori,
          "nama" => $row->nama,
          "deskripsi" => $row->deskripsi,
          "image" => $row->image,
          "foto_kepengurusan" => $row->foto_kepengurusan,
          "seo_name" => $row->seo_name,
    );
    $this->template->view("view",$data);
  }else{
    $this->error404();
  }
}

function add()
{
  $this->is_allowed('organisasi_add');
  $this->template->set_title(cclang("add")." ".$this->title);
  $data = array('action' => url("organisasi/add_action"),
                  'kategori' => set_value("kategori"),
                  'nama' => set_value("nama"),
                  'deskripsi' => set_value("deskripsi"),
                  'image' => set_value("image"),
                  'foto_kepengurusan' => set_value("foto_kepengurusan"),
                  'seo_name' => set_value("seo_name"),
                  );
  $this->template->view("add",$data);
}

function add_action()
{
  //if($this->input->is_ajax_request()){
    if (!is_allowed('organisasi_add')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("kategori","* Kategori","trim|xss_clean");
    $this->form_validation->set_rules("nama","* Nama","trim|xss_clean");
    $this->form_validation->set_rules("deskripsi","* Deskripsi","trim|xss_clean");
    $this->form_validation->set_rules("image","* Image","trim|xss_clean");
    $this->form_validation->set_rules("foto_kepengurusan","* Foto kepengurusan","trim|xss_clean");
    $this->form_validation->set_rules("seo_name","* Seo name","trim|xss_clean");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['kategori'] = $this->input->post('kategori',true);
      $save_data['nama'] = $this->input->post('nama',true);
      $save_data['deskripsi'] = $this->input->post('deskripsi',true);
      $save_data['image'] = $this->imageCopy($this->input->post('image',true),$_POST['file-dir-image']);
      $save_data['foto_kepengurusan'] = $this->imageCopy($this->input->post('foto_kepengurusan',true),$_POST['file-dir-foto_kepengurusan']);
      $save_data['seo_name'] = slugify($this->input->post('nama', true));

      // var_dump($save_data['seo_name']);
      $this->model->insert($save_data);

      set_message("success",cclang("notif_save"));
      redirect('cpanel/organisasi');
      // $json['redirect'] = url("organisasi");
      // $json['success'] = true;
    }else {
      set_message("Error", cclang("notif_save"));
    }

  //   $this->response($json);
  // }
}

function update($id)
{
  $this->is_allowed('organisasi_update');
  if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title(cclang("update")." ".$this->title);
    $data = array('action' => url("organisasi/update_action/$id"),
                  'kategori' => set_value("kategori", $row->kategori),
                  'nama' => set_value("nama", $row->nama),
                  'deskripsi' => set_value("deskripsi", $row->deskripsi),
                  'image' => set_value("image", $row->image),
                  'foto_kepengurusan' => set_value("foto_kepengurusan", $row->foto_kepengurusan),
                  'seo_name' => set_value("seo_name", $row->seo_name),
                  );
    $this->template->view("update",$data);
  }else {
    $this->error404();
  }
}

function update_action($id)
{
  //if($this->input->is_ajax_request()){
    if (!is_allowed('organisasi_update')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("kategori","* Kategori","trim|xss_clean");
    $this->form_validation->set_rules("nama","* Nama","trim|xss_clean");
    $this->form_validation->set_rules("deskripsi","* Deskripsi","trim|xss_clean");
    $this->form_validation->set_rules("image","* Image","trim|xss_clean");
    $this->form_validation->set_rules("foto_kepengurusan","* Foto kepengurusan","trim|xss_clean");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $post = $this->input->post(null, true);
      $save_data['kategori'] = $this->input->post('kategori',true);
      $save_data['nama'] = $this->input->post('nama',true);
      $save_data['deskripsi'] = $this->input->post('deskripsi',true);
      $save_data['image'] = $this->imageCopy($this->input->post('image',true),$_POST['file-dir-image']);
      $save_data['foto_kepengurusan'] = $this->imageCopy($this->input->post('foto_kepengurusan',true),$_POST['file-dir-foto_kepengurusan']);
      $save_data['seo_name'] = slugify($post['nama']);

      $save = $this->model->change(dec_url($id), $save_data);

      set_message("success",cclang("notif_update"));
      redirect('cpanel/organisasi');
      // $json['redirect'] = url("organisasi");
      // $json['success'] = true;
    }else {
      set_message("Error", cclang("notif_save"));
      // redirect('cpanel/organisasi');
      
    }

    //$this->response($json);
 // }
}

function delete($id)
{
  if ($this->input->is_ajax_request()) {
    if (!is_allowed('organisasi_delete')) {
      return $this->response([
        'type_msg' => "error",
        'msg' => "do not have permission to access"
      ]);
    }

      $this->model->remove(dec_url($id));
      $json['type_msg'] = "success";
      $json['msg'] = cclang("notif_delete");


    return $this->response($json);
  }
}


}

/* End of file Organisasi.php */
/* Location: ./application/modules/organisasi/controllers/backend/Organisasi.php */
