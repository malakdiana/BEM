<?php
defined('BASEPATH') or exit('No direct script access allowed');

// require_once APPPATH . 'modules/mcrud/controllers/Dicoba.php';

class HomePage extends CI_Controller
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
    // $this->db->from('artikel');
    // $this->db->order_by("id", "desc");
    // $query  = $this->db->get();
    
    $data = [
      'row'     => $this->base->get('home')->result(),
      'general' => $this->base->get('general_setting')->result(),
      'sosmed'  => $this->base->get('sosial_media')->result(),
      'title'   => 'Home Page',
      'tentang' => $this->base->get('tentang')->result(),
      'berita'  => $this->base->get('artikel', NULL, 'id', 8),
      // 'berita'  => $this->db->get('artikel'),
    ];
    // var_dump($data['berita']->result());
    $this->frontend->load('template', 'home/home', $data);
    // var_dump(profile('id'));
  }
}
