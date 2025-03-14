extends Area2D



func _on_body_entered(player):
	player.sword = true
	queue_free()
