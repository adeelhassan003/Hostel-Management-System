<?php echo form_open('beds/update/' . $param2, array('id' => 'edit_bed', 'method' => 'post', 'data-parsley-validate' => 'true')); ?>
	<div class="form-group">
		<label>Bed Number</label><b><span style="color:red"> *</span></b>
		<input value="<?php echo html_escape($this->db->get_where('bed', array('bed_id' => $param2))->row()->bed_number); ?>" type="text" name="bed_number" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/" placeholder="Enter bed number" class="form-control">
	</div>
	<div class="form-group">
		<label>Room Number</label><b><span style="color:red"> *</span></b>
		<select class="form-control selectpicker" data-size="10" data-live-search="true" data-parsley-required="true" name="room_id">
			<option value="">Select room</option>
		<?php
			$rooms = $this->db->get('room')->result_array();
			foreach ($rooms as $room):
		?>
			<option <?php if ($this->db->get_where('bed', array('bed_id' => $param2))->row()->room_id == $room['room_id']) echo 'selected'; ?> value="<?php echo html_escape($room['room_id']); ?>"><?php echo html_escape($room['room_number']); ?></option>
		<?php endforeach; ?>
		</select>
	</div>
	<div class="form-group"><b><span style="color:red"> *</span></b>
		<label>Rent (<?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>)</label>
		<input value="<?php echo html_escape($this->db->get_where('bed', array('bed_id' => $param2))->row()->rent); ?>" type="text" data-parsley-required="true" data-parsley-type="number" name="rent" placeholder="Enter rent" class="form-control" min="1">
	</div>
	<div class="form-group">
		<label>Remarks</label>
		<textarea style="resize: none" type="text" name="remarks" placeholder="Enter remarks" class="form-control" data-parsley-pattern="/^[\w\-\s\.]+$/"><?php echo html_escape($this->db->get_where('bed', array('bed_id' => $param2))->row()->remarks); ?></textarea>
	</div>

	<button type="submit" class="mb-sm btn btn-primary">Update</button>
<?php echo form_close(); ?>

<script>
	$('#edit_bed').parsley();
	FormPlugins.init();
</script>
