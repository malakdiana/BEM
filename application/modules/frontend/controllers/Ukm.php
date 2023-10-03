<?php
defined('BASEPATH') or exit('No direct script access allowed');

// require_once APPPATH . 'modules/mcrud/controllers/Dicoba.php';

class Ukm extends CI_Controller
{

  protected $title = "M-Crud Generator";
  // protected $data;

  public function __construct()
  {
    parent::__construct();
    $this->load->model("m_crud_generator/M_crud_generator_model", "model");
    $this->load->model("Base_model", "base");
  }

  function index()
  {
    $data = [
      'row' => $this->base->get('organisasi', ['kategori' => "UKM"])->result(),
      'general' => $this->base->get('general_setting')->result(),
      'sosmed' => $this->base->get('sosial_media')->result(),
      'title' => 'Organisasi'
    ];
    $this->frontend->load('template', 'ukm/ukm', $data);
  }

  function detail($id)
  {
    $detail = $this->base->get('organisasi', ['seo_name' => $id])->result();
    $data = [
      'row'     => $detail,
      'general' => $this->base->get('general_setting')->result(),
      'sosmed'  => $this->base->get('sosial_media')->result(),
      'title'   => 'UKM',
      'berita'  => $this->base->get('artikel', ['organisasi_id' => $detail[0]->id], NULL, 4),
    ];
    $this->frontend->load('template', 'hima/detail_hima', $data);
  }
}
