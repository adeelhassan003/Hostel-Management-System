<!-- begin #content -->
<div id="content" class="content">
    <!-- begin breadcrumb -->
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Dashboard</a></li>
        <li class="breadcrumb-item active">Beds</li>
    </ol>
    <!-- end breadcrumb -->
    <!-- begin page-header -->
    <h1 class="page-header">
        <a href="<?php echo base_url(); ?>add_bed">
            <button type="button" class="btn btn-inverse"><i class="fa fa-plus"></i> Add Bed</button>
        </a>
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
                                <th class="text-nowrap">Bed Number</th>
                                <th class="text-nowrap">Room Number</th>
                                <th class="text-nowrap">Floor Number</th>
                                <th class="text-nowrap">Rent</th>
                                <th class="text-nowrap">Status</th>
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
                            $this->db->order_by('timestamp', 'desc');
                            $beds = $this->db->get('bed')->result_array();
                            foreach ($beds as $bed):
                        ?>
                            <tr>
                                <td width="1%"><?php echo $count++; ?></td>
                                <td>
                                    <a data-toggle="tooltip" data-placement="bottom" title="" data-original-title="<?php echo html_escape('Remarks: ' . $bed['remarks']); ?>">
                                        <?php echo html_escape($bed['bed_number']); ?>
                                    </a>
                                </td>
                                <td><?php echo html_escape($this->db->get_where('room', array('room_id' => $bed['room_id']))->row()->room_number); ?></td>
                                <td><?php echo html_escape($this->db->get_where('room', array('room_id' => $bed['room_id']))->row()->floor); ?></td>
                                <td>
                                    <?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
                                    <?php echo html_escape($bed['rent']); ?>
                                </td>
                                <td>
                                    <?php
                                    if ($bed['status'])
                                    echo '<span class="btn btn-xs btn-oval btn-primary">Occupied</span>';
                                    else
                                    echo '<span class="btn btn-xs btn-oval btn-warning">Unoccupied</span>';
                                    ?>
                                </td>
                                <td><?php echo date('d M, Y', $bed['created_on']); ?></td>
                                <td>
                                    <?php
                                    $user_type =  $this->db->get_where('user', array('user_id' => $bed['created_by']))->row()->user_type;
                                    if ($user_type == 1) {
                                        echo 'Admin';
                                    } else {
                                        $person_id = $this->db->get_where('user', array('user_id' => $bed['created_by']))->row()->person_id;
                                        echo html_escape($this->db->get_where('staff', array('staff_id' => $person_id))->row()->name);
                                    }
                                    ?>
                                </td>
                                <td><?php echo date('d M, Y', $bed['timestamp']); ?></td>
                                <td>
                                    <?php
                                    $user_type =  $this->db->get_where('user', array('user_id' => $bed['updated_by']))->row()->user_type;
                                    if ($user_type == 1) {
                                        echo 'Admin';
                                    } else {
                                        $person_id = $this->db->get_where('user', array('user_id' => $bed['updated_by']))->row()->person_id;
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
                                            <a class="dropdown-item" href="javascript:;" onclick="showAjaxModal('<?php echo base_url(); ?>modal/popup/modal_edit_bed/<?php echo $bed['bed_id']; ?>');">
                                                Edit
                                            </a>
                                            <?php if (!$bed['status']): ?>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="javascript:;" onclick="confirm_modal('<?php echo base_url(); ?>beds/remove/<?php echo $bed['bed_id']; ?>');" >
                                                Remove
                                            </a>
                                            <?php endif; ?>
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
        <!-- end col-12 -->
    </div>
    <!-- end row -->
</div>
<!-- end #content -->
