<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 29/09/2023 08:54*/
/*| Please DO NOT modify this information*/


class Trias_model extends MY_Model{

  private $table        = "trias";
  private $primary_key  = "id";
  private $column_order = array('nama', 'alamat', 'nomer');
  private $order        = array('trias.id'=>"DESC");
  private $select       = "trias.id,trias.nama,trias.alamat,trias.nomer";

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

    if($this->input->post("nama"))
        {
          $this->db->like("trias.nama", $this->input->post("nama"));
        }

    if($this->input->post("alamat"))
        {
          $this->db->like("trias.alamat", $this->input->post("alamat"));
        }

    if($this->input->post("nomer"))
        {
          $this->db->like("trias.nomer", $this->input->post("nomer"));
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

/* End of file Trias_model.php */
/* Location: ./application/modules/trias/models/Trias_model.php */
