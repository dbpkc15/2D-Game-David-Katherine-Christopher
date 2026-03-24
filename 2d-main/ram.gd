extends Sprite2D

@export var speed = 0

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var score_label = get_node("Score")
	print(score_label)
	score_label.text = str(score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Move_Right"):
		position.x += speed
		score += 1
	if Input.is_action_pressed("Move_Left"):
		position.x -= speed
	if Input.is_action_pressed("Move_Up"):
		position.y -= speed
	if Input.is_action_pressed("Move_Down"):
		position.y += speed
	
	var score_label = get_node("Score")
	score_label.text = str(score)

	pass


func _on_area_2d_area_entered(area: Area2D) -> void:
	score += 1
	$Score.text = str(score)
