<?php
defined('BASEPATH') or exit('No direct script access allowed');

// require_once APPPATH . 'modules/mcrud/controllers/Dicoba.php';

class Blog extends CI_Controller
{

  protected $title = "M-Crud Generator";
  // protected $data;

  public function __construct()
  {
    parent::__construct();
    $this->load->model("m_crud_generator/M_crud_generator_model", "model");
    $this->load->model("Base_model", "base");
  }

  function index($page = null)
  {
    $data = [
        'row' => $this->base->get('organisasi', ['kategori' => "HIMA"])->result(),
        'artikel' => $this->base->getAllPosting($page),
        'general' => $this->base->get('general_setting')->result(),
        'sosmed' => $this->base->get('sosial_media')->result(),
        'title' => 'Organisasi'
      ];
      $data['total_rows']  = $this->base->count('artikel');
      $data['pagination']  = $this->base->makePagination(
        base_url('blog'),
        2,
        $data['total_rows']
      );
      $this->frontend->load('template', 'blog/blog', $data);
  }

  function detail($id)
  {
    $detail = $this->base->get('artikel', ['seo_title' => $id])->result();
    $data = [
      'row'     => $detail,
      'general' => $this->base->get('general_setting')->result(),
      'sosmed'  => $this->base->get('sosial_media')->result(),
      'title'   => 'UKM'
    ];

    // var_dump($data['berita']);
    $this->frontend->load('template', 'blog/detail_blog', $data);
  }
}
