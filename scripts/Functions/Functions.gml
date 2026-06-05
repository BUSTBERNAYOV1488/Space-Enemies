/// @description wave(from, to, duration, offset)
/// @param from
/// @param  to
/// @param  duration
/// @param  offset
function game_pause()
{
	obj_game_manager.is_paused = !obj_game_manager.is_paused;
	
	if(obj_game_manager.is_paused)
	{
		instance_deactivate_all(true);
		
		if (layer_exists("PauseMenu"))
		{
			layer_destroy("PauseMenu");
		}
	
		var _layer = layer_create(-999,"PauseMenu");
		layer_sequence_create(_layer,1366/2,768/2,seq_pause);
	}
	else
	{
		if (layer_exists("PauseMenu"))
		{
			layer_destroy("PauseMenu");
		}
		instance_activate_all();
	}
}