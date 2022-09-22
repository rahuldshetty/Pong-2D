extends Node

func _on_PlayButton_pressed():
	get_tree().change_scene("res://Scenes/Level.tscn")

func _on_PlayButton_mouse_entered():
	$ViewportContainer/AnimationNodes/AnimationPlayer.stop(false)
	$ViewportContainer/AnimationNodes/AnimationPlayer2.stop(false)

func _on_PlayButton_mouse_exited(): 
	$ViewportContainer/AnimationNodes/AnimationPlayer.play()
	$ViewportContainer/AnimationNodes/AnimationPlayer2.play()
