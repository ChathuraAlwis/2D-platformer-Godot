extends Area2D

func _on_Off_Map_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://GameOverScreen.tscn")
