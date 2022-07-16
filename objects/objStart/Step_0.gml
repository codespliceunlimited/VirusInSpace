if !audio_is_playing(sndMusicStart) and play > 0 {
	audio_stop_sound(sndMusicStart)
	audio_play_sound(sndMusicRepeated, 2, true);
	play++;
}
if !audio_is_playing(sndMusicStart) and !audio_is_playing(sndMusicRepeated) {
	audio_play_sound(sndMusicRepeated, 2, true);
}