extends Node

var PlayerScore = 0
var EnemyScore = 0

func _ready():
	restart_scene()

func _on_WallLeft_body_entered(_body):
	EnemyScore += 1
	restart_scene()

func _on_WallRight_body_entered(_body):
	PlayerScore += 1
	restart_scene()

func _process(_delta):
	$PlayerScore.text = str(PlayerScore)
	$EnemyScore.text = str(EnemyScore)
	$CountDownTimerLabel.text = str(int($CountDownTimer.time_left) + 1) 

func restart_scene():
	$CountDownTimerLabel.visible = true
	$Ball.position = Vector2(640, 360)
	get_tree().call_group("BallGroup", "stop_ball")
	$CountDownTimer.start()
	$ScoreSound.play()
	$Player.position.x = 100
	$Enemy.position.x = 1280 - 100

func _on_CountDownTimer_timeout():
	get_tree().call_group("BallGroup", "restart_ball")
	$CountDownTimerLabel.visible = false
