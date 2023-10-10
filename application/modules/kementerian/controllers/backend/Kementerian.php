<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 10/10/2023 13:31*/
/*| Please DO NOT modify this information*/


class Kementerian extends Backend{

private $title = "Kementerian";


public function __construct()
{
  $config = array(
    'title' => $this->title,
   );
  parent::__construct($config);
  $this->load->model("Kementerian_model","model");
}

function index()
{
  $this->is_allowed('kementerian_list');
  $this->template->set_title($this->title);
  $this->template->view("index");
}

function json()
{
  if ($this->input->is_ajax_request()) {
    if (!is_allowed('kementerian_list')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $list = $this->model->get_datatables();
    $data = array();
    foreach ($list as $row) {
        $rows = array();
                $rows[] = $row->nama;
                $rows[] = is_image($row->image);
                $rows[] = is_image($row->foto_kepengurusan);
        
        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="'.url("kementerian/detail/".enc_url($row->id)).'" id="detail" class="btn btn-primary" title="'.cclang("detail").'">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="'.url("kementerian/update/".enc_url($row->id)).'" id="update" class="btn btn-warning" title="'.cclang("update").'">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="'.url("kementerian/delete/".enc_url($row->id)).'" id="delete" class="btn btn-danger" title="'.cclang("delete").'">
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
  if(!is_allowed('kementerian_filter'))
  {
    echo "access not permission";
  }else{
    $this->template->view("filter",[],false);
  }
}

function detail($id)
{
  $this->is_allowed('kementerian_detail');
    if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title("Detail ".$this->title);
    $data = array(
          "nama" => $row->nama,
          "deskripsi" => $row->deskripsi,
          "image" => $row->image,
          "foto_kepengurusan" => $row->foto_kepengurusan,
    );
    $this->template->view("view",$data);
  }else{
    $this->error404();
  }
}

function add()
{
  $this->is_allowed('kementerian_add');
  $this->template->set_title(cclang("add")." ".$this->title);
  $data = array('action' => url("kementerian/add_action"),
                  'nama' => set_value("nama"),
                  'deskripsi' => set_value("deskripsi"),
                  'image' => set_value("image"),
                  'foto_kepengurusan' => set_value("foto_kepengurusan"),
                  );
  $this->template->view("add",$data);
}

function add_action()
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('kementerian_add')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("nama","* Nama","trim|xss_clean");
    $this->form_validation->set_rules("deskripsi","* Deskripsi","trim|xss_clean");
    $this->form_validation->set_rules("image","* Image","trim|xss_clean");
    $this->form_validation->set_rules("foto_kepengurusan","* Foto kepengurusan","trim|xss_clean");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['nama'] = $this->input->post('nama',true);
      $save_data['deskripsi'] = $this->input->post('deskripsi',true);
      $save_data['image'] = $this->imageCopy($this->input->post('image',true),$_POST['file-dir-image']);
      $save_data['foto_kepengurusan'] = $this->imageCopy($this->input->post('foto_kepengurusan',true),$_POST['file-dir-foto_kepengurusan']);
      $save_data['seo_name'] =  slugify($this->input->post('nama',true));
      
      $this->model->insert($save_data);

      set_message("success",cclang("notif_save"));
      $json['redirect'] = url("kementerian");
      $json['success'] = true;
    }else {
      foreach ($_POST as $key => $value) {
        $json['alert'][$key] = form_error($key);
      }
    }

    $this->response($json);
  }
}

function update($id)
{
  $this->is_allowed('kementerian_update');
  if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title(cclang("update")." ".$this->title);
    $data = array('action' => url("kementerian/update_action/$id"),
                  'nama' => set_value("nama", $row->nama),
                  'deskripsi' => set_value("deskripsi", $row->deskripsi),
                  'image' => set_value("image", $row->image),
                  'foto_kepengurusan' => set_value("foto_kepengurusan", $row->foto_kepengurusan),
                  );
    $this->template->view("update",$data);
  }else {
    $this->error404();
  }
}

function update_action($id)
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('kementerian_update')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("nama","* Nama","trim|xss_clean");
    $this->form_validation->set_rules("deskripsi","* Deskripsi","trim|xss_clean");
    $this->form_validation->set_rules("image","* Image","trim|xss_clean");
    $this->form_validation->set_rules("foto_kepengurusan","* Foto kepengurusan","trim|xss_clean");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['nama'] = $this->input->post('nama',true);
      $save_data['deskripsi'] = $this->input->post('deskripsi',true);
      $save_data['image'] = $this->imageCopy($this->input->post('image',true),$_POST['file-dir-image']);
      $save_data['foto_kepengurusan'] = $this->imageCopy($this->input->post('foto_kepengurusan',true),$_POST['file-dir-foto_kepengurusan']);
      $save_data['seo_name'] =  slugify($this->input->post('nama',true));

      $save = $this->model->change(dec_url($id), $save_data);

      set_message("success",cclang("notif_update"));

      $json['redirect'] = url("kementerian");
      $json['success'] = true;
    }else {
      foreach ($_POST as $key => $value) {
        $json['alert'][$key] = form_error($key);
      }
    }

    $this->response($json);
  }
}

function delete($id)
{
  if ($this->input->is_ajax_request()) {
    if (!is_allowed('kementerian_delete')) {
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

/* End of file Kementerian.php */
/* Location: ./application/modules/kementerian/controllers/backend/Kementerian.php */
