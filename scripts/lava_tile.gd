extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		print("is in lava...", body)
		resetWorld()
		
func resetWorld() -> void:
	get_tree().change_scene_to_file("res://scenes/world.tscn")
	
