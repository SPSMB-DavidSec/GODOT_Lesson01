extends Area2D
var slow_speed = 150
var original_speed = 300

func _on_body_entered(body: Node2D) -> void:
	if (body.is_in_group("player")):
		print("You are on jump tile")
		body.set_jump_velocity(-800)

func _on_body_exited(body: Node2D) -> void:
	if (body.is_in_group("player")):
		print("You are exiting jump tile")
		body.set_jump_velocity(-400)
