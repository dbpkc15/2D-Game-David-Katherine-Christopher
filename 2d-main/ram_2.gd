extends Sprite2D

@export var speed = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Move_Right"):
		position.x += speed
	if Input.is_action_pressed("Move_Left"):
		position.x -= speed
	
