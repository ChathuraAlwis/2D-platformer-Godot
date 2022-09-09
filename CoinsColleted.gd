extends Node

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for child in self.get_children():
		if !child.coin_collected:
			return
	get_tree().change_scene("res://YouWonScreen.tscn")
