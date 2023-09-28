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
    $data = [
      'row' => $this->base->get('home')->result(),
      'general' => $this->base->get('general_setting')->result(),
      'sosmed' => $this->base->get('sosial_media')->result(),
      'title' => 'Home Page'
    ];
    $this->frontend->load('template', 'home/home', $data);
  }
}
