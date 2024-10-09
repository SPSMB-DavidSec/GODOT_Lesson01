extends Area2D
var slow_speed = 150
var original_speed = 300

func _on_body_entered(body: Node2D) -> void:
	if (body.is_in_group("player")):
		print("You are on grass")
		body.set_speed(slow_speed)

func _on_body_exited(body: Node2D) -> void:
	if (body.is_in_group("player")):
		print("You are exiting grass")
		body.set_speed(300)
