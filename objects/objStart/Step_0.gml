/// @description Insert description here
// You can write your code in this editor

// Play the next
if !audio_is_playing(sndMusicStart) and !audio_is_playing(sndMusicRepeated) and play == 1 {
	audio_play_sound(sndMusicRepeated, 2 ,true);
	play++;
}