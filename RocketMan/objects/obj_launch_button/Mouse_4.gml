/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_wings)
{
	if ((obj_wings.text_1 == "P") && (obj_wings.text_2 == "k"))
	{
		audio_play_sound(snd_success, 1, false);
	}
	else
	{
		audio_play_sound(snd_failure, 1, false);
	}
}
else
	audio_play_sound(snd_failure, 1, false);