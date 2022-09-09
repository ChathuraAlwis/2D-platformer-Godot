extends Actor

export var jumpForce : = 10

onready var playerSprite : = get_node("Player")

func _physics_process(delta: float) -> void:
	handleInput()
	
	if(playerContactWithEnemy()):
		get_tree().change_scene("res://GameOverScreen.tscn")
	
func playerContactWithEnemy():
	for index in get_slide_count():
		var collision = get_slide_collision(index)
		if collision.collider is KinematicBody2D:
			return true

func handleInput():
	vel.x = 0
	if Input.is_action_pressed("move_left"):
		vel.x -= speed
		playerSprite.flip_h = true
	if Input.is_action_pressed("move_right"):
		vel.x += speed
		playerSprite.flip_h = false
	if Input.is_action_pressed("jump") and is_on_floor():
		$JumpSound.play()
		vel.y -= jumpForce
	
	move_and_slide(vel, Vector2.UP)
