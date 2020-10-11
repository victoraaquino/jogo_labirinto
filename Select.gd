extends Node2D

func _ready():
	pass 



func _on_dino_toggled(button_pressed):
	$elf.set_pressed(false)
	$wizz.set_pressed(false)
	#$dino.set_pressed(true)


func _on_elf_toggled(button_pressed):
	$dino.set_pressed(false)
	$wizz.set_pressed(false)
	#$elf.set_pressed(true)


func _on_wizz_toggled(button_pressed):
	$elf.set_pressed(false)
	$dino.set_pressed(false)
	#$wizz.set_pressed(true)
