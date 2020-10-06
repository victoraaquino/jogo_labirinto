extends KinematicBody2D

func _ready():
	pass 
	
var veloc = 300
var forca_pulo = -550
var mov = Vector2(0,0)

func _process(delta):
	mov.y += 10
	mov.x = 0
	
	if(Input.is_action_pressed("ui_left")):
		mov.x = -veloc
		$AnimatedSprite.flip_h = true
		if(is_on_floor()):
			$AnimatedSprite.play("walk")
		
	elif (Input.is_action_pressed("ui_right")):
		mov.x = veloc
		$AnimatedSprite.flip_h = false
		if(is_on_floor()):
			$AnimatedSprite.play("walk")
	else:
		mov.x = 0
		if(is_on_floor()):
			$AnimatedSprite.play("idle")
		
	if (Input.is_action_just_pressed("ui_accept") and is_on_floor()):
		mov.y = forca_pulo
		$AnimatedSprite.play("jump")
		
	mov = move_and_slide(mov,Vector2(0,-1))
