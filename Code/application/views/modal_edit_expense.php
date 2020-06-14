<?php echo form_open('expenses/update/' . $param2, array('id' => 'edit_expense', 'method' => 'post', 'data-parsley-validate' => 'true')); ?>
<?php
	$expense_details = $this->db->get_where('expense', array('expense_id' => $param2))->result_array();
	foreach ($expense_details as $row):
?>
	<div class="form-group">
		<label>Name</label><b><span style="color:red"> *</span></b>
		<input value="<?php echo $row['name']; ?>" type="text" name="name" placeholder="Enter name of the expense" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/">
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
		<label>Amount (<?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>)</label><b><span style="color:red"> *</span></b>
		<input value="<?php echo html_escape($row['amount']); ?>" type="text" name="amount" placeholder="Enter amount" class="form-control" data-parsley-required="true" data-parsley-type="number" min="1">
	</div>
	<div class="form-group">
		<label>Description</label>
		<textarea style="resize: none" type="text" name="description" placeholder="Enter description of the expense" class="form-control" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s\.]+$/"><?php echo html_escape($row['description']); ?></textarea>
	</div>

	<button type="submit" class="mb-sm btn btn-primary">Update</button>
<?php endforeach; ?>
<?php echo form_close(); ?>

<script>
	$('#edit_expense').parsley();
	FormPlugins.init();
</script>
