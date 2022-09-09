extends CanvasLayer

export var mainGameScene : PackedScene


func _on_btnReplay_button_up():
	get_tree().change_scene_to(mainGameScene)


func _on_btnQuit_button_up():
	get_tree().quit(-1)
