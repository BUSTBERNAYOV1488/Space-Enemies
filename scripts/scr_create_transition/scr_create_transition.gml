function scr_create_transition() {
	unit = instance_create(x,y,obj_fade); //Create a fade transition
	unit.mask_color = transit_color; //Set the color of the transition to the menu object's settings
	unit.transition_speed = 2/(60*transit_time); //Set the time the transition will take to go in and out



}
