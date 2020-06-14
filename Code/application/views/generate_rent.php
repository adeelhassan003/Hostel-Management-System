<!-- begin #content -->
<div id="content" class="content">
    <!-- begin breadcrumb -->
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Dashboard</a></li>
        <li class="breadcrumb-item active">Generate Rent</li>
    </ol>
    <!-- end breadcrumb -->
    <!-- begin page-header -->
    <h1 class="page-header">
        Generate rents for Tenants
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
                    <?php echo form_open('generate_rent/single', array('method' => 'post', 'data-parsley-validate' => 'true')); ?>
                        <div class="form-group">
                            <label>Tenant</label><b><span style="color:red"> *</span></b>
                            <div>
                                <select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="tenant_id">
									<option value="">Select tenant</option>
								<?php
									$tenants = $this->db->get_where('tenant', array('status' => 1))->result_array();
									foreach ($tenants as $tenant):
								?>
                                    <option value="<?php echo html_escape($tenant['tenant_id']); ?>"><?php echo html_escape($tenant['name']); ?></option>
                                <?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Status</label><b><span style="color:red"> *</span></b>
                            <div>
                                <select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="status">
									<option value="">Select Status</option>
                                    <option value="0">Due</option>
                                    <option value="1">Paid</option>
                                    <option value="2">Partially Paid</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Months</label><b><span style="color:red"> *</span></b>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="checkbox checkbox-css">
                                        <input type="checkbox" id="January" value="January" name="months[]" data-parsley-required="true" />
                                        <label for="January">January</label>
                                    </div>
                                    <div class="checkbox checkbox-css">
                                        <input type="checkbox" id="May" value="May" name="months[]" />
                                        <label for="May">May</label>
                                    </div>
                                    <div class="checkbox checkbox-css">
                                        <input type="checkbox" id="September" value="September" name="months[]" />
                                        <label for="September">September</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox checkbox-css">
                                        <input type="checkbox" id="February" value="February" name="months[]" />
                                        <label for="February">February</label>
                                    </div>
                                    <div class="checkbox checkbox-css">
                                        <input type="checkbox" id="June" value="June" name="months[]" />
                                        <label for="June">June</label>
                                    </div>
                                    <div class="checkbox checkbox-css">
                                        <input type="checkbox" id="October" value="October" name="months[]" />
                                        <label for="October">October</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox checkbox-css">
                                        <input type="checkbox" id="March" value="March" name="months[]" />
                                        <label for="March">March</label>
                                    </div>
                                    <div class="checkbox checkbox-css">
                                        <input type="checkbox" id="July" value="July" name="months[]" />
                                        <label for="July">July</label>
                                    </div>
                                    <div class="checkbox checkbox-css">
                                        <input type="checkbox" id="November" value="November" name="months[]" />
                                        <label for="November">November</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox checkbox-css">
                                        <input type="checkbox" id="April" value="April" name="months[]" />
                                        <label for="April">April</label>
                                    </div>
                                    <div class="checkbox checkbox-css">
                                        <input type="checkbox" id="August" value="August" name="months[]" />
                                        <label for="August">August</label>
                                    </div>
                                    <div class="checkbox checkbox-css">
                                        <input type="checkbox" id="December" value="December" name="months[]" />
                                        <label for="December">December</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Year</label><b><span style="color:red"> *</span></b>
                            <div>
                                <select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="year">
									<option value="">Select year</option>
								
									<option value="<?php echo date('Y'); ?>"><?php echo date('Y'); ?></option>
									<option value="<?php echo date('Y') + 1; ?>"><?php echo date('Y') + 1; ?></option>
									<option value="<?php echo date('Y') + 2; ?>"><?php echo date('Y') + 2; ?></option>
									<option value="<?php echo date('Y') + 3; ?>"><?php echo date('Y') + 3; ?></option>
									<option value="<?php echo date('Y') + 4; ?>"><?php echo date('Y') + 4; ?></option>
									<option value="<?php echo date('Y') + 1; ?>"><?php echo date('Y') + 5; ?></option>
							
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Due Date (mm/dd/yyyy)</label><b><span style="color:red"> *</span></b>
                            <input name="due_date" type="text" class="form-control" id="datepicker-default" placeholder="Due Date" data-parsley-required="true" />
	                    </div>
                        <div class="form-group">
                            <label>Advance</label>
                            <input type="text" name="advance" placeholder="Enter advance amount" class="form-control" data-parsley-type="number" min="1">
                        </div>

                        <button type="submit" class="mb-sm btn btn-block btn-primary">Generate single tenant rent</button>
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
                <!-- begin panel-body -->
                <div class="panel-body">
                    <?php echo form_open('generate_rent/monthly', array('method' => 'post', 'data-parsley-validate' => 'true')); ?>
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
                    <div class="form-group">
                        <label>Due Date (mm/dd/yyyy)</label><b><span style="color:red"> *</span></b>
                        <input name="due_date" type="text" class="form-control" id="datepicker-autoClose" placeholder="Due Date" data-parsley-required="true" />
                    </div>

                    <button type="submit" class="mb-sm btn btn-block btn-primary">Generate monthly rents</button>
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
