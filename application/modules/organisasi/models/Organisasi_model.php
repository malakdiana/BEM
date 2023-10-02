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


class Organisasi_model extends MY_Model{

  private $table        = "organisasi";
  private $primary_key  = "id";
  private $column_order = array('kategori', 'nama', 'deskripsi', 'image','foto_kepengurusan', 'seo_name');
  private $order        = array('organisasi.id'=>"DESC");
  private $select       = "organisasi.id,organisasi.kategori,organisasi.nama,organisasi.deskripsi,organisasi.image,organisasi.foto_kepengurusan,organisasi.seo_name";

public function __construct()
	{
		$config = array(
      'table' 	      => $this->table,
			'primary_key' 	=> $this->primary_key,
		 	'select' 	      => $this->select,
      'column_order' 	=> $this->column_order,
      'order' 	      => $this->order,
		 );

		parent::__construct($config);
	}

  private function _get_datatables_query()
    {
      $this->db->select($this->select);
      $this->db->from($this->table);

    if($this->input->post("kategori"))
        {
          $this->db->like("organisasi.kategori", $this->input->post("kategori"));
        }

    if($this->input->post("nama"))
        {
          $this->db->like("organisasi.nama", $this->input->post("nama"));
        }

    if($this->input->post("deskripsi"))
        {
          $this->db->like("organisasi.deskripsi", $this->input->post("deskripsi"));
        }

    if($this->input->post("image"))
        {
          $this->db->like("organisasi.image", $this->input->post("image"));
        }
    if($this->input->post("foto_kepengurusan"))
        {
          $this->db->like("organisasi.foto_kepengurusan", $this->input->post("foto_kepengurusan"));
        }
    

    if($this->input->post("seo_name"))
        {
          $this->db->like("organisasi.seo_name", $this->input->post("seo_name"));
        }

      if(isset($_POST['order'])) // here order processing
       {
           $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
       }
       else if(isset($this->order))
       {
           $order = $this->order;
           $this->db->order_by(key($order), $order[key($order)]);
       }

    }


    public function get_datatables()
    {
        $this->_get_datatables_query();
        if($_POST['length'] != -1)
        $this->db->limit($_POST['length'], $_POST['start']);
        $query = $this->db->get();
        return $query->result();
    }

    public function count_filtered()
    {
        $this->_get_datatables_query();
        $query = $this->db->get();
        return $query->num_rows();
    }

    public function count_all()
    {
      $this->db->select($this->select);
      $this->db->from("$this->table");
      return $this->db->count_all_results();
    }



}

/* End of file Organisasi_model.php */
/* Location: ./application/modules/organisasi/models/Organisasi_model.php */
