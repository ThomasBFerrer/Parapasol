extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_direction = Input.get_vector("ui_left","ui_right","ui_up", "ui_down")
	velocity = input_direction * speed
	
func _physics_process(delta):
	get_input()
	move_and_slide()
	
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite2D.play("run")
		$AnimatedSprite2D.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		$AnimatedSprite2D.play("run")
		$AnimatedSprite2D.flip_h = true
	elif Input.is_action_pressed("ui_up"):
		$AnimatedSprite2D.play("jump")
		
	elif Input.is_action_pressed("frappe"):
		$AnimatedSprite2D.play("atack2")
	elif Input.is_action_pressed("saut"):
		$AnimatedSprite2D.play("atack1")
	else: 
		$AnimatedSprite2D.play("idle")
