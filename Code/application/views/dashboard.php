<!-- begin #content -->
<div id="content" class="content">
    <!-- begin breadcrumb -->
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item active">Dashboard</li>
    </ol>
    <!-- end breadcrumb -->
    <!-- begin page-header -->
    <h1 class="page-header">Welcome to <?php echo $this->db->get_where('setting', array('name' => 'system_name'))->row()->content; ?> <small><?php echo date('d F, Y'); ?></small></h1>
    <!-- end page-header -->

    <!-- begin row -->
    <div class="row">
        <!-- begin col-3 -->
        <div class="col-lg-3 col-md-6">
            <div class="widget widget-stats bg-blue">
                <div class="stats-icon"><i class="fa fa-building"></i></div>
                <div class="stats-info">
                    <h4><b>Total Rooms</b></h4>
                    <p><?php echo html_escape($this->db->get('room')->num_rows()); ?></p>
                </div>
                <div class="stats-link">
                    <a href="<?php echo base_url(); ?>rooms">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                </div>
            </div>
        </div>
        <!-- end col-3 -->
         <!-- begin col-3 -->
        <div class="col-lg-3 col-md-6">
            <div class="widget widget-stats bg-orange">
                <div class="stats-icon"><i class="fa fa-bed"></i></div>
                <div class="stats-info">
                    <h4><b>Total Beds</b></h4>
                    <p><?php echo html_escape($this->db->get('bed')->num_rows()); ?></p>
                </div>
                <div class="stats-link">
                    <a href="<?php echo base_url(); ?>beds">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                </div>
            </div>
        </div>
        <!-- end col-3 -->
        <!-- begin col-3 -->
        <div class="col-lg-3 col-md-6">
            <div class="widget widget-stats bg-blue">
                <div class="stats-icon"><i class="fa fa-users"></i></div>
                <div class="stats-info">
                    <h4><b>Total Tenants</b></h4>
                    <p><?php echo html_escape($this->db->get('tenant')->num_rows()); ?></p>
                </div>
                <div class="stats-link">
                    <a href="<?php echo base_url(); ?>tenants">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                </div>
            </div>
        </div>
        <!-- end col-3 -->
       
        <!-- begin col-3 -->
        <div class="col-lg-3 col-md-6">
            <div class="widget widget-stats bg-orange">
                <div class="stats-icon"><i class="fa fa-credit-card"></i></div>
                <div class="stats-info">
                    <h4><b>Total Expenses</b></h4>
                    <p><?php echo html_escape($this->db->get('expense')->num_rows()); ?></p>
                </div>
                <div class="stats-link">
                    <a href="<?php echo base_url(); ?>expenses">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                </div>
            </div>
        </div>
        <!-- end col-3 -->
        <!-- begin col-3 -->
        <div class="col-lg-3 col-md-6">
            <div class="note note-light m-b-15">
				<h5><b>Due Rents of <?php echo date('M, Y'); ?></b></h5>
				<p>
                    <?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
                    <?php
                        $this->db->select_sum('amount');
                        $this->db->from('tenant_rent');
                        $this->db->where('month', date('F'));
                        $this->db->where('year', date('Y'));
                        $query = $this->db->get();

                        $due_amount = $query->row()->amount;

                        $this->db->select_sum('advance');
                        $this->db->from('tenant_rent');
                        $this->db->where('month', date('F'));
                        $this->db->where('year', date('Y'));
                        $query = $this->db->get();

                        $due_advance = $query->row()->advance;

                        if (($due_amount - $due_advance) > 1000000) {
                            echo ($due_amount - $due_advance) / 1000000 . ' M';
                        } else {
                            echo $due_amount - $due_advance;
                        }
                    ?>
                </p>
			</div>
        </div>
        <!-- end col-3 -->
        <!-- begin col-3 -->
        <div class="col-lg-3 col-md-6">
            <div class="note note-light m-b-15">
				<h5><b>Total Rents of <?php echo date('M, Y'); ?></b></h5>
				<p>
                    <?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
                    <?php
                        $this->db->select_sum('amount');
                        $this->db->from('tenant_rent');
                        $this->db->where('month', date('F'));
                        $this->db->where('year', date('Y'));
                        $query = $this->db->get();

                        $total_amount = $query->row()->amount;

                        $this->db->select_sum('advance');
                        $this->db->from('tenant_rent');
                        $this->db->where('month', date('F'));
                        $this->db->where('year', date('Y'));
                        $query = $this->db->get();

                        $total_advance = $query->row()->advance;

                        if (($total_amount - 0) > 1000000) {
                            echo ($total_amount - 0) / 1000000 . ' M';
                        } else {
                            echo $total_amount - 0;
                        }
                    ?>
                </p>
			</div>
        </div>
        <!-- end col-3 -->
        <!-- begin col-3 -->
        <div class="col-lg-3 col-md-6">
            <div class="note note-light m-b-15">
				<h5><b>Due Rents of <?php echo date('F, Y', strtotime("-1 months")); ?></b></h5>
				<p>
                    <?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
                    <?php
                        $this->db->select_sum('amount');
                        $this->db->from('tenant_rent');
                    
                        $this->db->where('month', date('F', strtotime("-1 months")));
                        $this->db->where('year', date('Y'));
                        $query = $this->db->get();

                        $last_due_amount = $query->row()->amount;

                        $this->db->select_sum('advance');
                        $this->db->from('tenant_rent');
                   
                        $this->db->where('month', date('F', strtotime("-1 months")));
                        $this->db->where('year', date('Y'));
                        $query = $this->db->get();

                        $last_due_advance = $query->row()->advance;

                        if (($last_due_amount - $last_due_advance) > 1000000) {
                            echo ($last_due_amount - $last_due_advance) / 1000000 . ' M';
                        } else {
                            echo $last_due_amount - $last_due_advance;
                        }
                    ?>
                </p>
			</div>
        </div>
        <!-- end col-3 -->
        <!-- begin col-3 -->
        <div class="col-lg-3 col-md-6">
            <div class="note note-light m-b-15">
				<h5><b>Total Rents of <?php echo date('F, Y', strtotime("-1 months")); ?></b></h5>
				<p>
                    <?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
                    <?php
                        $this->db->select_sum('amount');
                        $this->db->from('tenant_rent');
                        $this->db->where('month', date('F', strtotime("-1 months")));
                        $this->db->where('year', date('Y'));
                        $query = $this->db->get();

                        $last_total_amount = $query->row()->amount;

                        $this->db->select_sum('advance');
                        $this->db->from('tenant_rent');
                        $this->db->where('month', date('F', strtotime("-1 months")));
                        $this->db->where('year', date('Y'));
                        $query = $this->db->get();

                        $last_total_advance = $query->row()->advance;

                        if (($last_total_amount - 0) > 1000000) {
                            echo ($last_total_amount - 0) / 1000000 . ' M';
                        } else {
                            echo $last_total_amount - 0;
                        }
                    ?>
                </p>
			</div>
        </div>
        <!-- end col-3 -->
        <!-- begin col-3 -->
        <div class="col-lg-3 col-md-6">
            <div class="note note-light m-b-15">
				<h5><b>Total Utility Bills Overall</b></h5>
				<p>
                    <?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
                    <?php
                        $this->db->select_sum('amount');
                        $this->db->from('utility_bill');
                        $query = $this->db->get();

                        $overall_utility_bill = $query->row()->amount;

                        if ($overall_utility_bill > 1000000) {
                            echo $overall_utility_bill / 1000000 . ' M';
                        } else {
                            echo $overall_utility_bill  > 0 ? $overall_utility_bill : 0;
                        }
                    ?>
                </p>
			</div>
        </div>
        <!-- end col-3 -->
        <!-- begin col-3 -->
        <div class="col-lg-3 col-md-6">
            <div class="note note-light m-b-15">
				<h5><b>Total Expenses Overall</b></h5>
				<p>
                    <?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
                    <?php
                        $this->db->select_sum('amount');
                        $this->db->from('expense');
                        $query = $this->db->get();

                        $overall_expense = $query->row()->amount;

                        if ($overall_expense > 1000000) {
                            echo $overall_expense / 1000000 . ' M';
                        } else {
                            echo $overall_expense > 0 ? $overall_expense : 0;
                        }
                    ?>
                </p>
			</div>
        </div>
        <!-- end col-3 -->
        <!-- begin col-3 -->
        <div class="col-lg-3 col-md-6">
             <div class="note note-light m-b-15">
				<h5><b>Total Due Rents Overall</b></h5>
				<p>
                    <?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
                    <?php
                        $this->db->select_sum('amount');
                        $this->db->from('tenant_rent');
                     
                        $query = $this->db->get();

                        $overall_due_amount = $query->row()->amount;

                        $this->db->select_sum('advance');
                        $this->db->from('tenant_rent');
                  
                        $query = $this->db->get();

                        $overall_due_advance = $query->row()->advance;

                        if (($overall_due_amount - $overall_due_advance ) > 1000000) {
                            echo ($overall_due_amount - $overall_due_advance ) / 1000000 . ' M';
                        } else {
                            echo $overall_due_amount - $overall_due_advance ;
                        }
                    ?>
                </p>
			</div>
        </div>
        <!-- end col-3 -->
        <!-- begin col-3 -->
        <div class="col-lg-3 col-md-6">
            <div class="note note-light m-b-15">
				<h5><b>Total Rents Overall</b></h5>
				<p>
                    <?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
                    <?php
                        $this->db->select_sum('amount');
                        $this->db->from('tenant_rent');
                        $query = $this->db->get();

                        $overall_amount = $query->row()->amount;

                        $this->db->select_sum('advance');
                        $this->db->from('tenant_rent');
                        $query = $this->db->get();

                        $overall_advance = $query->row()->advance;

                        if (($overall_amount - 0 ) > 1000000) {
                            echo ($overall_amount - 0 ) / 1000000 . ' M';
                        } else {
                            echo $overall_amount - 0;
                        }
                    ?>
                </p>
			</div>
        </div>
        <!-- end col-3 -->
    </div>
    <!-- end row -->
</div>
<!-- end #content -->
