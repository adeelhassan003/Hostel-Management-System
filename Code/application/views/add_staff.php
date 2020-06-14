<!-- begin #content -->
<div id="content" class="content">
    <!-- begin breadcrumb -->
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Dashboard</a></li>
        <li class="breadcrumb-item active">Add Staff</li>
    </ol>
    <!-- end breadcrumb -->
    <!-- begin page-header -->
    <h1 class="page-header">
        Add new staff here
    </h1>
    <!-- end page-header -->

    <!-- begin row -->
    <div class="row">
        <!-- begin col-12 -->
        <div class="col-lg-6 offset-lg-3">
            <!-- begin panel -->
            <div class="panel panel-inverse">
                <!-- begin alert -->
                <?php if ($this->session->userdata('warning')): ?>
                <div class="alert alert-warning fade show">
                    <button type="button" class="close" data-dismiss="alert">
                        <span aria-hidden="true">&times;</span>
                    </button><?php echo $this->session->userdata('warning'); ?>
                </div>
                <?php endif; ?>
                <!-- end alert -->
                <!-- begin panel-body -->
                <div class="panel-body">
                    <?php echo form_open('staff/add', array('method' => 'post', 'data-parsley-validate' => 'true')); ?>
                        <div class="form-group">
                            <label>Name</label><b><span style="color:red"> *</span></b>
                            <input autofocus type="text" name="name" placeholder="Enter name" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/">
                        </div>
                        <div class="form-group">
                            <label>Role</label><b><span style="color:red"> *</span></b>
                            <input type="text" name="role" placeholder="Enter role i.e. Manager" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/">
                        </div>
                        <div class="form-group">
                            <label>Email</label><b><span style="color:red"> *</span></b>
                            <input type="email" name="email" placeholder="Enter email" class="form-control" data-parsley-required="true">
                        </div>
                        <!--<div class="form-group">
                            <label>Password</label><b><span style="color:red"> *</span></b>
                            <input type="text" name="password" id="password-indicator-visible" class="form-control m-b-5" data-parsley-required="true">
							<div id="passwordStrengthDiv2" class="is0 m-t-5"></div>
                        </div>-->
                        <div class="form-group">
                            <label>Mobile Number</label><b><span style="color:red"> *</span></b>
                            <input data-parsley-length="[5, 15]" type="text" name="mobile_number" placeholder="Enter mobile number" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\d\-\s\(\)\+]+$/">
                        </div>
                        <div class="form-group">
                            <label>Status</label><b><span style="color:red"> *</span></b>
                            <select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="status">
                                <option value="">Select Status</option>
                                <option value="0">Inactive</option>
                                <option value="1">Active</option>
                            </select>
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
