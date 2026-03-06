time_source = time_source_create(time_source_game,900, time_source_units_seconds, function() 
{
	instance_create_layer(mouse_x, mouse_y, "Instance", obj_statue);
}, []);

time_source_start(time_source);