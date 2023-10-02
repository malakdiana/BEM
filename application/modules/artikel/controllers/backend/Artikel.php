<?php defined('BASEPATH') or exit('No direct script access allowed');
/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 02/10/2023 10:25*/
/*| Please DO NOT modify this information*/


class Artikel extends Backend
{

  private $title = "Berita Kegiatan";


  public function __construct()
  {
    $config = array(
      'title' => $this->title,
    );
    parent::__construct($config);
    $this->load->model("Artikel_model", "model");
  }

  function index()
  {
    $this->is_allowed('artikel_list');
    $this->template->set_title($this->title);
    $this->template->view("index");
  }

  function json()
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('artikel_list')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $list = $this->model->get_datatables();
      $data = array();
      foreach ($list as $row) {
        $rows = array();
        $rows[] = $row->title;
        $rows[] = is_image($row->image);
        $rows[] = $row->content;
        $rows[] = date("d-m-Y H:i",  strtotime($row->createdOn));
        $rows[] = $row->nama;

        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="' . url("artikel/detail/" . enc_url($row->id)) . '" id="detail" class="btn btn-primary" title="' . cclang("detail") . '">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="' . url("artikel/update/" . enc_url($row->id)) . '" id="update" class="btn btn-warning" title="' . cclang("update") . '">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="' . url("artikel/delete/" . enc_url($row->id)) . '" id="delete" class="btn btn-danger" title="' . cclang("delete") . '">
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
    if (!is_allowed('artikel_filter')) {
      echo "access not permission";
    } else {
      $this->template->view("filter", [], false);
    }
  }

  function detail($id)
  {
    $this->is_allowed('artikel_detail');
    if ($row = $this->model->get_detail(dec_url($id))) {
      $this->template->set_title("Detail " . $this->title);
      $data = array(
        "title" => $row->title,
        "image" => $row->image,
        "content" => $row->content,
        "createdOn" => $row->createdOn,
        "organisasi_id" => $row->nama,
      );
      $this->template->view("view", $data);
    } else {
      $this->error404();
    }
  }

  function add()
  {
    $this->is_allowed('artikel_add');
    $this->template->set_title(cclang("add") . " " . $this->title);
    $data = array(
      'action' => url("artikel/add_action"),
      'title' => set_value("title"),
      'image' => set_value("image"),
      'content' => set_value("content"),
      'createdOn' => set_value("createdOn"),
      'organisasi_id' => set_value("organisasi_id"),
    );
    $this->template->view("add", $data);
  }

  function add_action()
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('artikel_add')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $json = array('success' => false);
      $this->form_validation->set_rules("title", "* Title", "trim|xss_clean|required");
      $this->form_validation->set_rules("image", "* Image", "trim|xss_clean|required");
      $this->form_validation->set_rules("content", "* Content", "trim|xss_clean|required");
      $this->form_validation->set_rules("createdOn", "* CreatedOn", "trim|xss_clean");
      $this->form_validation->set_rules("organisasi_id", "* Organisasi id", "trim|xss_clean|required");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['title'] = $this->input->post('title', true);
        $save_data['seo_title'] = slugify($this->input->post('title', true));
        $save_data['image'] = $this->imageCopy($this->input->post('image', true), $_POST['file-dir-image']);
        $save_data['content'] = $this->input->post('content', true);
        $save_data['organisasi_id'] = $this->input->post('organisasi_id', true);
        $save_data['createdOn'] = date('Y-m-d H:i:s');

        $this->model->insert($save_data);

        set_message("success", cclang("notif_save"));
        $json['redirect'] = url("artikel");
        $json['success'] = true;
      } else {
        foreach ($_POST as $key => $value) {
          $json['alert'][$key] = form_error($key);
        }
      }

      $this->response($json);
    }
  }

  function update($id)
  {
    $this->is_allowed('artikel_update');
    if ($row = $this->model->find(dec_url($id))) {
      $this->template->set_title(cclang("update") . " " . $this->title);
      $data = array(
        'action' => url("artikel/update_action/$id"),
        'title' => set_value("title", $row->title),
        'image' => set_value("image", $row->image),
        'content' => set_value("content", $row->content),
        'createdOn' => $row->createdOn == "" ? "" : date("Y-m-d",  strtotime($row->createdOn)) . "T" . date("H:i",  strtotime($row->createdOn)),
        'organisasi_id' => set_value("organisasi_id", $row->organisasi_id),
      );
      $this->template->view("update", $data);
    } else {
      $this->error404();
    }
  }

  function update_action($id)
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('artikel_update')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $json = array('success' => false);
      $this->form_validation->set_rules("title", "* Title", "trim|xss_clean|required");
      $this->form_validation->set_rules("image", "* Image", "trim|xss_clean|required");
      $this->form_validation->set_rules("content", "* Content", "trim|xss_clean|required");
      $this->form_validation->set_rules("createdOn", "* CreatedOn", "trim|xss_clean");
      $this->form_validation->set_rules("organisasi_id", "* Organisasi id", "trim|xss_clean|required");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['title'] = $this->input->post('title', true);
        $save_data['seo_title'] = slugify($this->input->post('title', true));
        $save_data['image'] = $this->imageCopy($this->input->post('image', true), $_POST['file-dir-image']);
        $save_data['content'] = $this->input->post('content', true);
        $save_data['organisasi_id'] = $this->input->post('organisasi_id', true);
        $save_data['createdOn'] = date('Y-m-d H:i:s');

        $save = $this->model->change(dec_url($id), $save_data);

        set_message("success", cclang("notif_update"));

        $json['redirect'] = url("artikel");
        $json['success'] = true;
      } else {
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
      if (!is_allowed('artikel_delete')) {
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

/* End of file Artikel.php */
/* Location: ./application/modules/artikel/controllers/backend/Artikel.php */
