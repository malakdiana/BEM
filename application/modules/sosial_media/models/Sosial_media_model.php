<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 28/09/2023 09:15*/
/*| Please DO NOT modify this information*/


class Sosial_media_model extends MY_Model{

  private $table        = "sosial_media";
  private $primary_key  = "id";
  private $column_order = array('sosmed', 'link', 'icon');
  private $order        = array('sosial_media.id'=>"DESC");
  private $select       = "sosial_media.id,sosial_media.sosmed,sosial_media.link,sosial_media.icon";

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

    if($this->input->post("sosmed"))
        {
          $this->db->like("sosial_media.sosmed", $this->input->post("sosmed"));
        }

    if($this->input->post("link"))
        {
          $this->db->like("sosial_media.link", $this->input->post("link"));
        }

    if($this->input->post("icon"))
        {
          $this->db->like("sosial_media.icon", $this->input->post("icon"));
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

/* End of file Sosial_media_model.php */
/* Location: ./application/modules/sosial_media/models/Sosial_media_model.php */
