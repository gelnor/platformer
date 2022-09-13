extends KinematicBody2D

var velocity = Vector2.ZERO

func _physics_process(delta):
	velocity.y += 10
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 2
	if Input.is_action_pressed("ui_right"):
		velocity.x += 2
	
	if Input.is_action_pressed("ui_jump"):
		velocity.y =  -200		
		
	velocity = move_and_slide(velocity)
	
	pass
