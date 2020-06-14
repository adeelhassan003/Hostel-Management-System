<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Landlord extends CI_Controller {
	public function index()
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'dashboard'))->row()->module_id, $this->session->userdata('permissions'))) {
			$page_data['page_title']	=	'Dashboard';
			$page_data['page_name']		=	'dashboard';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function login()
	{
		$this->load->view('login');
	}

	function add_room()
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'rooms'))->row()->module_id, $this->session->userdata('permissions'))) {
			$page_data['page_title']	=	'Add Room';
			$page_data['page_name'] 	= 	'add_room';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function rooms($param1 = '', $param2 = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'rooms'))->row()->module_id, $this->session->userdata('permissions'))) {
			if ($param1 == 'add') $this->model->add_room();
			elseif ($param1 == 'update') $this->model->update_room($param2);
			elseif ($param1 == 'remove') $this->model->remove_room($param2);

			$page_data['navbar_status']	=	'aside-collapsed';
			$page_data['page_title']	=	'Rooms';
			$page_data['page_name'] 	= 	'rooms';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function add_bed()
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'beds'))->row()->module_id, $this->session->userdata('permissions'))) {
			$page_data['page_title']	=	'Add Bed';
			$page_data['page_name'] 	=	'add_bed';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function beds($param1 = '', $param2 = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'beds'))->row()->module_id, $this->session->userdata('permissions'))) {
			if ($param1 == 'add') $this->model->add_bed();
			elseif ($param1 == 'update') $this->model->update_bed($param2);
			elseif ($param1 == 'remove') $this->model->remove_bed($param2);

			$page_data['navbar_status']	=	'aside-collapsed';
			$page_data['page_title']	=	'Beds';
			$page_data['page_name'] 	= 	'beds';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function add_tenant()
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'tenants'))->row()->module_id, $this->session->userdata('permissions'))) {
			$page_data['page_title']	=	'Add Tenants';
			$page_data['page_name'] 	= 	'add_tenant';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function tenants($param1 = '', $param2 = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'tenants'))->row()->module_id, $this->session->userdata('permissions'))) {
			if ($param1 == 'add') $this->model->add_tenant();
			elseif ($param1 == 'change_image') $this->model->change_tenant_image($param2);
			elseif ($param1 == 'update') $this->model->update_tenant($param2);
			elseif ($param1 == 'remove') $this->model->remove_tenant($param2);

			$page_data['navbar_status']	=	'aside-collapsed';
			$page_data['page_title']	=	'Tenants';
			$page_data['page_name'] 	= 	'tenants';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function add_utility_bill()
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'utility_bills'))->row()->module_id, $this->session->userdata('permissions'))) {
			$page_data['page_title']	=	'Add Utility Bill';
			$page_data['page_name'] 	= 	'add_utility_bill';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function utility_bills($param1 = '', $param2 = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'utility_bills'))->row()->module_id, $this->session->userdata('permissions'))) {
			if ($param1 == 'add') $this->model->add_utility_bill();
			elseif ($param1 == 'update') $this->model->update_utility_bill($param2);
			elseif ($param1 == 'remove') $this->model->remove_utility_bill($param2);

			$page_data['navbar_status']	=	'aside-collapsed';
			$page_data['page_title']	=	'Utility Bills';
			$page_data['page_name'] 	= 	'utility_bills';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function utility_bill_categories($param1 = '', $param2 = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'utility_bills'))->row()->module_id, $this->session->userdata('permissions'))) {
			if ($param1 == 'add') $this->model->add_utility_bill_category();
			elseif ($param1 == 'update') $this->model->update_utility_bill_category($param2);
			elseif ($param1 == 'remove') $this->model->remove_utility_bill_category($param2);

			$page_data['navbar_status']	=	'aside-collapsed';
			$page_data['page_title']	=	'Utility Bill Categories';
			$page_data['page_name'] 	= 	'utility_bill_categories';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function add_expense()
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'expenses'))->row()->module_id, $this->session->userdata('permissions'))) {
			$page_data['page_title']	=	'Add Expense';
			$page_data['page_name'] 	= 	'add_expense';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function expenses($param1 = '', $param2 = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'expenses'))->row()->module_id, $this->session->userdata('permissions'))) {
			if ($param1 == 'add') $this->model->add_expense();
			elseif ($param1 == 'update') $this->model->update_expense($param2);
			elseif ($param1 == 'remove') $this->model->remove_expense($param2);

			$page_data['navbar_status']	=	'aside-collapsed';
			$page_data['page_title']	=	'Expenses';
			$page_data['page_name'] 	= 	'expenses';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function add_staff()
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'staff'))->row()->module_id, $this->session->userdata('permissions'))) {
			$page_data['page_title']	=	'Add Staff';
			$page_data['page_name'] 	= 	'add_staff';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function staff($param1 = '', $param2 = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'staff'))->row()->module_id, $this->session->userdata('permissions'))) {
			if ($param1 == 'add') $this->model->add_staff();
			elseif ($param1 == 'update') $this->model->update_staff($param2);
			elseif ($param1 == 'remove') $this->model->remove_staff($param2);
			elseif ($param1 == 'permission') $this->model->update_staff_permission($param2);

			$page_data['navbar_status']	=	'aside-collapsed';
			$page_data['page_title']	=	'Staff';
			$page_data['page_name'] 	= 	'staff';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function add_staff_payroll()
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'staff_payroll'))->row()->module_id, $this->session->userdata('permissions'))) {
			$page_data['page_title']	=	'Add Staff Payroll';
			$page_data['page_name'] 	= 	'add_staff_payroll';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function staff_payroll($param1 = '', $param2 = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'staff_payroll'))->row()->module_id, $this->session->userdata('permissions'))) {
			if ($param1 == 'add') $this->model->add_staff_salary();
			elseif ($param1 == 'update') $this->model->update_staff_salary($param2);
			elseif ($param1 == 'remove') $this->model->remove_staff_salary($param2);

			$page_data['navbar_status']	=	'aside-collapsed';
			$page_data['page_title']	=	'Staff Payroll';
			$page_data['page_name'] 	= 	'staff_payroll';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function generate_rent($param = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'generate_rent'))->row()->module_id, $this->session->userdata('permissions'))) {
			if ($param == 'single') $this->model->generate_single_rent();
			elseif ($param == 'monthly') $this->model->generate_monthly_rent();

			$page_data['page_title']	=	'Generate Rent';
			$page_data['page_name'] 	=	'generate_rent';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function monthly_rent()
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'rents'))->row()->module_id, $this->session->userdata('permissions'))) {
			$page_data['navbar_status']	=	'aside-collapsed';
			$page_data['page_title']	=	'Monthly Rent';
			$page_data['page_name'] 	=	'monthly_rent';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function single_month_rent()
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'rents'))->row()->module_id, $this->session->userdata('permissions'))) {
			$page_data['month']			=	$this->input->post('month');
			$page_data['year']			=	$this->input->post('year');

			$page_data['navbar_status']	=	'aside-collapsed';
			$page_data['page_title']	=	'Single Month Rent';
			$page_data['page_name'] 	=	'single_month_rent';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function rents($param1 = '', $param2 = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'rents'))->row()->module_id, $this->session->userdata('permissions'))) {
			if ($param1 == 'update') $this->model->update_tenant_rent($param2);
			elseif ($param1 == 'remove') $this->model->remove_tenant_rent($param2);

			$page_data['navbar_status']	=	'aside-collapsed';
			$page_data['page_title']	=	'All Rent';
			$page_data['page_name'] 	=	'rents';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function invoice($param = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'rents'))->row()->module_id, $this->session->userdata('permissions'))) {

			$page_data['invoice_number']=	$param;
			$page_data['page_title']	=	'Invoice';
			$page_data['page_name'] 	=	'invoice';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function account()
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'account'))->row()->module_id, $this->session->userdata('permissions'))) {
			$this->input->post('year') ? $page_data['selected_year'] = $this->input->post('year') : $page_data['selected_year'] = date('Y');

			$page_data['page_title']	=	'Account';
			$page_data['page_name'] 	=	'account';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function website_settings($param = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'settings'))->row()->module_id, $this->session->userdata('permissions'))) {
			if ($param == 'update') $this->model->update_website_settings();
			if ($param == 'update_favicon') $this->model->update_website_favicon();

			$page_data['page_title']	=	'Website Settings';
			$page_data['page_name'] 	=	'website_settings';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function profession_settings($param1 = '', $param2 = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'settings'))->row()->module_id, $this->session->userdata('permissions'))) {
			if ($param1 == 'add') $this->model->add_profession();
			elseif ($param1 == 'update') $this->model->update_profession($param2);
			elseif ($param1 == 'remove') $this->model->remove_profession($param2);

			$page_data['navbar_status']	=	'aside-collapsed';
			$page_data['page_title']	=	'Profession Settings';
			$page_data['page_name'] 	=	'profession_settings';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function id_type_settings($param1 = '', $param2 = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if (in_array($this->db->get_where('module', array('module_name' => 'settings'))->row()->module_id, $this->session->userdata('permissions'))) {
			if ($param1 == 'add') $this->model->add_id_type();
			elseif ($param1 == 'update') $this->model->update_id_type($param2);
			elseif ($param1 == 'remove') $this->model->remove_id_type($param2);

			$page_data['navbar_status']	=	'aside-collapsed';
			$page_data['page_title']	=	'ID Type Settings';
			$page_data['page_name'] 	=	'id_type_settings';
			$this->load->view('index', $page_data);
		} else {
			$page_data['page_title']	=	'Permission Denied';
			$page_data['page_name'] 	= 	'permission_denied';
			$this->load->view('index', $page_data);
		}
	}

	function profile_settings($param1 = '', $param2 = '')
	{
		if (!$this->session->userdata('user_type'))
			redirect(base_url() . 'login', 'refresh');

		if ($param1 == 'update') $this->model->update_profile_settings($param2);

		$page_data['page_title']	=	'Profile Settings';
		$page_data['page_name'] 	=	'profile_settings';
		$this->load->view('index', $page_data);
	}
}
