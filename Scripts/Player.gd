extends KinematicBody2D

export var speed = 600

func _physics_process(_delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1

	move_and_slide(velocity * speed)
