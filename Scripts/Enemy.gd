extends KinematicBody2D

var original_speed = 280
var ball

func _ready():
	ball = get_parent().find_node("Ball")

func _physics_process(_delta):
	var speed = original_speed + (randi() % 50)
	move_and_slide(Vector2(0, get_ai_direction() * speed))

func get_ai_direction():
	if abs(ball.position.y - position.y) > 25:
		if ball.position.y > position.y: return 1
		else: return -1
	else:
		return 0
