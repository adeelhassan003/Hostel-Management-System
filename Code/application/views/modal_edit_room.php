<?php echo form_open('rooms/update/' . $param2, array('id' => 'edit_room', 'method' => 'post', 'data-parsley-validate' => 'true')); ?>
	<div class="form-group">
		<label>Room Number</label><b><span style="color:red"> *</span></b>
		<input value="<?php echo html_escape($this->db->get_where('room', array('room_id' => $param2))->row()->room_number); ?>" type="text" name="room_number" placeholder="Enter room number" data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/" class="form-control">
	</div>
	<div class="form-group">
		<label>Floor Number</label><b><span style="color:red"> *</span></b>
		<input value="<?php echo html_escape($this->db->get_where('room', array('room_id' => $param2))->row()->floor); ?>" type="text" name="floor" placeholder="Enter floor number"  data-parsley-required="true" data-parsley-pattern="/^[\w\-\s]+$/" class="form-control">
	</div>
	<div class="form-group">
		<label>Remarks</label>
		<textarea style="resize: none" type="text" name="remarks" placeholder="Enter remarks" class="form-control" data-parsley-pattern="/^[\w\-\s\.]+$/"><?php echo html_escape($this->db->get_where('room', array('room_id' => $param2))->row()->remarks); ?></textarea>
	</div>

	<button type="submit" class="mb-sm btn btn-primary">Update</button>
<?php echo form_close(); ?>

<script>
	$('#edit_room').parsley();
</script>
