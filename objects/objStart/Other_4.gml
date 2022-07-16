play = 0;
if !audio_is_playing(sndMusicStart) and play == 0 {
	if !audio_is_playing(sndMusicRepeated){
		audio_play_sound(sndMusicStart, 2, false);
		play++;
	}
}