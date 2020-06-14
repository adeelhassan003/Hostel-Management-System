<?php echo form_open('rents/update/' . $param2, array('id' => 'edit_tenant_rent', 'method' => 'post', 'data-parsley-validate' => 'true')); ?>
<?php
	$tenant_rent_details = $this->db->get_where('tenant_rent', array('tenant_rent_id' => $param2))->result_array();
	foreach ($tenant_rent_details as $row):
?>
	<div class="form-group">
		<label>Tenant</label><b><span style="color:red"> *</span></b>
		<div>
			<select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="tenant_id">
				<option value="">Select tenant</option>
			<?php
				$tenants = $this->db->get('tenant')->result_array();
				foreach ($tenants as $tenant):
			?>
				<option <?php if ($tenant['tenant_id'] == $row['tenant_id']) echo 'selected'; ?> value="<?php echo html_escape($tenant['tenant_id']); ?>"><?php echo html_escape($tenant['name']); ?></option>
			<?php endforeach; ?>
			</select>
		</div>
	</div>
    <div class="form-group">
        <label>Status</label><b><span style="color:red"> *</span></b>
        <div>
			<select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="status">
				<option value="">Select Status</option>
                <option <?php if ($row['status'] == 0) echo 'selected'; ?> value="0">Due</option>
                <option <?php if ($row['status'] == 1) echo 'selected'; ?> value="1">Paid</option>
                <option <?php if ($row['status'] == 2) echo 'selected'; ?> value="2">Partially Paid</option>
            </select>
        </div>
    </div>
    <div class="form-group">
		<label>Month</label><b><span style="color:red"> *</span></b>
		<select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="month">
			<option value="">Select Month</option>
			<option <?php if ($row['month'] == 'January') echo 'selected'; ?> value="January">January</option>
			<option <?php if ($row['month'] == 'February') echo 'selected'; ?> value="February">February</option>
			<option <?php if ($row['month'] == 'March') echo 'selected'; ?> value="March">March</option>
			<option <?php if ($row['month'] == 'April') echo 'selected'; ?> value="April">April</option>
			<option <?php if ($row['month'] == 'May') echo 'selected'; ?> value="May">May</option>
			<option <?php if ($row['month'] == 'June') echo 'selected'; ?> value="June">June</option>
			<option <?php if ($row['month'] == 'July') echo 'selected'; ?> value="July">July</option>
			<option <?php if ($row['month'] == 'August') echo 'selected'; ?> value="August">August</option>
			<option <?php if ($row['month'] == 'September') echo 'selected'; ?> value="September">September</option>
			<option <?php if ($row['month'] == 'October') echo 'selected'; ?> value="October">October</option>
			<option <?php if ($row['month'] == 'November') echo 'selected'; ?> value="November">November</option>
			<option <?php if ($row['month'] == 'December') echo 'selected'; ?> value="December">December</option>
		</select>
	</div>
    <div class="form-group">
		<label>Year</label><b><span style="color:red"> *</span></b>
		<select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="year">
			<option value="">Select Year</option>
		
			<option <?php if ($row['year'] == date('Y')) echo 'selected'; ?> value="<?php echo date('Y'); ?>"><?php echo date('Y'); ?></option>
			<option <?php if ($row['year'] == date('Y') + 1) echo 'selected'; ?> value="<?php echo date('Y') + 1; ?>"><?php echo date('Y') + 1; ?></option>
			<option <?php if ($row['year'] == date('Y') + 2) echo 'selected'; ?> value="<?php echo date('Y') + 2; ?>"><?php echo date('Y') + 2; ?></option>
			<option <?php if ($row['year'] == date('Y') + 3) echo 'selected'; ?> value="<?php echo date('Y') + 3; ?>"><?php echo date('Y') + 3; ?></option>
			<option <?php if ($row['year'] == date('Y') + 4) echo 'selected'; ?> value="<?php echo date('Y') + 4; ?>"><?php echo date('Y') + 4; ?></option>
			<option <?php if ($row['year'] == date('Y') + 5) echo 'selected'; ?> value="<?php echo date('Y') + 5; ?>"><?php echo date('Y') + 5; ?></option>
		</select>
	</div>
    <div class="form-group">
        <label>Amount (<?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>)</label><b><span style="color:red"> *</span></b>
        <input value="<?php echo html_escape($row['amount']); ?>" type="text" name="amount" placeholder="Enter amount" class="form-control" data-parsley-required="true" data-parsley-type="number" min="1">
    </div>
	<div class="form-group">
		<label>Due Date (mm/dd/yyyy)</label><b><span style="color:red"> *</span></b>
		<input value="<?php echo date('m/d/Y', $row['due_date']); ?>" name="due_date" type="text" class="form-control" id="datepicker-autoClose" placeholder="Due Date" data-parsley-required="true" />
	</div>
    <div class="form-group">
		<label>Advance (<?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>)</label>
		<input value="<?php echo html_escape($row['advance']); ?>" type="text" name="advance" placeholder="Enter advance amount" class="form-control" data-parsley-type="number">
	</div>

    <button type="submit" class="mb-sm btn btn-primary">Update</button>
<?php endforeach; ?>
<?php echo form_close(); ?>

<script>
	$('#edit_tenant_rent').parsley();
	FormPlugins.init();
</script>
