<!-- begin #content -->
<div id="content" class="content">
    <!-- begin breadcrumb -->
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Dashboard</a></li>
        <li class="breadcrumb-item active">Add Bed</li>
    </ol>
    <!-- end breadcrumb -->
    <!-- begin page-header -->
    <h1 class="page-header">
        Add new bed here
    </h1>
    <!-- end page-header -->

    <!-- begin row -->
    <div class="row">
        <!-- begin col-12 -->
        <div class="col-lg-6 offset-lg-3">
            <!-- begin panel -->
            <div class="panel panel-inverse">
                <?php if ($this->session->userdata('warning')): ?>
                <div class="alert alert-warning fade show">
                    <button type="button" class="close" data-dismiss="alert">
                        <span aria-hidden="true">&times;</span>
                    </button><?php echo $this->session->userdata('warning'); ?>
                </div>
                <?php endif; ?>
                <!-- begin panel-body -->
                <div class="panel-body">
                    <?php echo form_open('beds/add', array('method' => 'post', 'data-parsley-validate' => 'true')); ?>
                        <div class="form-group">
                            <label>Bed Number</label><b><span style="color:red"> *</span></b>
                            <input autofocus type="text" name="bed_number" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/" placeholder="Enter bed number" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Room Number</label><b><span style="color:red"> *</span></b>
                            <select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="room_id">
								<option value="">Select room</option>
							<?php
								$rooms = $this->db->get('room')->result_array();
								foreach ($rooms as $room):
							?>
                                <option value="<?php echo html_escape($room['room_id']); ?>"><?php echo html_escape($room['room_number'] . ' of ' . $room['floor'] . ' Floor'); ?></option>
                            <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Rent (<?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>)</label><b><span style="color:red"> *</span></b>
                            <input type="text" data-parsley-required="true" data-parsley-type="number" name="rent" placeholder="Enter rent" class="form-control" min="1">
                        </div>
                        <div class="form-group">
                            <label>Remarks</label>
                            <textarea style="resize: none" type="text" name="remarks" placeholder="Enter remarks" class="form-control" data-parsley-pattern="/^[\w\-\s\.]+$/"></textarea>
                        </div>

                        <button type="submit" class="mb-sm btn btn-primary">Submit</button>
                    <?php echo form_close(); ?>
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
