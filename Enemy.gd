extends Actor

onready var floor_left = $FloorLeft
onready var floor_right = $FloorRight

func _ready():
	vel.x = speed/2

func _process(delta):
	
	if not floor_left.is_colliding():
		vel.x = speed/2
	elif not floor_right.is_colliding():
		vel.x = -speed/2
		
	if is_on_wall():
		vel.x *= -1
		
	move_and_slide(vel, Vector2.UP)
