<!-- begin #content -->
<div id="content" class="content">
    <!-- begin breadcrumb -->
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Dashboard</a></li>
        <li class="breadcrumb-item active">Monthly Rent</li>
    </ol>
    <!-- end breadcrumb -->
    <!-- begin page-header -->
    <h1 class="page-header">
        Showing rents of <?php echo date('F') . ', ' . date('Y'); ?>
    </h1>
    <!-- end page-header -->

    <!-- begin row -->
    <div class="row">
        <!-- begin col-9 -->
        <div class="col-lg-9">
            <!-- begin panel -->
            <div class="panel panel-inverse">
                <!-- begin alert -->
                <?php if ($this->session->userdata('success')): ?>
                <div class="alert alert-success fade show">
                    <button type="button" class="close" data-dismiss="alert">
                        <span aria-hidden="true">&times;</span>
                    </button><?php echo $this->session->userdata('success'); ?>
                </div>
                <?php endif; ?>
                <!-- end alert -->
                <!-- begin panel-body -->
                <div class="panel-body">
                    <table id="data-table-buttons" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th width="1%">#</th>
                                <th class="text-nowrap">Invoice</th>
                                <th class="text-nowrap">Tenant Name</th>
                                <th class="text-nowrap">Bed Number</th>
                                <th class="text-nowrap">Amount</th>
                                <th class="text-nowrap">Advance</th>
                                <th class="text-nowrap">Remaining</th>
                                <th class="text-nowrap">Status</th>
                                <th class="text-nowrap">Due Date</th>
                                <th class="text-nowrap">Created On</th>
                                <th class="text-nowrap">Created By</th>
                                <th class="text-nowrap">Updated On</th>
                                <th class="text-nowrap">Updated By</th>
                                 <?php if ($this->session->userdata('user_type') != 3): ?>
                                <th class="text-nowrap">Options</th>
                                <?php endif; ?>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            $count = 1;
                            $this->db->order_by('timestamp', 'desc');
                            if ($this->session->userdata('user_type') == 3) {
                                $tenant_id = $this->db->get_where('user', array('user_id' => $this->session->userdata('user_id')))->row()->person_id;
                                $bill_info = $this->db->get_where('tenant_rent', array('month' => date('F'), 'year' => date('Y'), 'tenant_id' => $tenant_id))->result_array();
                            } else {
                                $bill_info = $this->db->get_where('tenant_rent', array('month' => date('F'), 'year' => date('Y')))->result_array();
                            }
                            foreach ($bill_info as $row):
                        ?>
                            <tr>
                                <td><?php echo $count++; ?></td>
                                <td>
									<a href="<?php echo base_url(); ?>invoice/<?php echo $row['invoice_number']; ?>">
										#<?php echo html_escape($row['invoice_number']); ?>
									</a>
                                </td>
                                <td>
									<a data-toggle="tooltip" data-placement="bottom" title="" data-original-title="<?php echo html_escape('Mobile Number: ' . $row['tenant_mobile']); ?>">
										<?php echo html_escape($row['tenant_name']); ?>
									</a>
                                </td>
                                <td><?php echo html_escape($row['bed']); ?></td>
                                <td>
									<?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
									<?php echo html_escape($row['amount']); ?>
                                </td>
                                <td>
									<?php
										if ($row['advance'] > 0)
											echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content . ' ' . $row['advance'];
										else
											echo 'N/A';
									?>
                                </td>
                                  <td>
                                    <?php $a = $row['amount'];  ?>
									<?php	$b = $row['advance']; ?>
									<?php echo $a - $b; ?>
                                </td>
                                <td>
                                <?php if ($row['status'] == 0): ?>
                                    <span class="btn btn-xs btn-oval btn-warning">Due</span>
                                <?php endif; ?>
                                <?php if ($row['status'] == 1): ?>
                                    <span class="btn btn-xs btn-oval btn-primary">Paid</span>
                                <?php endif; ?>
                                </td>
                                 <td><?php echo date('d M, Y', $row['due_date']); ?></td>
                                <td><?php echo date('d M, Y', $row['created_on']); ?></td>
                                <td>
									<?php
										$user_type =  $this->db->get_where('user', array('user_id' => $row['created_by']))->row()->user_type;
										if ($user_type == 1) {
											echo 'Admin';
										} else {
                                            $person_id = $this->db->get_where('user', array('user_id' => $row['created_by']))->row()->person_id;
                                            echo html_escape($this->db->get_where('staff', array('staff_id' => $person_id))->row()->name);
										}
									?>
                                </td>
                                <td><?php echo date('d M, Y', $row['timestamp']); ?></td>
                                <td>
									<?php
										$user_type =  $this->db->get_where('user', array('user_id' => $row['updated_by']))->row()->user_type;
										if ($user_type == 1) {
											echo 'Admin';
										} else {
                                            $person_id = $this->db->get_where('user', array('user_id' => $row['updated_by']))->row()->person_id;
                                            echo html_escape($this->db->get_where('staff', array('staff_id' => $person_id))->row()->name);
										}
									?>
                                </td>
                                <?php if ($this->session->userdata('user_type') != 3): ?>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-white btn-xs">Action</button>
                                        <button type="button" class="btn btn-white btn-xs dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="javascript:;" onclick="showAjaxModal('<?php echo base_url(); ?>modal/popup/modal_edit_tenant_rent/<?php echo $row['tenant_rent_id']; ?>');">
                                                Edit
                                            </a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="javascript:;" onclick="confirm_modal('<?php echo base_url(); ?>rents/remove/<?php echo $row['tenant_rent_id']; ?>');" >
                                                Remove
                                            </a>
                                        </div>
                                    </div>
                                </td>
                                <?php endif; ?>
                            </tr>
                        <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
                <!-- end panel-body -->
            </div>
            <!-- end panel -->
        </div>
        <!-- end col-9 -->
        <!-- begin col-3 -->
        <div class="col-lg-3">
            <!-- begin panel -->
            <div class="panel panel-inverse">
                <!-- begin panel-body -->
                <div class="panel-body">
                    <?php echo form_open('single_month_rent', array('method' => 'post', 'data-parsley-validate' => 'true')); ?>
                    <div class="form-group">
                        <label>Year</label><b><span style="color:red"> *</span></b>
                        <div>
                            <select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="year">
								<option value="">Select Year</option>
                             
                                <option value="<?php echo date('Y'); ?>"><?php echo date('Y'); ?></option>
                                <option value="<?php echo date('Y') + 1; ?>"><?php echo date('Y') + 1; ?></option>
                                <option value="<?php echo date('Y') + 2; ?>"><?php echo date('Y') + 2; ?></option>
                                <option value="<?php echo date('Y') + 3; ?>"><?php echo date('Y') + 3; ?></option>
                                <option value="<?php echo date('Y') + 4; ?>"><?php echo date('Y') + 4; ?></option>
                                <option value="<?php echo date('Y') + 4; ?>"><?php echo date('Y') + 5; ?></option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Month</label><b><span style="color:red"> *</span></b>
                        <div>
                            <select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="month">
								<option value="">Select Month</option>
                                <option value="January">January</option>
                                <option value="February">February</option>
                                <option value="March">March</option>
                                <option value="April">April</option>
                                <option value="May">May</option>
                                <option value="June">June</option>
                                <option value="July">July</option>
                                <option value="August">August</option>
                                <option value="September">September</option>
                                <option value="October">October</option>
                                <option value="November">November</option>
                                <option value="December">December</option>
                            </select>
                        </div>
                    </div>

                    <button type="submit" class="mb-sm btn btn-block btn-primary">Show</button>
                    <?php echo form_close(); ?>
                </div>
                <!-- end panel-body -->
            </div>
            <!-- end panel -->
            <?php if ($this->session->userdata('user_type') != 3): ?>
            <div class="widget widget-stats bg-orange">
                <div class="stats-icon"><i class="fa fa-money-bill-alt"></i></div>
                <div class="stats-info">
                    <h4><b>Due Rents of <?php echo date('F') . ', ' . date('Y'); ?></b></h4>
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

                            echo $due_amount - $due_advance;
                        ?>
                    </p>
                </div>
            </div>
            <div class="widget widget-stats bg-blue">
                <div class="stats-icon"><i class="fa fa-credit-card"></i></div>
                <div class="stats-info">
                    <h4><b>Total Rents of <?php echo date('F') . ', ' . date('Y'); ?></b></h4>
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

                            echo $total_amount ;
                        ?>
                    </p>
                </div>
            </div>
            <?php endif; ?>
        </div>
        <!-- end col-3 -->
    </div>
    <!-- end row -->
</div>
<!-- end #content -->
