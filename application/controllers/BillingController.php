<?php
    defined('BASEPATH') OR exit('No direct script access allowed');
  class BillingController extends CI_Controller 
{
	public function dashboardUser(){
		$this->load->view('partials/bill-header');
		$this->load->view('billing-dashboard');
	}
	public function uploadBill(){
		$this->load->view('partials/bill-header');
		$this->load->view('upload-bill');
	}
}