extends Node2D

func _ready():
	pass

func _on_Area2D_body_entered(body):
	if(body.name=="Jogador"):
		get_tree().change_scene("res://gameWin.tscn")
