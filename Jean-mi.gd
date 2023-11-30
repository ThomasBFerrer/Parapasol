extends CharacterBody2D

export var speed = 700
var dir = Vector2()
const FLOOR_NORMAL = Vector2(0, -1)

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		dir.x = -speed #On va a gauche
	elif Input.is_action_pressed("ui_right"):
		dir.x = speed #On va a droite
	else: 
		dir.x = 0 #On reste static
		
		#Déplacement du perso
	move_and_slide(dir, FLOOR_NORMAL)
