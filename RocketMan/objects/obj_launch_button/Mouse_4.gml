/// @description Insert description here
// You can write your code in this editor

if global.correct_wing_1 && global.correct_wing_2
{
	audio_play_sound(snd_success, 1, false)
}
else
	audio_play_sound(snd_failure, 1, false);