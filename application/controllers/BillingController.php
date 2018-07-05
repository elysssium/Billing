<?php
    defined('BASEPATH') OR exit('No direct script access allowed');
  class BillingController extends CI_Controller 
{
	public function dashboardUser(){
		if($this->isLoggedIn())
		{
			$this->load->view('user/billing-dashboard');
		}
		else
		{
			redirect('user/login');
		}
	}
	public function isLoggedIn()
	{
		if($this->session->userdata('email') && $this->session->userdata('name') && $this->session->userdata('id'))
		{
			$this->load->view('partials/bill-header');
			return TRUE;
		}
		else
		{
			return FALSE;
		}
		
		
	}
	public function doLogout()
	{
		$this->session->unset_userdata('email');
		$this->session->unset_userdata('result');
		$this->session->unset_userdata('id');
		$this->session->unset_userdata('name');
		redirect('user/login');
	}
	public function login()
	{
		if($this->isLoggedIn())
		{
			redirect('user/dashboard');
		}
		else
		{
			if($this->input->post())
			{
				$email = $this->input->post('email');
				$password = $this->input->post('password');
				$this->form_validation->set_rules('email', 'Email', 'required|max_length[100]|trim|valid_email');
				$this->form_validation->set_rules('password', 'Password', 'required|max_length[30]');
				if ($this->form_validation->run() == FALSE) 
				{
					$data['message']="Entered Username/Email is in invalid format.";
					$this->load->view('user/login',$data);
				}
				else
				{
					$credentials['email']=$email;
					$credentials['password']=$password;
					$data=$this->BillingModel->login($credentials);
					if($data['result']==TRUE)
					{
						redirect('user/dashboard');
					}
					else
					{
						$data['message']="Invalid Login Credentials Entered";
						$this->load->view('user/login',$data);
					}
				}

			}
			else
			{
				$this->load->view('user/login');
			}
		}
		
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
					$config['upload_path'] = './assets/upload_images/';
					
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
				
				$this->load->view('user/upload-bill',$data1);
				
			}
			else
			{
				$this->load->view('user/upload-button');
			}
		}
		
		
	}
}