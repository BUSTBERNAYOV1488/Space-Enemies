function scr_main_menu() {
	    switch (y_pos) {
	       case 0: //CONTINUE
	       {
	            if file_exists("Save.sav") { //If we've set up saving and have a save file
	               unit.status = "load"; //And initiate its load sequence
	            }
	            break; //End of this option's actions           
	       }
	       case 1: //If we are creating a new game
	       {
	            scr_create_transition(); //Creates a transition object and sets its variables based on the menu object
	            unit.status = "next"; //Set it to progress to the next (first) room
	            file_delete("Save.sav"); //Delete our save file
	            break;
	       }
	       case 2:
	       {
	            //***SEND TO CREDITS SCREEN***
	            scr_create_transition(); //Creates a transition object and sets its variables based on the menu object
	            unit.status = "credits"; //Set it to progress to the credits screen
	            break;
	       }
	       case 3:
	       {
	            //***END THE GAME***
	            scr_create_transition(); //Creates a transition object and sets its variables based on the menu object
	            unit.status = "end"; //Set it to end the game when it reaches full transparency
	            break;
	       }
	    }




}
