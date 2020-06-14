<!-- begin #content -->
<div id="content" class="content">
    <!-- begin breadcrumb -->
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Dashboard</a></li>
        <li class="breadcrumb-item active">System Settings</li>
    </ol>
    <!-- end breadcrumb -->
    <!-- begin page-header -->
    <h1 class="page-header">
        Update system settings
    </h1>
    <!-- end page-header -->

    <!-- begin row -->
    <div class="row">
        <!-- begin col-6 -->
        <div class="col-lg-6">
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
                    <?php echo form_open('website_settings/update', array('method' => 'post', 'data-parsley-validate' => 'true')); ?>
                        <div class="form-group">
                            <label>Sytem Name</label><b><span style="color:red"> *</span></b>
                            <input value="<?php echo html_escape($this->db->get_where('setting', array('name' => 'system_name'))->row()->content); ?>" alt="<?php echo $this->db->get_where('setting', array('name' => 'system_name'))->row()->content; ?>"
                            type="text" name="system_name" placeholder="Enter system name" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/">
                        </div>
                        <div class="form-group">
                            <label>Tagline</label><b><span style="color:red"> *</span></b>
                            <input value="<?php echo html_escape($this->db->get_where('setting', array('name' => 'tagline'))->row()->content); ?>" type="text" name="tagline" placeholder="Enter tagline" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/">
                        </div>
                        <div class="form-group">
                            <label>Address</label><b><span style="color:red"> *</span></b>
                            <input name="address_line_1" value="<?php echo html_escape(explode('<br>', $this->db->get_where('setting', array('name' => 'address'))->row()->content)[0]); ?>" type="text" placeholder="Enter address line 1" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s\,]+$/">
                        </div>
                        <div class="form-group">
                            <input name="address_line_2" value="<?php echo html_escape(explode('<br>', $this->db->get_where('setting', array('name' => 'address'))->row()->content)[1]); ?>" type="text" placeholder="Enter address line 2" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s\,]+$/">
                        </div>
                        <div class="form-group">
                            <label>Currency</label><b><span style="color:red"> *</span></b>
                            <div>
                                <select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="currency">
                                    <option value="">Select currency</option>
                                <?php
									$currencies = $this->db->get('currency')->result_array();
									foreach ($currencies as $currency):
                                ?>
									<option <?php if ($this->db->get_where('setting', array('name' => 'currency'))->row()->content == $currency['code']) echo 'selected'; ?> value="<?php echo html_escape($currency['code']); ?>"><?php echo html_escape($currency['name']); ?></option>
								<?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Timezone</label><b><span style="color:red"> *</span></b>
                            <div>
                                <select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="timezone">
                                    <option value="">Select your timezone</option>
                                <?php
									$timezones =  DateTimeZone::listIdentifiers(DateTimeZone::ALL);
									foreach ($timezones as $timezone):
                                ?>
									<option <?php if ($this->db->get_where('setting', array('name' => 'timezone'))->row()->content == $timezone) echo 'selected'; ?> value="<?php echo html_escape($timezone); ?>"><?php echo html_escape($timezone); ?></option>
								<?php endforeach; ?>
                                </select>
                            </div>
                        </div>

                        <button type="submit" class="mb-sm btn btn-primary">Update</button>
                    <?php echo form_close(); ?>
                </div>
                <!-- end panel-body -->
            </div>
            <!-- end panel -->
        </div>
        <!-- end col-6 -->
        <!-- begin col-6 -->
        <div class="col-lg-6">
            <!-- begin panel -->
            <div class="panel panel-inverse">
                <!-- begin alert -->
                <?php if ($this->session->userdata('success_favicon')): ?>
                <div class="alert alert-success fade show">
                    <button type="button" class="close" data-dismiss="alert">
                        <span aria-hidden="true">&times;</span>
                    </button><?php echo $this->session->userdata('success_favicon'); ?>
                </div>
                <?php endif; ?>
                <?php if ($this->session->userdata('warning_favicon')): ?>
                <div class="alert alert-warning fade show">
                    <button type="button" class="close" data-dismiss="alert">
                        <span aria-hidden="true">&times;</span>
                    </button><?php echo $this->session->userdata('warning_favicon'); ?>
                </div>
                <?php endif; ?>
                <!-- end alert -->
                <!-- begin panel-body -->
                <div class="panel-body">
                    <?php echo form_open_multipart('website_settings/update_favicon', array('method' => 'post', 'data-parsley-validate' => 'true')); ?>
                        <div class="form-group">
							<label>Favicon Preview</label>
                            <br>
                            <img style="width: 64px" src="<?php echo base_url(); ?>uploads/website/<?php echo $this->db->get_where('setting', array('name' => 'favicon'))->row()->content; ?>" alt="<?php echo $this->db->get_where('setting', array('name' => 'system_name'))->row()->content; ?>" class="img-responsive">
                        </div>
                        <div class="note note-secondary note-purple m-b-15">
							<span>Choose an image of the dimension 64 X 64</span>
						</div>
                        <span class="btn btn-primary fileinput-button">
                            <i class="fa fa-plus"></i>
                            <span>Add file</span>
                            <input class="form-control" type="file" name="favicon" data-parsley-required="true">
                        </span><br><br>

                        <button type="submit" class="mb-sm btn btn-primary">Update</button>
                    <?php echo form_close(); ?>
                </div>
                <!-- end panel-body -->
            </div>
            <!-- end panel -->
        </div>
        <!-- end col-6 -->
    </div>
    <!-- end row -->
</div>
<!-- end #content -->
