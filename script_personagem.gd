extends KinematicBody2D

export var speed = 125
var screen_size

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	var velocidade = Vector2(0, 0)
	
	if Input.is_action_pressed("ui_right"):
		velocidade.x += 1
		$AnimatedSprite.flip_h = false
	if Input.is_action_pressed("ui_left"):
		velocidade.x -= 1
		$AnimatedSprite.flip_h = true
	if Input.is_action_pressed("ui_down"):
		velocidade.y += 1
	if Input.is_action_pressed("ui_up"):
		velocidade.y -= 1
	if velocidade.length() > 0:
		velocidade = velocidade.normalized() * speed
		$AnimatedSprite.play("run")
	else:
		$AnimatedSprite.play("idle")
		
	move_and_slide(velocidade)
