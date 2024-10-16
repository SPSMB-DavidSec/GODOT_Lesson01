extends CharacterBody2D


var SPEED = 300.0
@export var JUMP_VELOCITY = -400.0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_pressed("W") && is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	elif Input.is_action_pressed("D"):
		velocity.x = SPEED
		$AnimatedSprite2D.set_flip_h(false)
		$AnimatedSprite2D.play("move_right");
				
	elif Input.is_action_pressed("A"):
		velocity.x = SPEED
		$AnimatedSprite2D.set_flip_h(true)
		$AnimatedSprite2D.play("move_right");
	else: 
			$AnimatedSprite2D.play("idle");

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("A", "D")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		

	move_and_slide()
	
func get_speed() -> int: 
	return SPEED
	
func set_speed(defined_speed:int) -> void:
	print("speed set to ", defined_speed)
	SPEED = defined_speed

func get_jump_velocity() -> int: 
	return JUMP_VELOCITY
	
func set_jump_velocity(jump_velocity:int) -> void:
	print("speed set to ", jump_velocity)
	JUMP_VELOCITY = jump_velocity
