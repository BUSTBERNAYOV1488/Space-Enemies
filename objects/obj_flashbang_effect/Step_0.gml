timer -= 1;

blind_intensity = (timer / blind_duration) * flash_power;

if blind_intensity < 0 blind_intensity = 0;

if timer <= 0
{
    instance_destroy();
}

obj_mainchara.blind_intensity = blind_intensity;