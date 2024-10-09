extends Control

@onready var label: Label = $Label


func _ready() -> void:
	PlayerGlobals.score_Changed.connect(on_scoreChanged)
	
func on_scoreChanged() -> void:
	print("score")
	label.text = "SCORE: " + str(PlayerGlobals.score)
	pass
