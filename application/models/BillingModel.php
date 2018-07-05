<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BillingModel extends CI_Model 
{
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