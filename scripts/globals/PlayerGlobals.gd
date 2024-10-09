extends Node2D

signal score_Changed



var score : int = 0;

func incremment_score(inc_score) -> void: 
	print("Score incremented by ", inc_score)
	score +=inc_score;
	score_Changed.emit()
	
