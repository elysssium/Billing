<?php
    defined('BASEPATH') OR exit('No direct script access allowed');
  class BillingController extends CI_Controller 
{
	public function dashboardUser(){
		if($this->isLoggedIn())
		{
			$data['graph']['1']=$this->BillingModel->graphMonth('1');
			$data['graph']['2']=$this->BillingModel->graphMonth('02');
			$data['graph']['3']=$this->BillingModel->graphMonth('03');
			$data['graph']['4']=$this->BillingModel->graphMonth('04');
			$data['graph']['5']=$this->BillingModel->graphMonth('05');
			$data['graph']['6']=$this->BillingModel->graphMonth('06');
			$data['graph']['7']=$this->BillingModel->graphMonth('07');
			$data['graph']['8']=$this->BillingModel->graphMonth('08');
			$data['graph']['9']=$this->BillingModel->graphMonth('09');
			$data['graph']['10']=$this->BillingModel->graphMonth('10');
			$data['graph']['11']=$this->BillingModel->graphMonth('11');
			$data['graph']['12']=$this->BillingModel->graphMonth('12');
			$this->load->view('user/billing-dashboard',$data);
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
			$data['name']=$this->session->userdata('name');
			$data['email']=$this->session->userdata('email');
			$this->load->view('partials/bill-header',$data);
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
	public function uploadTemplate()
	{
		if($this->isLoggedIn())
		{
			if($this->input->post())
			{
				$data['templateName']=$this->input->post('name');
				$data['userId']=$this->session->userdata('id');
					$config['upload_path'] = './assets/upload_templates/';
					$config['allowed_types'] = 'gif|jpg|png';
					$config['max_size']	= '1000';
					$config['max_width']  = '2224';
					$config['max_height']  = '2224';
					$data['date']=(date('Y-m-d H:i:s'));
					
					$this->load->library('upload', $config);
					if ( ! $this->upload->do_upload('img'))
					{
						$data['error'] = $this->upload->display_errors();
						

					}
					else
					{
						$upload_data =  $this->upload->data();
						$data['src']= $upload_data['file_name'];
						$this->BillingModel->uploadUserTemplate($data);
					}
				
				var_dump($data);
				die;
				redirect('user/dashboard');
				
			}
			else
			{
				$this->load->view('user/upload-template');
			}
		}
		else
		{
			$this->load->view('user/login');
		}
		
	}
	public function sendJson()
  	{
	    if ($this->input->post() && $this->input->is_ajax_request()) 
	    {
	      $text_result = $this->input->post('text_result');
	      	$data="";
	     	$data1=explode("\n",$text_result);
	     	$data_count=count($data1);
	     	for($i=0;$i<$data_count;$i++)
	     	{
	     		if(strpos($data1[$i],"#")>0)
	     		{
	     			$data1['result']=explode("#",$data1[$i]);
	     			$vaar=$data1['result'][0];
	     			$data[$vaar]=$data1['result'][1];
	     		}

	     	}
	        echo json_encode($data);
	    } 
	    else 
	    {
	      redirect('admin/login');
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
				$data['user_id']=$this->session->userdata('id');
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
						$data['image_name']= $upload_data['file_name'];
						$this->BillingModel->uploadUserPhoto($data);
						$data1['url'][$i]=$data['image_name'];
					}
				}
				$data1['templatesResult'] =  $this->BillingModel->returnTemplates();
				
				$this->load->view('user/upload-bill',$data1);
				
			}
			else
			{
				$this->load->view('user/upload-button');
			}
		}
		else
		{
			$this->load->view('user/login');
		}
		
	}
	/*
	 Controller for drag and drop upload
    */
	 public function draguploadBill()
	{
		if($this->isLoggedIn())
		{
			if($this->input->post())
			{
				$count=$this->input->post('count');
				$data1['count']=$count;
				$data['user_id']=$this->session->userdata('id');
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
						$data['image_name']= $upload_data['file_name'];
						$this->BillingModel->uploadUserPhoto($data);
						$data1['url'][$i]=$data['image_name'];
					}
				}
				$data1['templatesResult'] =  $this->BillingModel->returnTemplates();
				
				$this->load->view('user/upload-bill',$data1);
				
			}
			else
			{
				$this->load->view('user/upload-button');
			}
		}
		else
		{
			$this->load->view('user/login');
		}
		
	}

}