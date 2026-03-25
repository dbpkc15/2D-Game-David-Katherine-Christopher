extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	#if Input.is_action_pressed("Move_Right"):
		#position.x += speed
		#score += 1
	#if Input.is_action_pressed("Move_Left"):
		#position.x -= speed
	#if Input.is_action_pressed("Move_Up"):
		#var tween = get_tree().create_tween()
		#tween.tween_property(self, "position", Vector2(position.x, 385), 1.0)
		#tween.tween_property(self, "position", Vector2(position.x, 536), 1.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
