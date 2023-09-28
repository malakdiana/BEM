<?php
defined('BASEPATH') or exit('No direct script access allowed');

// require_once APPPATH . 'modules/mcrud/controllers/Dicoba.php';

class Hima extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model("m_crud_generator/M_crud_generator_model", "model");
    $this->load->model("Base_model", "base");
  }

  function index()
  {
    $data = [
      'row' => $this->base->get('organisasi', ['kategori' => "HIMA"])->result(),
      'general' => $this->base->get('general_setting')->result(),
      'sosmed' => $this->base->get('sosial_media')->result(),
      'title' => 'Organisasi'
    ];
    $this->frontend->load('template', 'hima/hima', $data);
    // var_dump(slugify('Testing JUDUL pertama'));
  }

  function detail($id)
  {
    $data = [
      'row' => $this->base->get('organisasi', ['seo_name' => $id])->result(),
      'general' => $this->base->get('general_setting')->result(),
      'sosmed' => $this->base->get('sosial_media')->result(),
      'title' => 'UKM'
    ];
    $this->frontend->load('template', 'hima/detail_hima', $data);
  }


}
