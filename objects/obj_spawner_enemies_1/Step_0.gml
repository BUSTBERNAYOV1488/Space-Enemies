if global.kills >= 2000 {
    delay_time = 0.3;
} else if global.kills >= 1500 {
    delay_time = 0.5;
} else if global.kills >= 1000 {
    delay_time = 1;
} else if global.kills >= 500 {
    delay_time = 2;
} else {
    delay_time = 2;
}
if global.kills >= 2500 {
instance_destroy()	
}

t = random_range(0, 768)
v = random_range(0, 1366)
l = random_range(0, 1)