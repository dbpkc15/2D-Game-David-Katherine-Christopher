extends Node2D

const rock = preload("res://rock.tscn")
const coin = preload("res://Edits.tscn")

@export var rockchance = 0.9

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _on_spawn_timer_timeout() -> void:
	var randomchance = randf()
	print(randomchance)
	if randomchance <= rockchance: 
		var newrock = rock.instantiate()
		newrock.global_position = position
		newrock.position.y+= 50
		$Objects.add_child(newrock)
		print("I Pick Rock")
	else : 
		print("I Pick Coin")
		var newcoin = coin.instantiate()
		newcoin.global_position = position
		$Objects.add_child(newcoin)

	pass # Replace with function body.
