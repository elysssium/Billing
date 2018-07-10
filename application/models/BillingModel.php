<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BillingModel extends CI_Model 
{
	public function uploadUserPhoto($data)
	{
		if($this->db->insert('image',$data))
		{
			return true;
		} 
		else 
		{
			return false;
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