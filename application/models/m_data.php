<?php 

class M_data extends CI_Model{

	function tampil_data(){
		return $this->db->get('m_thl');
	}
 
	function input_data($data,$table){
		$this->db->insert($table,$data);
	}
	function edit_data($where,$table){		
		$this->db->where($where);
		$r=$this->db->get($table);

		return $r->row();
	//return $this->db->get_where($table,$where)->row();

	//$sql="select * from $table where id"
    }
    function update_data($where,$data,$table){
		$this->db->where($where);
		$this->db->update($table,$data);

		return $this->db->affected_rows();
	}

	function hapus_data($where,$table){
	$this->db->where($where);
	$this->db->delete($table);
	}	

	function total_pegawai()
	{
		$this->db->select('count(id_pegawai) as total');
		$query = $this->db->get('m_thl');
		return $query;
	}
}

