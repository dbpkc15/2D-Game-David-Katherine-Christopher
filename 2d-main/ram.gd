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
	if $"../AnimationPlayer".is_playing():
		return
	
	if Engine.get_process_frames() % 10 == 0:
		score += 1
		$Score.text = str(score)
	
	if score > Global.high_score:
		Global.high_score = score

	pass


func _on_area_2d_area_entered(area: Area2D) -> void:
	area.queue_free()
	score += 50
	$Score.text = str(score)
