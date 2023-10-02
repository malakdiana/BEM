<?php defined('BASEPATH') OR exit('No direct script access allowed');

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


class Artikel_model extends MY_Model{

  private $table        = "artikel";
  private $primary_key  = "id";
  private $column_order = array('title', 'image', 'content', 'createdOn', 'organisasi_id');
  private $order        = array('artikel.id'=>"DESC");
  private $select       = "artikel.id,artikel.title,artikel.image,artikel.content,artikel.createdOn,artikel.organisasi_id";

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
      $this->_get_join();

    if($this->input->post("title"))
        {
          $this->db->like("artikel.title", $this->input->post("title"));
        }

    if($this->input->post("image"))
        {
          $this->db->like("artikel.image", $this->input->post("image"));
        }

    if($this->input->post("content"))
        {
          $this->db->like("artikel.content", $this->input->post("content"));
        }

    if($this->input->post("createdOn"))
        {
          $this->db->like("artikel.createdOn", date('Y-m-d H:i',strtotime($this->input->post("createdOn"))));
        }

    if($this->input->post("organisasi_id"))
        {
          $this->db->like("artikel.organisasi_id", $this->input->post("organisasi_id"));
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
      $this->_get_join();
      return $this->db->count_all_results();
    }

    public function _get_join()
    {
      $this->db->select("organisasi.nama");
      $this->db->join("organisasi","organisasi.id = artikel.organisasi_id","left");
    }

    public function get_detail($id)
    {
        $this->db->select("".$this->table.".*");
        $this->db->from($this->table);
        $this->_get_join();
        $this->db->where("".$this->table.'.'.$this->primary_key,$id);
        $query = $this->db->get();
        if($query->num_rows()>0)
        {
          return $query->row();
        }else{
          return FALSE;
        }
    }

}

/* End of file Artikel_model.php */
/* Location: ./application/modules/artikel/models/Artikel_model.php */
