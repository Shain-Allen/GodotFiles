#player movement.gd
extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()
export var ACCELERATION = 50
export var Max_Speed = 200
export var Jump_Force = 550
export var Gravity = 10

func _physics_process(delta):
	motion.y += Gravity
	var friction = false
	
	if Input.is_action_pressed("ui_right"):
		motion.x = min(motion.x + ACCELERATION, Max_Speed)
		$Sprite.flip_h = false
		$Sprite.play("Run")
	elif Input.is_action_pressed("ui_left"):
		motion.x = max(motion.x - ACCELERATION, -Max_Speed)
		$Sprite.flip_h = true
		$Sprite.play("Run")
	else:
		$Sprite.play("Idle")
		friction = true
		
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = -Jump_Force
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.2)
	else:
		if motion.y < 0:
			$Sprite.play("Jump")
		else:
			$Sprite.play("Fall")
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.05)
			
	motion = move_and_slide(motion, UP)
	pass