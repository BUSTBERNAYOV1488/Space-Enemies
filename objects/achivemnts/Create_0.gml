if file_exists("save.dat") and image_index == 0 {
	instance_destroy()
}
try {
if global.kills == 20 {
	image_index = 1
	exit
}
}
catch (_exception) {
exit	
}