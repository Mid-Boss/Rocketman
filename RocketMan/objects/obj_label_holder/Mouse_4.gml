/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_pikachu, 1, false);

if (instance_exists(obj_factory))
{
	with (obj_factory)
	{
		instance_destroy();
	}
}

instance_create_depth(x, y, -100, obj_factory);
		

