extends KinematicBody2D


var velocity = Vector2.ZERO

func _physics_process(delta):
	var input  = Vector2.ZERO
	apply_gravity()
	
	input.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	
	if input.x == 0:
		apply_friction()
	else:
		apply_acceleration(input.x)
		
	if Input.is_action_pressed("ui_jump"):
		velocity.y =  -200		
		
	velocity = move_and_slide(velocity)
	pass

func apply_gravity():
	velocity.y += 10

func apply_friction():
	pass
	
func apply_acceleration(amount):
	velocity.x =  move_toward(velocity.x, 50 * amount, 20)
	
