<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 25/09/2023 21:12*/
/*| Please DO NOT modify this information*/


class General_setting_model extends MY_Model{

  private $table        = "general_setting";
  private $primary_key  = "id";
  private $column_order = array('nama_website', 'logo', 'alamat', 'telepon', 'email');
  private $order        = array('general_setting.id'=>"DESC");
  private $select       = "general_setting.id,general_setting.nama_website,general_setting.logo,general_setting.alamat,general_setting.telepon,general_setting.email";

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

    if($this->input->post("nama_website"))
        {
          $this->db->like("general_setting.nama_website", $this->input->post("nama_website"));
        }

    if($this->input->post("logo"))
        {
          $this->db->like("general_setting.logo", $this->input->post("logo"));
        }

    if($this->input->post("alamat"))
        {
          $this->db->like("general_setting.alamat", $this->input->post("alamat"));
        }

    if($this->input->post("telepon"))
        {
          $this->db->like("general_setting.telepon", $this->input->post("telepon"));
        }

    if($this->input->post("email"))
        {
          $this->db->like("general_setting.email", $this->input->post("email"));
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

/* End of file General_setting_model.php */
/* Location: ./application/modules/general_setting/models/General_setting_model.php */
