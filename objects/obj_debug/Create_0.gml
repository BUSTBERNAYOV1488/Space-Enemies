/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 227B2B33
/// @DnDArgument : "code" "debug = 0$(13_10)input = keyboard_string$(13_10)"
debug = 0
input = keyboard_string

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5FD66EED
/// @DnDArgument : "var" "debug"
/// @DnDArgument : "value" "1"
if(debug == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6B5F4CC8
	/// @DnDParent : 5FD66EED
	/// @DnDArgument : "xpos" "100"
	/// @DnDArgument : "ypos" "100"
	/// @DnDArgument : "objectid" "oTextBox"
	/// @DnDSaveInfo : "objectid" "oTextBox"
	instance_create_layer(100, 100, "Instances", oTextBox);}