<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 25/09/2023 21:12*/
/*| Please DO NOT modify this information*/


class General_setting extends Backend{

private $title = "General Setting";


public function __construct()
{
  $config = array(
    'title' => $this->title,
   );
  parent::__construct($config);
  $this->load->model("General_setting_model","model");
}

function index()
{
  $this->is_allowed('general_setting_list');
  $this->template->set_title($this->title);
  $this->template->view("index");
}

function json()
{
  if ($this->input->is_ajax_request()) {
    if (!is_allowed('general_setting_list')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $list = $this->model->get_datatables();
    $data = array();
    foreach ($list as $row) {
        $rows = array();
                $rows[] = $row->nama_website;
                $rows[] = is_image($row->logo);
                $rows[] = $row->alamat;
                $rows[] = $row->telepon;
                $rows[] = $row->email;
        
        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="'.url("general_setting/detail/".enc_url($row->id)).'" id="detail" class="btn btn-primary" title="'.cclang("detail").'">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="'.url("general_setting/update/".enc_url($row->id)).'" id="update" class="btn btn-warning" title="'.cclang("update").'">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="'.url("general_setting/delete/".enc_url($row->id)).'" id="delete" class="btn btn-danger" title="'.cclang("delete").'">
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
  if(!is_allowed('general_setting_filter'))
  {
    echo "access not permission";
  }else{
    $this->template->view("filter",[],false);
  }
}

function detail($id)
{
  $this->is_allowed('general_setting_detail');
    if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title("Detail ".$this->title);
    $data = array(
          "nama_website" => $row->nama_website,
          "logo" => $row->logo,
          "alamat" => $row->alamat,
          "telepon" => $row->telepon,
          "email" => $row->email,
    );
    $this->template->view("view",$data);
  }else{
    $this->error404();
  }
}

function add()
{
  $this->is_allowed('general_setting_add');
  $this->template->set_title(cclang("add")." ".$this->title);
  $data = array('action' => url("general_setting/add_action"),
                  'nama_website' => set_value("nama_website"),
                  'logo' => set_value("logo"),
                  'alamat' => set_value("alamat"),
                  'telepon' => set_value("telepon"),
                  'email' => set_value("email"),
                  );
  $this->template->view("add",$data);
}

function add_action()
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('general_setting_add')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("nama_website","* Nama website","trim|xss_clean");
    $this->form_validation->set_rules("logo","* Logo","trim|xss_clean");
    $this->form_validation->set_rules("alamat","* Alamat","trim|xss_clean");
    $this->form_validation->set_rules("telepon","* Telepon","trim|xss_clean");
    $this->form_validation->set_rules("email","* Email","trim|xss_clean|valid_email");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['nama_website'] = $this->input->post('nama_website',true);
      $save_data['logo'] = $this->imageCopy($this->input->post('logo',true),$_POST['file-dir-logo']);
      $save_data['alamat'] = $this->input->post('alamat',true);
      $save_data['telepon'] = $this->input->post('telepon',true);
      $save_data['email'] = $this->input->post('email',true);

      $this->model->insert($save_data);

      set_message("success",cclang("notif_save"));
      $json['redirect'] = url("general_setting");
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
  $this->is_allowed('general_setting_update');
  if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title(cclang("update")." ".$this->title);
    $data = array('action' => url("general_setting/update_action/$id"),
                  'nama_website' => set_value("nama_website", $row->nama_website),
                  'logo' => set_value("logo", $row->logo),
                  'alamat' => set_value("alamat", $row->alamat),
                  'telepon' => set_value("telepon", $row->telepon),
                  'email' => set_value("email", $row->email),
                  );
    $this->template->view("update",$data);
  }else {
    $this->error404();
  }
}

function update_action($id)
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('general_setting_update')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("nama_website","* Nama website","trim|xss_clean");
    $this->form_validation->set_rules("logo","* Logo","trim|xss_clean");
    $this->form_validation->set_rules("alamat","* Alamat","trim|xss_clean");
    $this->form_validation->set_rules("telepon","* Telepon","trim|xss_clean");
    $this->form_validation->set_rules("email","* Email","trim|xss_clean|valid_email");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['nama_website'] = $this->input->post('nama_website',true);
      $save_data['logo'] = $this->imageCopy($this->input->post('logo',true),$_POST['file-dir-logo']);
      $save_data['alamat'] = $this->input->post('alamat',true);
      $save_data['telepon'] = $this->input->post('telepon',true);
      $save_data['email'] = $this->input->post('email',true);

      $save = $this->model->change(dec_url($id), $save_data);

      set_message("success",cclang("notif_update"));

      $json['redirect'] = url("general_setting");
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
    if (!is_allowed('general_setting_delete')) {
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

/* End of file General_setting.php */
/* Location: ./application/modules/general_setting/controllers/backend/General_setting.php */
