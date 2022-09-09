extends CanvasLayer

export var mainGameScene : PackedScene


func _on_btnQuit_button_up():
	get_tree().quit(-1)

func _on_btnRestart_button_up():
	get_tree().change_scene_to(mainGameScene)
