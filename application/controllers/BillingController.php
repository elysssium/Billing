<?php
    defined('BASEPATH') OR exit('No direct script access allowed');
  class BillingController extends CI_Controller 
{
	public function dashboardUser(){
		$this->load->view('partials/bill-header');
		$this->load->view('billing-dashboard');
	}
	public function isLoggedIn()
	{
		$this->load->view('partials/bill-header');
		return True;
	}
	public function uploadBill()
	{
		if($this->isLoggedIn())
		{
			if($this->input->post())
			{
				$count=$this->input->post('count');
				$data1['count']=$count;
				for($i = 0; $i < $count; $i++)
				{
					
			
					
					 $_FILES['file']['name']     = $_FILES['user-image']['name'][$i];
	                $_FILES['file']['type']     = $_FILES['user-image']['type'][$i];
	                $_FILES['file']['tmp_name'] = $_FILES['user-image']['tmp_name'][$i];
	                $_FILES['file']['error']     = $_FILES['user-image']['error'][$i];
	                $_FILES['file']['size']     = $_FILES['user-image']['size'][$i];
					$config['upload_path'] = './assets/';
					
					$config['allowed_types'] = 'gif|jpg|png';
					$config['max_size']	= '1000';
					$config['max_width']  = '2224';
					$config['max_height']  = '2224';
					$data['date']=(date('Y-m-d H:i:s'));
					
					$this->load->library('upload', $config);
					if ( ! $this->upload->do_upload('file'))
					{
						$data['error'] = $this->upload->display_errors();
						

					}
					else
					{
						$upload_data =  $this->upload->data();
						$this->load->model('UserModel');
						$data['user-image']= $upload_data['file_name'];
						$this->UserModel->uploadUserPhoto($data);
						$data1['url'][$i]=$data['user-image'];
					}
				}
				
				$this->load->view('upload-bill',$data1);
				
			}
			else
			{
				$this->load->view('upload-button');
			}
		}
		
		
	}
}