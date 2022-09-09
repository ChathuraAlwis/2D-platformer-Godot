extends Area2D

export var coin_collected = false

func _on_Coin_body_entered(body):
	if body.name == "Player" and !coin_collected:
		$AnimationPlayer.play("Coin_pick")
		$CoinPickSound.play()
		coin_collected = true
		
