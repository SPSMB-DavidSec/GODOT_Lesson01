extends Node2D




func _on_end_of_world_body_entered(body: Node2D) -> void:
	print("Pleyer is death.", body)
	call_deferred("resetWorld")

func resetWorld() -> void:
	get_tree().change_scene_to_file("res://scenes/world.tscn")
	
