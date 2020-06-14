<?php echo form_open('staff/update/' . $param2, array('id' => 'edit_staff', 'method' => 'post', 'data-parsley-validate' => 'true')); ?>
<?php
	$staff_details = $this->db->get_where('staff', array('staff_id' => $param2))->result_array();
	foreach ($staff_details as $row):
?>
	<div class="form-group">
		<label>Name</label><b><span style="color:red"> *</span></b>
		<input value="<?php echo html_escape($row['name']); ?>" type="text" name="name" placeholder="Enter name" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/">
	</div>
	<div class="form-group">
		<label>Role</label><b><span style="color:red"> *</span></b>
		<input value="<?php echo html_escape($row['role']); ?>" type="text" name="role" placeholder="Enter role" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/">
	</div>
	<div class="form-group">
		<label>Mobile Number</label><b><span style="color:red"> *</span></b>
		<input data-parsley-length="[5, 15]" value="<?php echo html_escape($row['mobile_number']); ?>" type="text" name="mobile_number" placeholder="Enter mobile number" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\d\-\s\(\)\+]+$/">
	</div>
	<div class="form-group">
		<label>Email</label><b><span style="color:red"> *</span></b>
		<input readonly value="<?php echo html_escape($this->db->get_where('user', array('person_id' => $row['staff_id'], 'user_type' => 2))->row()->email); ?>" type="email" name="email" placeholder="Enter email" class="form-control" data-parsley-required="true">
	</div>
	<div class="form-group">
		<label>Status</label><b><span style="color:red"> *</span></b>
		<div>
			<select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="status">
				<option value="">Select status</option>
				<option <?php if ($row['status'] == 0) echo 'selected'; ?> value="0">Inactive</option>
				<option <?php if ($row['status'] == 1) echo 'selected'; ?> value="1">Active</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label>Remarks</label>
		<textarea style="resize: none" type="text" name="remarks" placeholder="Enter remarks" class="form-control" data-parsley-pattern="/^[\w\-\s\.]+$/"><?php echo html_escape($row['remarks']); ?></textarea>
	</div>

	<button type="submit" class="mb-sm btn btn-primary">Update</button>
<?php endforeach; ?>
<?php echo form_close(); ?>

<script>
	$('#edit_staff').parsley();
	FormPlugins.init();
</script>
