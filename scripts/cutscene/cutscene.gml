function c_wait(time){
	if (dialogue = dialogue_current){
		if (instance_exists(dobj) and dobj.letters = 0){
			dialogue_timer = time;
		}
	}
	dialogue_current += (dialogue = dialogue_current + dialogue_delay);
}
function c_actor_create(name,xx,yy,var_struct){
	if (dialogue = dialogue_current){
		if (!variable_instance_exists(id,"actor")) actor = ds_map_create();
		if (!is_struct(var_struct)) var_struct = {};
		
		if (!instance_exists(actor[? $"{name}"])){
			actor[? $"{name}"] = instance_create_depth(xx,yy,0,obj_actor,var_struct);
		}
	}
}
function c_objsetvar(_id,variable,value,condition){
	if (dialogue = dialogue_current and instance_exists(_id)){
		if (is_undefined(condition)) condition = true;
		if (condition = true) variable_instance_set(_id,variable,value);
	}
}