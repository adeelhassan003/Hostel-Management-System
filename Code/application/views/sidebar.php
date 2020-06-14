<!-- begin #sidebar -->
<div id="sidebar" class="sidebar" data-disable-slide-animation="true">
    <!-- begin sidebar scrollbar -->
    <div data-scrollbar="true" data-height="100%">
        <!-- begin sidebar user -->
        <ul class="nav">
            <li class="nav-profile">
                <div class="text-center">
                    <div class="cover with-shadow"></div>
                    <div class="image">
                        <img align="middle" src="<?php echo base_url(); ?>uploads/website/<?php echo $this->db->get_where('setting', array('name' => 'favicon'))->row()->content; ?>" alt="<?php echo $this->db->get_where('setting', array('name' => 'system_name'))->row()->content; ?>" />
                    </div>
                    <div class="info">
                        <?php
                            $user_type =  $this->db->get_where('user', array('user_id' => $this->session->userdata('user_id')))->row()->user_type;
                            if ($user_type == 1) {
                                echo 'Admin';
                            } else if ($user_type == 2) {
                                $person_id = $this->db->get_where('user', array('user_id' => $this->session->userdata('user_id')))->row()->person_id;
                                echo html_escape($this->db->get_where('staff', array('staff_id' => $person_id))->row()->name);
                            } else {
                                $person_id = $this->db->get_where('user', array('user_id' => $this->session->userdata('user_id')))->row()->person_id;
                                echo html_escape($this->db->get_where('tenant', array('tenant_id' => $person_id))->row()->name);
                            }
                        ?>
                        <small>
                            <?php
                                $user_type =  $this->db->get_where('user', array('user_id' => $this->session->userdata('user_id')))->row()->user_type;
                                if ($user_type == 1) {
                                    echo 'Admin';
                                } else if ($user_type == 2) {
                                    $person_id = $this->db->get_where('user', array('user_id' => $this->session->userdata('user_id')))->row()->person_id;
                                    echo html_escape($this->db->get_where('staff', array('staff_id' => $person_id))->row()->role);
                                } else {
                                    $person_id = $this->db->get_where('user', array('user_id' => $this->session->userdata('user_id')))->row()->person_id;
                                    $profession_id = $this->db->get_where('tenant', array('tenant_id' => $person_id))->row()->profession_id;
                                    echo html_escape($this->db->get_where('profession', array('profession_id' => $profession_id))->row()->name);
                                }
                            ?>
                        </small>
                    </div>
                </div>
            </li>
        </ul>
        <!-- end sidebar user -->
        <!-- begin sidebar nav -->
        <ul class="nav">
            
            <?php if (in_array($this->db->get_where('module', array('module_name' => 'dashboard'))->row()->module_id, $this->session->userdata('permissions'))): ?>
            <li class="<?php if ($page_name == 'dashboard') echo 'active'; ?>">
                <a href="<?php echo base_url(); ?>">
                    <i class="fa fa-home"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <?php endif; ?>
            <?php if (in_array($this->db->get_where('module', array('module_name' => 'tenants'))->row()->module_id, $this->session->userdata('permissions'))): ?>
            <li class="<?php if ($page_name == 'add_tenant' || $page_name == 'tenants') echo 'active'; ?>">
                <a href="<?php echo base_url(); ?>tenants">
                    <i class="fa fa-users"></i>
                    <span>Tenants</span>
                </a>
            </li>
            <?php endif; ?>
            <?php if (in_array($this->db->get_where('module', array('module_name' => 'rooms'))->row()->module_id, $this->session->userdata('permissions'))): ?>
            <li class="<?php if ($page_name == 'add_room' || $page_name == 'rooms') echo 'active'; ?>">
                <a href="<?php echo base_url(); ?>rooms">
                    <i class="fa fa-building"></i>
                    <span>Rooms</span>
                </a>
            </li>
            <?php endif; ?>
            <?php if (in_array($this->db->get_where('module', array('module_name' => 'beds'))->row()->module_id, $this->session->userdata('permissions'))): ?>
            <li class="<?php if ($page_name == 'add_bed' || $page_name == 'beds') echo 'active'; ?>">
                <a href="<?php echo base_url(); ?>beds">
                    <i class="fa fa-bed"></i>
                    <span>Beds</span>
                </a>
            </li>
            <?php endif; ?>
             <?php if (in_array($this->db->get_where('module', array('module_name' => 'expenses'))->row()->module_id, $this->session->userdata('permissions'))): ?>
            <li class="<?php if ($page_name == 'add_expense' || $page_name == 'expenses') echo 'active'; ?>">
                <a href="<?php echo base_url(); ?>expenses">
                    <i class="fas fa-credit-card"></i>
                    <span>Expenses</span>
                </a>
            </li>
            <?php endif; ?>
            <?php
				if (!in_array($this->db->get_where('module', array(
				    'module_name' => 'generate_rent'
				))->row()->module_id, $this->session->userdata('permissions')) && !in_array($this->db->get_where('module', array(
				    'module_name' => 'rents'
				))->row()->module_id, $this->session->userdata('permissions'))):
			?>

            <?php else: ?>
            <li class="has-sub <?php if ($page_name == 'generate_rent' || $page_name == 'monthly_rent' || $page_name == 'single_month_rent' || $page_name == 'rents' || $page_name == 'invoice') echo 'active'; ?>">
                <a href="javascript:;">
                    <b class="caret"></b>
                    <i class="far fa-credit-card"></i>
                    <span>Rents</span>
                </a>
                <ul class="sub-menu">
                    <?php if (in_array($this->db->get_where('module', array('module_name' => 'generate_rent'))->row()->module_id, $this->session->userdata('permissions'))): ?>
                    <li class="<?php if ($page_name == 'generate_rent') echo 'active'; ?>">
                        <a href="<?php echo base_url(); ?>generate_rent">Generate Rent</a>
                    </li>
                    <?php endif; ?>
                    <?php if (in_array($this->db->get_where('module', array('module_name' => 'rents'))->row()->module_id, $this->session->userdata('permissions'))): ?>
                    <li class="<?php if ($page_name == 'monthly_rent' || $page_name == 'single_month_rent') echo 'active'; ?>">
                        <a href="<?php echo base_url(); ?>monthly_rent">Monthly Rent</a>
                    </li>
                    <li class="<?php if ($page_name == 'rents' || $page_name == 'invoice') echo 'active'; ?>">
                        <a href="<?php echo base_url(); ?>rents">All Rent</a>
                    </li>
                    <?php endif; ?>
                </ul>
            </li>
            <?php endif; ?>
            <?php if (in_array($this->db->get_where('module', array('module_name' => 'utility_bills'))->row()->module_id, $this->session->userdata('permissions'))): ?>
            <li class="has-sub <?php if ($page_name == 'add_utility_bill' || $page_name == 'utility_bills' || $page_name == 'utility_bill_categories') echo 'active'; ?>">
                <a href="javascript:;">
                    <b class="caret"></b>
                    <i class="fa fa-money-bill-alt"></i>
                    <span>Utility Bills</span>
                </a>
                <ul class="sub-menu">
                    <li class="<?php if ($page_name == 'add_utility_bill' || $page_name == 'utility_bills') echo 'active'; ?>">
                        <a href="<?php echo base_url(); ?>utility_bills">Utility Bill</a>
                    </li>
                    <li class="<?php if ($page_name == 'utility_bill_categories') echo 'active'; ?>">
                        <a href="<?php echo base_url(); ?>utility_bill_categories">Utility Bill Category</a>
                    </li>
                </ul>
            </li>
            <?php endif; ?>
            <?php if (in_array($this->db->get_where('module', array('module_name' => 'account'))->row()->module_id, $this->session->userdata('permissions'))): ?>
            <li class="<?php if ($page_name == 'account') echo 'active'; ?>">
                <a href="<?php echo base_url(); ?>account">
                    <i class="fa fa-list-ol"></i>
                    <span>Account Details</span>
                </a>
            </li>
            <?php endif; ?>
            <?php
				if (!in_array($this->db->get_where('module', array(
				    'module_name' => 'staff'
				))->row()->module_id, $this->session->userdata('permissions')) && !in_array($this->db->get_where('module', array(
				    'module_name' => 'staff_payroll'
				))->row()->module_id, $this->session->userdata('permissions'))):
			?>

            <?php else: ?>
            <li class="has-sub <?php if ($page_name == 'add_staff' || $page_name == 'staff' || $page_name == 'add_staff_payroll' || $page_name == 'staff_payroll') echo 'active'; ?>">
                <a href="javascript:;">
                    <b class="caret"></b>
                    <i class="fa fa-user"></i>
                    <span>Staff</span>
                </a>
                <ul class="sub-menu">
                    <?php if (in_array($this->db->get_where('module', array('module_name' => 'staff'))->row()->module_id, $this->session->userdata('permissions'))): ?>
                    <li class="<?php if ($page_name == 'add_staff' || $page_name == 'staff') echo 'active'; ?>">
                        <a href="<?php echo base_url(); ?>staff">Staff</a>
                    </li>
                    <?php endif; ?>
                    <?php if (in_array($this->db->get_where('module', array('module_name' => 'staff_payroll'))->row()->module_id, $this->session->userdata('permissions'))): ?>
                    <li class="<?php if ($page_name == 'add_staff_payroll' || $page_name == 'staff_payroll') echo 'active'; ?>">
                        <a href="<?php echo base_url(); ?>staff_payroll">Staff Payroll</a>
                    </li>
                    <?php endif; ?>
                </ul>
            </li>
            <?php endif; ?>
            
           
            <li class="has-sub <?php if ($page_name == 'website_settings' || $page_name == 'profession_settings' || $page_name == 'id_type_settings' || $page_name == 'profile_settings') echo 'active'; ?>">
                <a href="javascript:;">
                    <b class="caret"></b>
                    <i class="fa fa-cog"></i>
                    <span>Settings</span>
                </a>
                <ul class="sub-menu">
                    <?php if (in_array($this->db->get_where('module', array('module_name' => 'settings'))->row()->module_id, $this->session->userdata('permissions'))): ?>
                    <li class="<?php if ($page_name == 'website_settings') echo 'active'; ?>">
                        <a href="<?php echo base_url(); ?>website_settings">System</a>
                    </li>
                    <li class="<?php if ($page_name == 'profession_settings') echo 'active'; ?>">
                        <a href="<?php echo base_url(); ?>profession_settings">Profession</a>
                    </li>
                    <li class="<?php if ($page_name == 'id_type_settings') echo 'active'; ?>">
                        <a href="<?php echo base_url(); ?>id_type_settings">ID Type</a>
                    </li>
                    <?php endif; ?>
                    <!-- <li class="<?php if ($page_name == 'profile_settings') echo 'active'; ?>">
                        <a href="<?php echo base_url(); ?>profile_settings">Profile</a>
                    </li> -->
                </ul>
            </li>
        </ul>
        <!-- end sidebar nav -->
    </div>
    <!-- end sidebar scrollbar -->
</div>
<div class="sidebar-bg"></div>
<!-- end #sidebar -->
