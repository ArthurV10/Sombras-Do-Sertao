extends Node2D


func _on_body_entered(body):
	var gameOver = preload("res://scenes/game_over.tscn").instantiate()
	var jumpscare = preload("res://scenes/jumpscare.tscn").instantiate()
	
	if body is Player and not body.isDead:
		if get_parent().name == "Monster":
			get_parent().visible = false
			add_child(jumpscare)
		
		body.isDead = true
		await get_tree().create_timer(1).timeout
		add_child(gameOver)
