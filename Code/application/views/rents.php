<!-- begin #content -->
<div id="content" class="content">
    <!-- begin breadcrumb -->
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Dashboard</a></li>
        <li class="breadcrumb-item active">All Rent</li>
    </ol>
    <!-- end breadcrumb -->
    <!-- begin page-header -->
    <h1 class="page-header">
        All the rents
    </h1>
    <!-- end page-header -->

    <!-- begin row -->
    <div class="row">
        <!-- begin col-12 -->
        <div class="col-lg-12">
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
                                <th class="text-nowrap">Month</th>
                                <th class="text-nowrap">Year</th>
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
                                $bill_info = $this->db->get_where('tenant_rent', array('tenant_id' => $tenant_id))->result_array();
                            } else {
                                $bill_info = $this->db->get('tenant_rent')->result_array();
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
                                <td><?php echo html_escape($row['month']); ?></td>
                                <td><?php echo html_escape($row['year']); ?></td>
                               
                                <td><?php echo html_escape($row['bed']); ?></td>
                                <td>
									<?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
									<?php echo html_escape($row['amount']); ?>
                                </td>
                                <td>
									<?php
										if ($row['advance'] > 0)
											echo html_escape($this->db->get_where('setting', array('name' => 'currency'))->row()->content . ' ' .$row['advance']);
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
                                 <?php if ($row['status'] == 2): ?>
                                    <span class="btn btn-xs btn-oval btn-primary">Partially Paid</span>
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
        <!-- end col-12 -->
    </div>
    <!-- end row -->
</div>
<!-- end #content -->
