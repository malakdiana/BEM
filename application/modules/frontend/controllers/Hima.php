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
    $detail = $this->base->get('organisasi', ['seo_name' => $id])->result();
    $data = [
      'row'     => $detail,
      'general' => $this->base->get('general_setting')->result(),
      'sosmed'  => $this->base->get('sosial_media')->result(),
      'title'   => 'UKM',
      'berita'  => $this->base->get('artikel', ['organisasi_id' => $detail[0]->id], NULL, 4),
    ];

    // var_dump($data['berita']);
    $this->frontend->load('template', 'hima/detail_hima', $data);
  }

  function artikel()
  {
    $data = [
      'row' => $this->base->get('organisasi', ['kategori' => "HIMA"])->result(),
      'general' => $this->base->get('general_setting')->result(),
      'sosmed' => $this->base->get('sosial_media')->result(),
      'title' => 'Organisasi'
    ];
    //$data['total_rows']  = $this->base->count();
    $data['pagination']  = $this->base->makePagination(
      base_url('hima'),
      2,
      10
    );
    $this->frontend->load('template', 'hima/artikel', $data);
  }
}
