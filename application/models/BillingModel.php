<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BillingModel extends CI_Model 
{
	public function jsonSave($data,$img)
	{
		for($i=1;$i<$data['count'];$i++)
		{
			$this->db->set('label', $data['key'][$i]);
			$this->db->set('descr', $data['valu'][$i]);
			$this->db->set('image_id', $img);
			$this->db->insert('keyvalue');
		}
		for($i=1;$i<$data['table']['row']['count'];$i++)
		{
			$this->db->set('sno', $data['table'][$i][1]);
			$this->db->set('descri', $data['table'][$i][2]);
			$this->db->set('code', $data['table'][$i][3]);
			$this->db->set('qty', $data['table'][$i][4]);
			$this->db->set('unit', $data['table'][$i][5]);
			$this->db->set('price', $data['table'][$i][6]);
			$this->db->set('amnt', $data['table'][$i][7]);
			$this->db->set('image_id', $img);
			$this->db->insert('goods');
		}
		$this->db->set('json', json_encode($data));
		$this->db->set('image_id', $img);
		$this->db->insert('json');
	}
	public function uploadUserPhoto($data)
	{
		$this->db->insert('image',$data);

	}
	public function imageid($data)
	{
		$this->db->select('id');
		$this->db->where('image_name' , $data);
		$query=$this->db->get('image');
		foreach ($query->result() as $row)
		{
			return $row->id;
		}
	}
	public function uploadUserTemplate($data)
	{
		if($this->db->insert('template',$data))
		{
			return true;
		} 
		else 
		{
			return false;
		}

	}
	public function returnTemplates()
	{
			$this->db->select('id as templateId,templateName,src');
			$query=$this->db->get('template');
			return $query->result();

	}
	public function graphMonth($mon)
	{
			$this->db->select('*');
			$this->db->where('MONTH(date)' , $mon);
			$query=$this->db->get('image');
			return $query->num_rows();

	}
	public function login($credentials)
		{
			$this->db->select('email,id,name');
			$this->db->where('email' , $credentials['email']);
			$this->db->where('password' , $credentials['password']);
			$query=$this->db->get('user');
			if($query->num_rows()==1)
			{
				$data['result']=TRUE;
				foreach ($query->result() as $row)
				{
					$data['id']=$row->id;
					$data['name']=$row->name;
        			$data['email']=$row->email;
        			$this->session->set_userdata($data);
				}
			}
			else
			{
				$data['result']=FALSE;
			}
			return $data;
		}
}