extends AudioStreamPlayer

const menu_music = preload("res://audios/Caketown 1.mp3")
const game_music = preload("res://audios/Riverside Ride Long Loop.wav")

func play_music(music: AudioStream, volume = -20.0):
	if stream == music:
		return
	
	stream = music
	volume_db = volume
	play()

func play_music_menu():
	play_music(menu_music)

func play_music_game():
	play_music(game_music)

func stop_music():
	$".".stop()
