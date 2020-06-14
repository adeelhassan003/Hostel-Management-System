<!-- begin #content -->
<div id="content" class="content">
    <!-- begin breadcrumb -->
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Dashboard</a></li>
        <li class="breadcrumb-item active">Profession Settings</li>
    </ol>
    <!-- end breadcrumb -->
    <!-- begin page-header -->
    <h1 class="page-header">
        Profession details
    </h1>
    <!-- end page-header -->

    <!-- begin row -->
    <div class="row">
        <!-- begin col-8 -->
        <div class="col-lg-8">
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
                                <th class="text-nowrap">Name</th>
                                <th class="text-nowrap">Created On</th>
                                <th class="text-nowrap">Created By</th>
                                <th class="text-nowrap">Updated On</th>
                                <th class="text-nowrap">Updated By</th>
                                <th class="text-nowrap">Options</th>
                            </tr>
                        </thead>
                        <tbody>
						<?php
							$count = 1;
							$professions = $this->db->get('profession')->result_array();
							foreach ($professions as $row):
						?>
                            <tr>
								<td><?php echo $count++; ?></td>
								<td><?php echo html_escape($row['name']); ?></td>
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
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-white btn-xs">Action</button>
                                        <button type="button" class="btn btn-white btn-xs dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="javascript:;" onclick="showAjaxModal('<?php echo base_url(); ?>modal/popup/modal_edit_profession/<?php echo $row['profession_id']; ?>');">
                                                Edit
                                            </a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="javascript:;" onclick="confirm_modal('<?php echo base_url(); ?>profession_settings/remove/<?php echo $row['profession_id']; ?>');" >
                                                Remove
                                            </a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
                <!-- end panel-body -->
            </div>
            <!-- end panel -->
        </div>
        <!-- end col-8 -->
		<!-- begin col-4 -->
		<div class="col-md-4">
            <!-- begin panel -->
            <div class="panel panel-inverse">
                <!-- begin panel-body -->
                <div class="panel-body">
					<?php echo form_open('profession_settings/add', array('method' => 'post', 'data-parsley-validate' => 'true')); ?>
						<div class="form-group">
							<label>Name</label><b><span style="color:red"> *</span></b>
							<input type="text" name="name" placeholder="Enter profession name" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/">
						</div>

						<button type="submit" class="mb-sm btn btn-primary">Submit</button>
					<?php echo form_close(); ?>
                </div>
                <!-- end panel-body -->
            </div>
            <!-- end panel -->
		</div>
		<!-- end col-4 -->
    </div>
    <!-- end row -->
</div>
<!-- end #content -->
