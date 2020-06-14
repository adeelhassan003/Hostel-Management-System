<!-- begin #content -->
<div id="content" class="content">
    <!-- begin breadcrumb -->
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Dashboard</a></li>
        <li class="breadcrumb-item active">Add Tenant</li>
    </ol>
    <!-- end breadcrumb -->
    <!-- begin page-header -->
    <h1 class="page-header">
        Add new tenant here
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
                    <?php echo form_open_multipart('tenants/add', array('method' => 'post', 'data-parsley-validate' => 'true')); ?>
                        <div class="form-group">
                            <label>Name </label><b><span style="color:red"> *</span></b>
                            <input autofocus type="text" name="name" placeholder="Enter name" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/">
                        </div>
                        <div class="form-group">
                            <label>Mobile </label><b><span style="color:red"> *</span></b>
                            <input data-parsley-length="[5, 15]" type="text" name="mobile_number" placeholder="Enter mobile number" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\d\-\s\(\)\+]+$/">
                        </div>
                        <div class="form-group">
                            <label>Email </label><b><span style="color:red"> *</span></b>
                            <input type="email" name="email" placeholder="Enter email with '@'" class="form-control" data-parsley-required="true">
                        </div> 
                        <!--<div class="form-group">
                            <label>Password</label>
                            <input type="text" name="password" id="password-indicator-visible" class="form-control m-b-5" data-parsley-required="true">
							<div id="passwordStrengthDiv2" class="is0 m-t-5"></div>
                        </div> -->
                        <div class="form-group">
                            <label>ID Type </label><b><span style="color:red"> *</span></b>
                            <select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="id_type_id">
                                <option value="">Select ID Type</option>
                            <?php
								$id_types = $this->db->get('id_type')->result_array();
								foreach ($id_types as $id_type):
                            ?>
								<option value="<?php echo html_escape($id_type['id_type_id']); ?>"><?php echo html_escape($id_type['name']); ?></option>
							<?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>ID </label><b><span style="color:red"> *</span></b>
                            <input name="id_number" type="text" placeholder="Enter ID number" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/">
                        </div>
                        <div class="form-group">
							<label>Image </label><b><span style="color:red"> *</span></b>
                            <br>
                            <span class="btn btn-primary fileinput-button">
								<i class="fa fa-plus"></i>
								<span>Add file</span>
								<input class="form-control" type="file" data-parsley-required="true" name="image_link" >
							</span
                        </div>

                        <div class="form-group">
                            <label>Home Address </label><b><span style="color:red"> *</span></b>
                            <input name="home_address_line_1" type="text" placeholder="Enter home address line 1" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s\,]+$/">
                        </div>
                      
                        <div class="form-group">
                            <label>Emergency Person </label><b><span style="color:red"> *</span></b>
                            <input type="text" name="emergency_person" placeholder="Enter emergency person's name" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/">
                        </div>
                        <div class="form-group">
                            <label>Emergency Contact </label><b><span style="color:red"> *</span></b>
                            <input type="text" data-parsley-length="[5, 15]" name="emergency_contact" placeholder="Enter emergency person's mobile number" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\d\-\s\(\)\+]+$/">
                        </div>
                        <div class="form-group">
                            <label>Bed </label><b><span style="color:red"> *</span></b>
                            <select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="bed_id">
                                <option value="">Select bed</option>
                            <?php
								$beds = $this->db->get_where('bed', array('status' => 0))->result_array();
								foreach ($beds as $bed):
                            ?>
								<option value="<?php echo html_escape($bed['bed_id']); ?>"><?php echo html_escape('#' . $bed['bed_number'] . ' of the room ' . $this->db->get_where('room', array('room_id' => $bed['room_id']))->row()->room_number); ?></option>
							<?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Profession </label><b><span style="color:red"> *</span></b>
                            <select class="form-control selectpicker" data-size="10" data-live-search="true"   data-parsley-required="true" name="profession_id">
                                <option value="">Select profession</option>
                            <?php
								$professions = $this->db->get('profession')->result_array();
								foreach ($professions as $profession):
                            ?>
								<option value="<?php echo html_escape($profession['profession_id']); ?>"><?php echo html_escape($profession['name']); ?></option>
							<?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Work/Institution Address </label>
                            <input name="work_address_line_1" type="text" placeholder="Enter work/Institution address line 1" class="form-control"  data-parsley-pattern="/^[\w\-\s\,]+$/">
                        </div>
                        
                        <div class="form-group">
                            <label>Status </label><b><span style="color:red"> *</span></b>
                            <select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="status">
								<option value="">Select status</option>
                                <option value="1">Active</option>
                                <option value="0">Inactive</option>
                            </select>
                        </div> 
                        <div class="form-group">
                            <label>Extra Note </label>
                            <textarea style="resize: none" type="text" name="extra_note" placeholder="Enter extra note" class="form-control" data-parsley-pattern="/^[\w\-\s\.]+$/"></textarea>
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
