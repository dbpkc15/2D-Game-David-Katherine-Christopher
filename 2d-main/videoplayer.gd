extends VideoStreamPlayer

const game_background = preload("res://videos/running-ram.ogv")

func play_video(video: VideoStream):
	if stream == video:
		return
	
	stream = video
	$".".visible = true
	play()

func play_game_background():
	play_video(game_background)

func stop_video():
	$".".stop()
	$".".stream = null
	$".".visible = false
	
	
