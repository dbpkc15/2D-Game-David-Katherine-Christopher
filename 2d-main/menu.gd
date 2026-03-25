extends Control

func _on_button_button_down() -> void:
	get_tree().change_scene_to_file("res://background.tscn")


func _on_button_2_button_down() -> void:
	get_tree().change_scene_to_file("res://tutorial.tscn")
