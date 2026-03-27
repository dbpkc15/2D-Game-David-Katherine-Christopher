extends Control

func _ready() -> void:
	$HighScore.text = "High Score: " + str(Global.high_score)

func _on_button_button_down() -> void:
	get_tree().change_scene_to_file("res://MainScene.tscn")

func _on_button_2_button_down() -> void:
	get_tree().change_scene_to_file("res://tutorial.tscn")

func _on_exit_button_down() -> void:
	get_tree().quit()

	
